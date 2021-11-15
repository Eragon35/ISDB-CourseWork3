CREATE TRIGGER addAccident
AFTER INSERT ON punishment
FOR EACH ROW
EXECUTE PROCEDURE increaseaccidents(smokerid);

CREATE TRIGGER updateAccidents AFTER INSERT ON punishment

UPDATE smoker SET numberofaccidents = numberofaccidents + 1 where id = 1