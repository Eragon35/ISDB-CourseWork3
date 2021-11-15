-- если передлать в плату стоимость каждого дня наблюдений,
-- то мождо сделать тригер который будет пересчитвать счёт при добавлении новой слежки.
-- Тогда для таблицы Слежки можно добавть hash индекс по smokerId

-- ещё можно добавить индекс по отрезанным пальцам для родственников,
-- чтобы их список быстрее показывался врачу для выбора жертвы
create index if not exists fingerCuttingOff on relative (isfingercuttingoff);