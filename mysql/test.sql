USE test
CREATE TABLE IF NOT EXISTS test (
    id INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

INSERT INTO test VALUES
( 01, 'Olave', 'Miguel', 'bellavista #1498', 'Viña del Mar'),
( 02, 'Ulises', 'Ramos', 'perico los palotes #123', 'Linares');

