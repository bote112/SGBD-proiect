CREATE OR REPLACE TRIGGER verificare_locuri_masa
BEFORE INSERT ON rezervare
FOR EACH ROW
DECLARE
  numar_locuri_disponibile INT;
BEGIN
  -- Verifica numarul de locuri de la masa pentru care se face rezervarea
  SELECT numar_locuri INTO numar_locuri_disponibile
  FROM masa
  WHERE id_masa = :NEW.id_masa;

  -- Verifica daca numarul de locuri solicitate pentru rezervare nu depaseste capacitatea mesei
  IF :NEW.numar_locuri > numar_locuri_disponibile THEN
    -- Daca nu sunt suficiente locuri, se ridica o exceptie si se previne insertia
    RAISE_APPLICATION_ERROR(-20001, 'Numarul de locuri solicitate depaseste capacitatea mesei.');
  END IF;
END;
