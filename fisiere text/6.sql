CREATE OR REPLACE PROCEDURE analizeaza_preferinte IS
  -- Tipuri de colectii
  TYPE FrecventaPreparateType IS TABLE OF NUMBER INDEX BY VARCHAR2(100);
  TYPE TabelPreparateType IS TABLE OF VARCHAR2(100);
  TYPE TopPreparateType IS VARRAY(5) OF VARCHAR2(100);

  -- Colectii pentru fiecare tip de date
  frecventaPreparate FrecventaPreparateType;
  listaPreparate TabelPreparateType;
  topPreparate TopPreparateType := TopPreparateType();

  -- Variabile auxiliare
  numePreparat VARCHAR2(100);
  maxFrecventa NUMBER;
  keyMaxFrecventa VARCHAR2(100);

  -- Functie interna pentru a gasi preparatul cu frecventa maxima
  FUNCTION gasire_preparat_maxim RETURN VARCHAR2 IS
    tempKey VARCHAR2(100);
    maxValue NUMBER := 0;
  BEGIN
    tempKey := frecventaPreparate.FIRST;
    WHILE tempKey IS NOT NULL LOOP
      IF frecventaPreparate(tempKey) > maxValue THEN
        maxValue := frecventaPreparate(tempKey);
        keyMaxFrecventa := tempKey;
      END IF;
      tempKey := frecventaPreparate.NEXT(tempKey);
    END LOOP;
    RETURN keyMaxFrecventa;
  END;

BEGIN
  -- Pasul 1: Construim frecventa preparatelor comandate
  FOR recDetaliuComanda IN (SELECT dc.id_preparat, p.nume
                             FROM detalii_comanda dc
                             JOIN preparat p ON dc.id_preparat = p.id_preparat) LOOP
    IF frecventaPreparate.EXISTS(recDetaliuComanda.nume) THEN
      frecventaPreparate(recDetaliuComanda.nume) := frecventaPreparate(recDetaliuComanda.nume) + 1;
    ELSE
      frecventaPreparate(recDetaliuComanda.nume) := 1;
    END IF;
  END LOOP;

  -- Pasul 2: Selectam cele mai comandate 5 preparate
  FOR i IN 1..5 LOOP
    keyMaxFrecventa := gasire_preparat_maxim();
    EXIT WHEN keyMaxFrecventa IS NULL; -- Iesim daca nu mai sunt preparate
    -- Adaugam preparatul in VARRAY
    topPreparate.EXTEND;
    topPreparate(i) := keyMaxFrecventa;
    -- Eliminam preparatul actual pentru a gasi urmatorul cel mai frecvent comandat
    frecventaPreparate.DELETE(keyMaxFrecventa);
  END LOOP;

  -- Afisam rezultatul
  DBMS_OUTPUT.PUT_LINE('Top Preparate:');
  FOR i IN 1..topPreparate.COUNT LOOP
    DBMS_OUTPUT.PUT_LINE(i || '. ' || topPreparate(i));
  END LOOP;

EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('A aparut o eroare: ' || SQLERRM);
END analizeaza_preferinte;
/

BEGIN
  analizeaza_preferinte;
END;
/

