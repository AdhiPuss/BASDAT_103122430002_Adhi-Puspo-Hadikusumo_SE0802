SQL> SELECT * FROM PATH_CHARA;

ID_PA PATH                                                                      
----- --------------------------------------------------                        
P0001 Destruction                                                               
P0002 Hunt                                                                      
P0003 Erudition                                                                 
P0004 Nihility                                                                  
P0005 Harmony                                                                   

SQL> INSERT INTO HSR (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
  2  VALUES ('C1', 'Kafka', 'Lightning', 'Human', 'P0004');

1 row created.

SQL> 
SQL> INSERT INTO HSR (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
  2  VALUES ('C2', 'Silver Wolf', 'Quantum', 'Human', 'P0004');

1 row created.

SQL> 
SQL> INSERT INTO HSR (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
  2  VALUES ('C3', 'Dan Heng', 'Wind', 'Vidyadhara', 'P0002');

1 row created.

SQL> 
SQL> INSERT INTO HSR (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
  2  VALUES ('C4', 'Himeko', 'Fire', 'Human', 'P0003');

1 row created.

SQL> SELECT * FROM HSR;

ID NAMA                      WEAKNESS             RACE                 ID_PA    
-- ------------------------- -------------------- -------------------- -----    
C1 Kafka                     Lightning            Human                P0004    
C2 Silver Wolf               Quantum              Human                P0004    
C3 Dan Heng                  Wind                 Vidyadhara           P0002    
C4 Himeko                    Fire                 Human                P0003    

SQL> UPDATE HSR
  2  SET NAMA = 'Blade',
  3      WEAKNESS = 'Wind',
  4      RACE = 'Human',
  5      ID_PATH_CHARA = 'P0001'
  6  WHERE ID_CHARA = 'C4';

1 row updated.

SQL> DELETE FROM HSR
  2  WHERE ID_CHARA = 'C4';

1 row deleted.

SQL> MERGE INTO HSR h
  2  USING (SELECT * FROM PATH_CHARA) p
  3  ON (h.ID_PATH_CHARA = p.ID_PATH_CHARA)
  4  WHEN MATCHED THEN
  5  UPDATE SET h.NAMA = 'Updated Name',
  6             h.WEAKNESS = 'Updated Weakness',
  7             h.RACE = 'Updated Race'
  8  WHEN NOT MATCHED THEN
  9  INSERT (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
 10  VALUES ('C5', 'New Chara', 'Ice', 'Human', p.ID_PATH_CHARA);
MERGE INTO HSR h
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.PK_HSR) violated 


SQL> MERGE INTO HSR h
  2  USING (SELECT 'P0001' AS ID_PATH_CHARA FROM dual) p
  3  ON (h.ID_PATH_CHARA = p.ID_PATH_CHARA)
  4  WHEN MATCHED THEN
  5  UPDATE SET
  6      h.NAMA = 'Updated Name',
  7      h.WEAKNESS = 'Fire',
  8      h.RACE = 'Human'
  9  WHEN NOT MATCHED THEN
 10  INSERT (ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA)
 11  VALUES ('C5', 'New Chara', 'Ice', 'Human', 'P0001');

1 row merged.

SQL> CREATE VIEW CharaLightning AS
  2  SELECT ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA
  3  FROM HSR
  4  WHERE WEAKNESS = 'Lightning';

View created.

SQL> CREATE MATERIALIZED VIEW CharaHuman AS
  2  SELECT ID_CHARA, NAMA, WEAKNESS, RACE, ID_PATH_CHARA
  3  FROM HSR
  4  WHERE RACE = 'Human';

Materialized view created.

SQL> SPOOL OFF
