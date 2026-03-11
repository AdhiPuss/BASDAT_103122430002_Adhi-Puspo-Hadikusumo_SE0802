SQL> --nama: Adhi Puspo Hadikusumo
SQL> --nim: 103122430002
SQL> CREATE TABLE Film (
  2  id_film NUMBER PRIMARY KEY,
  3  judul VARCHAR2(100),
  4  sinopsis CLOB,
  5  tahun NUMBER(4),
  6  durasi NUMBER );

Table created.

SQL> CREATE TABLE Theater (
  2  id_theater NUMBER PRIMARY KEY,
  3  harga NUMBER(10, 2),
  4  kapasitas NUMBER,
  5  kelas VARCHAR2(50) );

Table created.

SQL>  CREATE TABLE Inventaris (
  2  id_inventaris NUMBER PRIMARY KEY,
  3  id_theater NUMBER,
  4  nomor_kursi VARCHAR2(12),
  5  CONSTRAINT fk_theater_inv FOREIGN KEY (id_theater)
  6  REFERENCES Theater(id_theater)
  7  );

Table created.

SQL> CREATE TABLE Member (
  2  id_member NUMBER PRIMARY KEY,
  3  nama VARCHAR2(80),
  4  no_hp VARCHAR2(20),
  5  tgl_lahir DATE,
  6  email VARCHAR2(80) );

Table created.

SQL> CREATE TABLE Jadwal (
  2  id_jadwal NUMBER PRIMARY KEY,
  3  id_film NUMBER,
  4  id_theater NUMBER,
  5  periode_start DATE,
  6  periode_end DATE,
  7  CONSTRAINT fk_film_jadwal FOREIGN KEY (id_film)
  8  REFERENCES Film(id_film),
  9  CONSTRAINT fk_theater_jadwal FOREIGN KEY (id_theater)
 10  REFERENCES Theater(id_theater) );

Table created.

SQL> CREATE TABLE Transaksi (
  2  kode_pemesanan VARCHAR2(15) PRIMARY KEY,
  3  id_jadwal NUMBER,
  4  id_member NUMBER,
  5  status VARCHAR2(50),
  6  tanggal DATE,
  7  total_harga NUMBER(10, 2),
  8  CONSTRAINT fk_jadwal_trx FOREIGN KEY (id_jadwal)
  9  REFERENCES Jadwal(id_jadwal),
 10  CONSTRAINT fk_member_trx FOREIGN KEY (id_member)
 11  REFERENCES Member(id_member) );

Table created.

SQL> desc transaksi
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 KODE_PEMESANAN                            NOT NULL VARCHAR2(15)
 ID_JADWAL                                          NUMBER
 ID_MEMBER                                          NUMBER
 STATUS                                             VARCHAR2(50)
 TANGGAL                                            DATE
 TOTAL_HARGA                                        NUMBER(10,2)

SQL> desc jadwal
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_JADWAL                                 NOT NULL NUMBER
 ID_FILM                                            NUMBER
 ID_THEATER                                         NUMBER
 PERIODE_START                                      DATE
 PERIODE_END                                        DATE

SQL> desc inventaris
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_INVENTARIS                             NOT NULL NUMBER
 ID_THEATER                                         NUMBER
 NOMOR_KURSI                                        VARCHAR2(12)

SQL> desc theater
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_THEATER                                NOT NULL NUMBER
 HARGA                                              NUMBER(10,2)
 KAPASITAS                                          NUMBER
 KELAS                                              VARCHAR2(50)

SQL> desc film
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID_FILM                                   NOT NULL NUMBER
 JUDUL                                              VARCHAR2(100)
 SINOPSIS                                           CLOB
 TAHUN                                              NUMBER(4)
 DURASI                                             NUMBER

