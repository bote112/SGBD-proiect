CREATE OR REPLACE PROCEDURE actualizare_stoc(idComanda IN INT) IS
  cantitate_necesara NUMBER;
  cantitate_stoc NUMBER;
  idProdus NUMBER;
  idRestaurant NUMBER;
  idPreparat NUMBER;
BEGIN
  -- Obtinem id-ul restaurantului prin angajatul care a preluat comanda
  SELECT a.id_restaurant INTO idRestaurant 
  FROM comanda c 
  JOIN angajat a ON c.id_angajat = a.id_angajat 
  WHERE c.id_comanda = idComanda;

  -- Incercam sa obtinem un singur preparat din comanda, asteptandu-ne la un singur rezultat
  SELECT id_preparat INTO idPreparat 
  FROM detalii_comanda 
  WHERE id_comanda = idComanda;

  -- Continuam cu logica de actualizare a stocului doar pentru acel preparat
  SELECT r.cantitate, r.id_produs INTO cantitate_necesara, idProdus 
  FROM reteta r 
  WHERE r.id_preparat = idPreparat;

  -- Verificam stocul pentru produsul respectiv
  SELECT s.cantitate INTO cantitate_stoc 
  FROM stoc s 
  WHERE s.id_produs = idProdus AND s.id_restaurant = idRestaurant;

  IF cantitate_stoc < cantitate_necesara THEN
    -- Daca stocul nu este suficient, aruncam o exceptie
    RAISE_APPLICATION_ERROR(-20002, 'Stoc insuficient pentru produsul cu ID-ul ' || idProdus);
  ELSE
    -- Actualizam stocul
    UPDATE stoc SET cantitate = cantitate_stoc - cantitate_necesara
    WHERE id_produs = idProdus AND id_restaurant = idRestaurant;
  END IF;

  -- Salvam modificarile
  COMMIT;
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    -- Tratam cazul in care o cautare nu returneaza date
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20003, 'Datele necesare nu au fost gasite pentru comanda cu ID-ul ' || idComanda);
  WHEN OTHERS THEN
    -- Tratam orice alte exceptii care nu au fost anticipate
    ROLLBACK;
    RAISE_APPLICATION_ERROR(-20004, 'Eroare neasteptata: ' || SQLERRM);
END actualizare_stoc;
/

EXEC actualizare_stoc(8);

EXEC actualizare_stoc(1);

EXEC actualizare_stoc(100);
