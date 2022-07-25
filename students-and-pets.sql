CREATE TABLE students(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE pets(
    id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    student_id INTEGER -- This is a foreign key!
);

INSERT INTO -- Student 1
    students(name)
    VALUES('David');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Timone', 'Dog', 1);

INSERT INTO -- Student 2
    students(name)
    VALUES('Archana');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Poppy', 'Dog', 2);

INSERT INTO -- Student 3
    students(name)
    VALUES('Danek');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Kerrigan', 'Cat', 3);
INSERT INTO
    pets(name, type, student_id)
    VALUES('Rudy', 'Dog', 3);

INSERT INTO -- Student 4
    students(name)
    VALUES('Kaylie');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Theo', 'Cat', 4);
INSERT INTO
    pets(name, type, student_id)
    VALUES('Milo', 'Cat', 4);
INSERT INTO
    pets(name, type, student_id)
    VALUES('Cali', 'Cat', 4);

INSERT INTO -- Student 5
    students(name)
    VALUES('Tianqiwei');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Richard', 'Cat', 5);

INSERT INTO -- Student 6
    students(name)
    VALUES('Mohammad');
INSERT INTO
    pets(name, type, student_id)
    VALUES('Zeus', 'Cat', 6);
INSERT INTO
    pets(name, type, student_id)
    VALUES('Luna', 'Cat', 6);


INSERT INTO -- Student 7
    students(name)
    VALUES('Mardin');

INSERT INTO -- Student 8
    students(name)
    VALUES('Philip');

INSERT INTO -- Student 9
    students(name)
    VALUES('Leeyan');
