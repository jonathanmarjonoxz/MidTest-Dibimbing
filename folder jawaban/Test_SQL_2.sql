/*
Berikut jawaban soalnya
*/
CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
); -- Buat tabelnya

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer'); -- Memasukkan amatan/data ke tabel

SELECT * FROM item_bought; -- Kita periksa dahulu sesuai tidak tabelnya

WITH item_counts AS (
    SELECT item, COUNT(*) AS cnt
    FROM item_bought
    GROUP BY item
)
SELECT item
FROM item_counts
WHERE cnt != (SELECT MAX(cnt) FROM item_counts)
  AND cnt != (SELECT MIN(cnt) FROM item_counts)
ORDER BY item DESC; 
-- Digunakan ORDER BY item DESC karena bila diperhatikan pada example 2 urutan outputnya pada kolom item
-- Samsung terlebih dahulu baru Huawei (maknanya DESC atau menurun)
  
/*
Berikut contoh lainnya dari example 1
*/
CREATE TABLE item_bought_ex1 (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought_ex1 (buyer, item) VALUES
('A', 'iPhone'),
('B', 'Samsung'),
('C', 'Realme'),
('D', 'Realme'),
('E', 'Samsung'),
('F', 'Realme');

SELECT * FROM item_bought_ex1;

WITH item_counts AS (
    SELECT item, COUNT(*) AS cnt
    FROM item_bought_ex1
    GROUP BY item
)
SELECT item
FROM item_counts
WHERE cnt != (SELECT MAX(cnt) FROM item_counts)
  AND cnt != (SELECT MIN(cnt) FROM item_counts)
ORDER BY item DESC;

/*
Berikut contoh lainnya dari example 2
*/
CREATE TABLE item_bought_ex2 (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought_ex2 (buyer, item) VALUES
('A', 'iPhone'),
('B', 'Samsung'),
('C', 'Realme'),
('D', 'Realme'),
('E', 'Samsung'),
('F', 'Realme'),
('G', 'Huawei'),
('H', 'Huawei'),
('I', 'Huawei'),
('J', 'Realme');

SELECT * FROM item_bought_ex2;

WITH item_counts AS (
    SELECT item, COUNT(*) AS cnt
    FROM item_bought_ex2
    GROUP BY item
)
SELECT item
FROM item_counts
WHERE cnt != (SELECT MAX(cnt) FROM item_counts)
  AND cnt != (SELECT MIN(cnt) FROM item_counts)
ORDER BY item DESC;

/*
Berikut contoh lainnya dari example 3
*/
CREATE TABLE item_bought_ex3 (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought_ex3 (buyer, item) VALUES
('A', 'iPhone'),
('B', 'Samsung'),
('C', 'Realme'),
('D', 'Realme'),
('E', 'Samsung'),
('F', 'Realme'),
('G', 'Huawei'),
('H', 'Huawei'),
('I', 'Huawei'),
('J', 'Realme'),
('K', 'Huawei');

SELECT * FROM item_bought_ex3;

WITH item_counts AS (
    SELECT item, COUNT(*) AS cnt
    FROM item_bought_ex3
    GROUP BY item
)
SELECT item
FROM item_counts
WHERE cnt != (SELECT MAX(cnt) FROM item_counts)
  AND cnt != (SELECT MIN(cnt) FROM item_counts)
ORDER BY item DESC;