SQL> INSERT INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES
  2  (1, 'Spirited Away', 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.', 2001, 125),
  3  
SQL> (2, 'Your Name', 'Dua remaja yang belum pernah bertemu tiba-tiba bertukar tubuh dan mencoba memahami hubungan misterius yang menghubungkan mereka.', 2016, 106),
  2  
SQL> (3, 'A Silent Voice', 'Seorang mantan pembully mencoba menebus kesalahannya kepada gadis tuli yang pernah ia sakiti saat masih sekolah.', 2016, 130),
  2  
SQL> (4, 'Weathering With You', 'Seorang remaja bertemu gadis yang memiliki kemampuan mengendalikan cuaca di tengah kehidupan Tokyo yang penuh hujan.', 2019, 112),
  2  
SQL> (5, 'Princess Mononoke', 'Seorang pangeran yang terkena kutukan terlibat konflik antara manusia dan roh hutan dalam perjuangan menjaga keseimbangan alam.', 1997, 134),
  2  
SQL> (6, 'My Neighbor Totoro', 'Dua saudari kecil bertemu makhluk hutan misterius bernama Totoro saat tinggal di pedesaan Jepang.', 1988, 86),
  2  
SQL> (7, 'Demon Slayer: Mugen Train', 'Tanjiro dan teman-temannya naik kereta misterius untuk menghadapi iblis kuat yang menyerang para penumpang.', 2020, 117);
(7, 'Demon Slayer: Mugen Train', 'Tanjiro dan teman-temannya naik kereta misterius untuk menghadapi iblis kuat yang menyerang para penumpang.', 2020, 117)
 *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> INSERT ALL
  2  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES ((1, 'Spirited Away', 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.', 2001, 125)
  3  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (2, 'Your Name', 'Dua remaja yang belum pernah bertemu tiba-tiba bertukar tubuh dan mencoba memahami hubungan misterius yang menghubungkan mereka.', 2016, 106)
  4  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (3, 'A Silent Voice', 'Seorang mantan pembully mencoba menebus kesalahannya kepada gadis tuli yang pernah ia sakiti saat masih sekolah.', 2016, 130)
  5  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (4, 'Weathering With You', 'Seorang remaja bertemu gadis yang memiliki kemampuan mengendalikan cuaca di tengah kehidupan Tokyo yang penuh hujan.', 2019, 112)
  6  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (5, 'Princess Mononoke', 'Seorang pangeran yang terkena kutukan terlibat konflik antara manusia dan roh hutan dalam perjuangan menjaga keseimbangan alam.', 1997, 134)
  7  SELECT * FROM dual;
INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES ((1, 'Spirited Away', 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.', 2001, 125)
                                                              *
ERROR at line 2:
ORA-00907: missing right parenthesis 


SQL> INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (1, 'Spirited Away', 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.', 2001, 125)
SP2-0734: unknown command beginning "INTO Film ..." - rest of line ignored.
SQL> INSERT ALL
  2  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (1, 'Spirited Away', 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.', 2001, 125)
  3  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (2, 'Your Name', 'Dua remaja yang belum pernah bertemu tiba-tiba bertukar tubuh dan mencoba memahami hubungan misterius yang menghubungkan mereka.', 2016, 106)
  4  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (3, 'A Silent Voice', 'Seorang mantan pembully mencoba menebus kesalahannya kepada gadis tuli yang pernah ia sakiti saat masih sekolah.', 2016, 130)
  5  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (4, 'Weathering With You', 'Seorang remaja bertemu gadis yang memiliki kemampuan mengendalikan cuaca di tengah kehidupan Tokyo yang penuh hujan.', 2019, 112)
  6  INTO Film (id_film, judul, sinopsis, tahun, durasi) VALUES (5, 'Princess Mononoke', 'Seorang pangeran yang terkena kutukan terlibat konflik antara manusia dan roh hutan dalam perjuangan menjaga keseimbangan alam.', 1997, 134)
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2  INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (101, 35000, 120, 'Reguler')
  3  INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (102, 50000, 100, 'Premium')
  4  INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (103, 75000, 80, 'VIP')
  5  INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (104, 100000, 60, 'VVIP')
  6  INTO Theater (id_theater, harga, kapasitas, kelas) VALUES (105, 45000, 60, 'Reguler Plus')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2  INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (1, 101, 'A1')
  3  INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (2, 102, 'A2')
  4  INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (3, 103, 'B1')
  5  INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (4, 104, 'B2')
  6  INTO Inventaris (id_inventaris, id_theater, nomor_kursi) VALUES (5, 105, 'C1')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2  INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (1, 'Kana', '0511', TO_DATE('2003-12-01','YYYY-MM-DD'), 'kana@gmail.com')
  3  INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (2, 'Adhi', '0512', TO_DATE('2003-12-01','YYYY-MM-DD'), 'adhi@gmail.com')
  4  INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (3, 'Mimi', '0513', TO_DATE('2004-05-21','YYYY-MM-DD'), 'mimi@gmail.com')
  5  INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (4, 'Asahi', '0514', TO_DATE('2001-10-17','YYYY-MM-DD'), 'asahi@gmail.com')
  6  INTO Member (id_member, nama, no_hp, tgl_lahir, email) VALUES (5, 'Asuna', '0515', TO_DATE('2002-08-09','YYYY-MM-DD'), 'asuna@gmail.com')
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2  INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (201, 1, 101, TO_DATE('2026-03-10 13:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 14:46','YYYY-MM-DD HH24:MI'))
  3  INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (202, 2, 102, TO_DATE('2026-03-10 15:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 16:52','YYYY-MM-DD HH24:MI'))
  4  INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (203, 3, 103, TO_DATE('2026-03-10 17:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-10 19:02','YYYY-MM-DD HH24:MI'))
  5  INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (204, 4, 104, TO_DATE('2026-03-11 19:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-11 20:03','YYYY-MM-DD HH24:MI'))
  6  INTO Jadwal (id_jadwal, id_film, id_theater, periode_start, periode_end) VALUES (205, 5, 105, TO_DATE('2026-03-11 21:00','YYYY-MM-DD HH24:MI'), TO_DATE('2026-03-11 21:46','YYYY-MM-DD HH24:MI'))
  7  SELECT * FROM dual;

5 rows created.

SQL> INSERT ALL
  2  INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX01', 201, 1, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 45000)
  3  INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX02', 202, 2, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 50000)
  4  INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX03', 203, 3, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 75000)
  5  INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX04', 204, 4, 'PROSES', TO_DATE('2026-03-08','YYYY-MM-DD'), 100000)
  6  INTO Transaksi (kode_pemesanan, id_jadwal, id_member, status, tanggal, total_harga) VALUES ('TX05', 205, 5, 'LUNAS', TO_DATE('2026-03-08','YYYY-MM-DD'), 150000)
  7  SELECT * FROM dual;

5 rows created.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 100;
SQL> SET FEEDBACK OFF;
SQL> COLUMN judul FORMAT A25;
SQL> COLUMN sinopsis FORMAT A30;
SQL>  COLUMN nama FORMAT A15;
SQL> COLUMN email FORMAT A20;
SQL> COLUMN kelas FORMAT A15;
SQL> COLUMN status FORMAT A10;
SQL> COLUMN kode_pemesanan FORMAT A10;
SQL> COLUMN nomor_kursi FORMAT A5;
SQL> select * from film;

   ID_FILM JUDUL                     SINOPSIS                            TAHUN     DURASI                                                                                                               
---------- ------------------------- ------------------------------ ---------- ----------                                                                                                               
         1 Spirited Away             Seorang gadis bernama Chihiro        2001        125                                                                                                               
                                     terjebak di dunia roh dan haru                                                                                                                                     
                                     s bekerja di pemandi                                                                                                                                               
                                                                                                                                                                                                        
         2 Your Name                 Dua remaja yang belum pernah b       2016        106                                                                                                               
                                     ertemu tiba-tiba bertukar tubu                                                                                                                                     
                                     h dan mencoba memaha                                                                                                                                               
                                                                                                                                                                                                        
         3 A Silent Voice            Seorang mantan pembully mencob       2016        130                                                                                                               
                                     a menebus kesalahannya kepada                                                                                                                                      
                                     gadis tuli yang pern                                                                                                                                               
                                                                                                                                                                                                        
         4 Weathering With You       Seorang remaja bertemu gadis y       2019        112                                                                                                               
                                     ang memiliki kemampuan mengend                                                                                                                                     
                                     alikan cuaca di teng                                                                                                                                               
                                                                                                                                                                                                        
         5 Princess Mononoke         Seorang pangeran yang terkena        1997        134                                                                                                               
                                     kutukan terlibat konflik antar                                                                                                                                     
                                     a manusia dan roh hu                                                                                                                                               
                                                                                                                                                                                                        
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              201          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              202          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              203          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX04              204          4 PROSES     08-MAR-26      100000                                                                                                                                       
TX05              205          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> UPDATE Film
  2  SET sinopsis = 'Seorang gadis bernama Chihiro terjebak di dunia roh dan harus bekerja di pemandian roh untuk menyelamatkan orang tuanya.'
  3  WHERE id_film = 1;
SQL> UPDATE Film
  2  SET sinopsis = 'Seorang gadis bernama Chihiro terjebak di dunia roh.'
  3  WHERE id_film = 1;
SQL> UPDATE Theater
  2  SET harga = 60000
  3  WHERE kelas = 'premium';
SQL> select * from theater;

ID_THEATER      HARGA  KAPASITAS KELAS                                                                                                                                                                  
---------- ---------- ---------- ---------------                                                                                                                                                        
       101      35000        120 Reguler                                                                                                                                                                
       102      50000        100 Premium                                                                                                                                                                
       103      75000         80 VIP                                                                                                                                                                    
       104     100000         60 VVIP                                                                                                                                                                   
       105      45000         60 Reguler Plus                                                                                                                                                           
SQL> UPDATE Theater
  2  SET harga = 60000
  3  WHERE id_theater = 102;
SQL> select * from member;

 ID_MEMBER NAMA            NO_HP                TGL_LAHIR EMAIL                                                                                                                                         
---------- --------------- -------------------- --------- --------------------                                                                                                                          
         1 Kana            0511                 01-DEC-03 kana@gmail.com                                                                                                                                
         2 Adhi            0512                 01-DEC-03 adhi@gmail.com                                                                                                                                
         3 Mimi            0513                 21-MAY-04 mimi@gmail.com                                                                                                                                
         4 Asahi           0514                 17-OCT-01 asahi@gmail.com                                                                                                                               
         5 Asuna           0515                 09-AUG-02 asuna@gmail.com                                                                                                                               
SQL> select * from jadwal;

 ID_JADWAL    ID_FILM ID_THEATER PERIODE_S PERIODE_E                                                                                                                                                    
---------- ---------- ---------- --------- ---------                                                                                                                                                    
       201          1        101 10-MAR-26 10-MAR-26                                                                                                                                                    
       202          2        102 10-MAR-26 10-MAR-26                                                                                                                                                    
       203          3        103 10-MAR-26 10-MAR-26                                                                                                                                                    
       204          4        104 11-MAR-26 11-MAR-26                                                                                                                                                    
       205          5        105 11-MAR-26 11-MAR-26                                                                                                                                                    
SQL> UPDATE Member
  2  SET email = 'mimi.sora@newmail.jp', no_hp = '089821320001'
  3  WHERE id_member = 3;
SQL> UPDATE Jadwal
  2  SET periode_start = TO_DATE('2026-03-11 10:00', 'YYYY-MM-DD HH24:MI')
  3  WHERE id_jadwal = 204;
SQL> UPDATE Transaksi
  2  SET status = 'LUNAS'
  3  WHERE kode_pemesanan = 'TX04';
SQL> SELECT judul, sinopsis FROM Film WHERE id_film = 1;

JUDUL                     SINOPSIS                                                                                                                                                                      
------------------------- ------------------------------                                                                                                                                                
Spirited Away             Seorang gadis bernama Chihiro                                                                                                                                                 
                          terjebak di dunia roh.                                                                                                                                                        
                                                                                                                                                                                                        
SQL> SELECT kelas, harga FROM Theater;

KELAS                HARGA                                                                                                                                                                              
--------------- ----------                                                                                                                                                                              
Reguler              35000                                                                                                                                                                              
Premium              60000                                                                                                                                                                              
VIP                  75000                                                                                                                                                                              
VVIP                100000                                                                                                                                                                              
Reguler Plus         45000                                                                                                                                                                              
SQL> SELECT nama, no_hp FROM Member WHERE nama = 'Mimi';

NAMA            NO_HP                                                                                                                                                                                   
--------------- --------------------                                                                                                                                                                    
Mimi            089821320001                                                                                                                                                                            
SQL> SELECT nama, no_hp, email FROM Member WHERE nama = 'Mimi';

NAMA            NO_HP                EMAIL                                                                                                                                                              
--------------- -------------------- --------------------                                                                                                                                               
Mimi            089821320001         mimi.sora@newmail.jp                                                                                                                                               
SQL> SELECT kode_pemesanan, status FROM Transaksi WHERE kode_pemesanan = 'TX04';

KODE_PEMES STATUS                                                                                                                                                                                       
---------- ----------                                                                                                                                                                                   
TX04       LUNAS                                                                                                                                                                                        
SQL> SQL> select * from transaksi;
SP2-0734: unknown command beginning "SQL> selec..." - rest of line ignored.
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              201          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              202          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              203          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX04              204          4 LUNAS      08-MAR-26      100000                                                                                                                                       
TX05              205          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> DELETE FROM Transaksi
  2  WHERE id_jadwal = '204';
SQL> select * from transaksi;

KODE_PEMES  ID_JADWAL  ID_MEMBER STATUS     TANGGAL   TOTAL_HARGA                                                                                                                                       
---------- ---------- ---------- ---------- --------- -----------                                                                                                                                       
TX01              201          1 LUNAS      08-MAR-26       45000                                                                                                                                       
TX02              202          2 LUNAS      08-MAR-26       50000                                                                                                                                       
TX03              203          3 LUNAS      08-MAR-26       75000                                                                                                                                       
TX05              205          5 LUNAS      08-MAR-26      150000                                                                                                                                       
SQL> select * from member;

 ID_MEMBER NAMA            NO_HP                TGL_LAHIR EMAIL                                                                                                                                         
---------- --------------- -------------------- --------- --------------------                                                                                                                          
         1 Kana            0511                 01-DEC-03 kana@gmail.com                                                                                                                                
         2 Adhi            0512                 01-DEC-03 adhi@gmail.com                                                                                                                                
         3 Mimi            089821320001         21-MAY-04 mimi.sora@newmail.jp                                                                                                                          
         4 Asahi           0514                 17-OCT-01 asahi@gmail.com                                                                                                                               
         5 Asuna           0515                 09-AUG-02 asuna@gmail.com                                                                                                                               
SQL> DELETE FROM Member
  2  WHERE no_hp = '0514';
SQL> select * from member;

 ID_MEMBER NAMA            NO_HP                TGL_LAHIR EMAIL                                                                                                                                         
---------- --------------- -------------------- --------- --------------------                                                                                                                          
         1 Kana            0511                 01-DEC-03 kana@gmail.com                                                                                                                                
         2 Adhi            0512                 01-DEC-03 adhi@gmail.com                                                                                                                                
         3 Mimi            089821320001         21-MAY-04 mimi.sora@newmail.jp                                                                                                                          
         5 Asuna           0515                 09-AUG-02 asuna@gmail.com                                                                                                                               
SQL> SPOOL OFF
