CREATE OR REPLACE FUNCTION venit_angajat_zilnic (p_id_angajat INT, p_data DATE)
RETURN NUMBER
IS
  total_venit NUMBER := 0;
  angajat_negasit EXCEPTION;
  fara_vanzari EXCEPTION;
  v_angajat_count INT;
BEGIN
  -- Verificam daca angajatul exista
  SELECT COUNT(*)
  INTO v_angajat_count
  FROM angajat
  WHERE id_angajat = p_id_angajat;

  IF v_angajat_count = 0 THEN
    RAISE angajat_negasit;
  END IF;

  -- Calculam venitul total generat de angajat din comenzi in ziua specificata
  SELECT NVL(SUM(p.pret), 0)
  INTO total_venit
  FROM comanda c
  INNER JOIN detalii_comanda dc ON c.id_comanda = dc.id_comanda
  INNER JOIN preparat p ON dc.id_preparat = p.id_preparat
  WHERE c.id_angajat = p_id_angajat AND TRUNC(c.data_comenzii) = TRUNC(p_data);

  IF total_venit = 0 THEN
    RAISE fara_vanzari;
  END IF;

  RETURN total_venit;
EXCEPTION
  WHEN angajat_negasit THEN
    DBMS_OUTPUT.PUT_LINE('Angajatul cu ID-ul ' || p_id_angajat || ' nu a fost gasit.');
    RETURN NULL;
  WHEN fara_vanzari THEN
    DBMS_OUTPUT.PUT_LINE('Angajatul cu ID-ul ' || p_id_angajat || ' nu are vanzari in data de ' || TO_CHAR(p_data, 'DD-MM-YYYY') || '.');
    RETURN NULL;
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Eroare neasteptata: ' || SQLERRM);
    RETURN NULL;
END venit_angajat_zilnic;
/

-- Apelare functie pentru a verifica venitul unui angajat intr-o anumita zi
    DECLARE
      venit_total NUMBER;
    BEGIN
      venit_total := venit_angajat_zilnic(1, TO_DATE('2024-01-06', 'YYYY-MM-DD'));   
      IF venit_total IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Venitul total generat de angajat in ziua specificata este: ' || venit_total);
      END IF; 
    END;
    /

-- Apelare functie pentru a verifica venitul unui angajat intr-o anumita zi(eroare angajatul nu exista)
    DECLARE
      venit_total NUMBER;
    BEGIN
      venit_total := venit_angajat_zilnic(25, TO_DATE('2024-01-06', 'YYYY-MM-DD'));   
      IF venit_total IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Venitul total generat de angajat in ziua specificata este: ' || venit_total);
      END IF; 
    END;
    /

-- Apelare functie pentru a verifica venitul unui angajat intr-o anumita zi(eroare angajatul nu are venit din ziua data)
    DECLARE
      venit_total NUMBER;
    BEGIN
      venit_total := venit_angajat_zilnic(1, TO_DATE('2023-02-12', 'YYYY-MM-DD'));   
      IF venit_total IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Venitul total generat de angajat în ziua specificata este: ' || venit_total);
      END IF; 
    END;
    /


