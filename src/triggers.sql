-- Триггер для увеличения числа инцидентов у курильщика при добавлении наказания
CREATE TRIGGER addAccident
AFTER INSERT ON punishment
FOR EACH ROW
EXECUTE PROCEDURE increaseaccidents(smokerid);