-- индекс по отрезанным пальцам для родственников,
-- чтобы их список быстрее показывался врачу для выбора жертвы
create index if not exists fingerCuttingOff on relative (isfingercuttingoff);


-- индекс для relative по smokerId, чтобы быстрее искать родственников курильщика
create index if not exists findRelatives on relative using hash (smokerid);


-- индекс для weighing по smokerId, чтобы быстрее искать взвешивания конкретного курильщика
create index if not exists findWeighings on weighing using hash (smokerid);
