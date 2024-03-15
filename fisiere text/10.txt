CREATE OR REPLACE TRIGGER afisare_nr_chelneri
AFTER INSERT OR UPDATE OR DELETE ON angajat
DECLARE
  numarChelneri NUMBER;
BEGIN
  -- Calculam numarul de chelneri angajati
  SELECT COUNT(*)
  INTO numarChelneri
  FROM angajat
  WHERE pozitie = 'Chelner'; 

  -- Afisam numarul de chelneri
  DBMS_OUTPUT.PUT_LINE('Numarul actual de chelneri angajati este: ' || numarChelneri);
END;

INSERT INTO angajat VALUES (21, 5, 'Mircea Ionel', 'Chelner', TO_DATE('2020-04-12', 'YYYY-MM-DD'));

UPDATE angajat
SET nume = 'Maria Ana'
WHERE id_angajat = 2;
