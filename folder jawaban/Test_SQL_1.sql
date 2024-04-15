/*
Berikut jawaban soalnya
*/
CREATE TABLE employee_table (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table (employee, salary) VALUES
('Alice', 11),
('Benn', 43),
('Charles', 33),
('Dorothy', 55),
('Emma', 22),
('Franklin', 33);

SELECT * FROM employee_table; -- Menampilkan tabel secara keseluruhan
-- Mari periksa terlebih dahulu data yang dimasukkan

SELECT DISTINCT salary FROM employee_table -- Memilih kolom salary saja
ORDER BY salary DESC -- Mengurutkan dari gaji tertinggi ke terendah
LIMIT 1 -- Menampilkan satu nilai
OFFSET 2; -- Melewati 2 baris pertama yang memiliki gaji tertinggi 
-- Ingat sebab diinginkan gaji tertinggi ketiga

/*
Berikut contoh lainnya
*/
CREATE TABLE employee_table_ex1 (
    employee TEXT NOT NULL,
    salary INTEGER
);

INSERT INTO employee_table_ex1 (employee, salary) VALUES
('Abdul', 100),
('Budi', 200),
('Charlie', 100),
('Dimas', 500);

SELECT * FROM employee_table_ex1;

SELECT DISTINCT salary FROM employee_table_ex1 
ORDER BY salary DESC 
LIMIT 1 
OFFSET 2; 
