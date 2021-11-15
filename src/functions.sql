-- Триггер для увеличения числа инцидентов у курильщака при добавлении наказания
CREATE OR REPLACE FUNCTION increaseAccidents() returns trigger AS
    $$
    begin
        update smoker
            set numberofaccidents = numberofaccidents + 1 where id = new.smokerid;
        RETURN new;
    end;
    $$ LANGUAGE plpgsql;

-- Считаем стоимость лечения для пацинта
CREATE OR REPLACE FUNCTION getTreatmentCost(smoker integer) RETURNS integer AS
    $$
    declare
        sum integer;
        doctorCost integer;
    begin
        select sum(cost) into sum from punishment P where P.smokerid = smoker;
        select cost into doctorCost from doctor D inner join
                         (SELECT doctorId from smoker S where S.id = smoker) DC on D.id = DC.doctorid;
        return sum + doctorCost;
    end;
    $$ LANGUAGE plpgsql;

-- Врач находит кому из родственников можно отрезать палец, если у пациента вес больше нормы
CREATE OR REPLACE FUNCTION findRelativeToCutFingerOut(smoker integer)
    RETURNS table(firstName varchar, lastName varchar, relationship varchar) AS
    $$
    begin
        return query
        SELECT P.firstName, P.lastName, RS.relationship from person P inner join
            (SELECT personId, R.relationship from relative R
                where smokerid = smoker AND isfingercuttingoff = false) RS
            on RS.personid = P.id;
    end;
    $$ LANGUAGE plpgsql;