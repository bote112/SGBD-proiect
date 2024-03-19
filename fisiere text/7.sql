CREATE OR REPLACE PROCEDURE raport_zilnic (p_report_date DATE)
IS
    -- Definirea cursorului neparametrizat pentru toate comenzile
    CURSOR c_orders IS
        SELECT id_comanda, id_angajat, id_masa, data_comenzii
        FROM comanda
        WHERE data_comenzii = p_report_date;

    -- Definirea cursorului parametrizat pentru detalii comanda, dependent de comanda selectata
    CURSOR c_order_details (c_comanda_id comanda.id_comanda%TYPE) IS
        SELECT dc.id_comanda, p.nume, p.pret
        FROM detalii_comanda dc
        JOIN preparat p ON dc.id_preparat = p.id_preparat
        WHERE dc.id_comanda = c_comanda_id;

    -- Variabila pentru stocarea inregistrarii curente a comenzii
    v_order c_orders%ROWTYPE;
    -- Variabila pentru stocarea inregistrarii curente a detaliilor comenzii
    v_order_detail c_order_details%ROWTYPE;
BEGIN
    -- Deschiderea cursorului neparametrizat
    OPEN c_orders;

    -- Fetch in cursorul comenzilor
    LOOP
        FETCH c_orders INTO v_order;
        EXIT WHEN c_orders%NOTFOUND;

        -- Afisarea informatiilor comenzii
        DBMS_OUTPUT.PUT_LINE('Comanda ID: ' || v_order.id_comanda || 
                             ', Angajat ID: ' || v_order.id_angajat ||
                             ', Masa ID: ' || v_order.id_masa ||
                             ', Data Comenzii: ' || v_order.data_comenzii);

        -- Deschiderea cursorului parametrizat pentru detalii comanda
        OPEN c_order_details(v_order.id_comanda);
        -- Fetch in cursorul detaliilor comenzilor
        LOOP
            FETCH c_order_details INTO v_order_detail;
            EXIT WHEN c_order_details%NOTFOUND;

            -- Afisarea detaliilor comenzii
            DBMS_OUTPUT.PUT_LINE('   Preparat: ' || v_order_detail.nume ||
                                 ', Pret: ' || v_order_detail.pret);
        END LOOP;

        -- inchiderea cursorului pentru detalii comanda
        CLOSE c_order_details;
    END LOOP;

    -- inchiderea cursorului comenzilor
    CLOSE c_orders;
END raport_zilnic;
/

BEGIN
    -- Apelarea subprogramului cu o data specifica
    raport_zilnic(TO_DATE('2024-01-06 18:00', 'YYYY-MM-DD HH24:MI'));
END;
/

