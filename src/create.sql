CREATE TABLE person
(
    id serial primary key,
    firstName varchar CHECK (firstName != '') not null,
    lastName varchar CHECK (lastName != '') not null
);

CREATE TABLE doctor
(
    id serial primary key,
    personId integer references person,
    cost integer CHECK (cost > 0) not null
);

CREATE TABLE smoker
(
    id serial primary key,
    personId integer references person,
    doctorId integer references doctor,
    numberOfAccidents integer not null DEFAULT 0,
    referenceWeight integer CHECK (referenceWeight > 0) not null
);

CREATE TABLE bill
(
    id serial primary key,
    smokerId integer references smoker,
    doctorId integer references doctor,
    sum integer CHECK (sum >= 0) not null DEFAULT 0
);

CREATE TABLE observationSchedule
(
    id serial primary key,
    smokerId integer references smoker,
    start date not null,
    finish date not null,
    hoursPerDay integer CHECK (hoursPerDay > 0 AND hoursPerDay < 25) not null
);

CREATE TABLE punishment
(
    id serial primary key,
    smokerId integer references smoker,
    type varchar not null,
    victimId integer references person,
    cost integer CHECK (cost >= 0) not null

);

CREATE TABLE weighing
(
    id serial primary key,
    smokerId integer references smoker,
    date date not null,
    isBigger bool not null,
    weight integer CHECK (weight > 0) not null
);

CREATE TABLE relative
(
    id serial primary key,
    smokerId integer references smoker,
    personId integer references person,
    isFingerCuttingOff bool not null,
    relationship varchar not null
);
