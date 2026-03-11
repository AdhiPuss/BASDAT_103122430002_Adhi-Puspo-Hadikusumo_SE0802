SQL> --nama: Adhi Puspo Hadikusumo
SQL> --nim: 103122430002
SQL> CREATE TABLE mahasiswa
  2  (id NUMBER PRIMARY KEY, nama VARCHAR2(50) NOT NULL, tempat_lahir VARCHAR2(50), tanggal_lahir  DATE, nomor_hp VARCHAR2(20), email VARCHAR2(50), tinggi_badan NUMBER(5,2), berat_badan NUMBER(5,2));

Table created.

SQL> desc mahasiswa
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER
 NAMA                                      NOT NULL VARCHAR2(50)
 TEMPAT_LAHIR                                       VARCHAR2(50)
 TANGGAL_LAHIR                                      DATE
 NOMOR_HP                                           VARCHAR2(20)
 EMAIL                                              VARCHAR2(50)
 TINGGI_BADAN                                       NUMBER(5,2)
 BERAT_BADAN                                        NUMBER(5,2)

SQL> INSERT ALL
  2    INTO mahasiswa VALUES (1, 'Arima Kana', 'Japan', TO_DATE('2004-04-19', 'YYYY-MM-DD'), '081200000001', 'kana@bkomachi.com', 150.0, 45.0)
  3    INTO mahasiswa VALUES (2, 'Hoshino Aqua', 'Japan', TO_DATE('2002-06-11', 'YYYY-MM-DD'), '081200000002', 'aqua@shineagency.com', 175.0, 60.0)
  4    INTO mahasiswa VALUES (3, 'Hoshino Ruby', 'Japan', TO_DATE('2004-06-11', 'YYYY-MM-DD'), '081200000003', 'ruby@bkomachi.com', 158.0, 47.0)
  5    INTO mahasiswa VALUES (4, 'Memcho', 'Japan', TO_DATE('1999-12-05', 'YYYY-MM-DD'), '081200000004', 'memcho@bkomachi.com', 155.0, 48.0)
  6    INTO mahasiswa VALUES (5, 'Kurokawa Akane', 'Japan', TO_DATE('2003-03-02', 'YYYY-MM-DD'), '081200000005', 'akane@lalalai.com', 163.0, 50.0)
  7    INTO mahasiswa VALUES (6, 'Hoshino Ai', 'Japan', TO_DATE('1998-05-20', 'YYYY-MM-DD'), '081200000006', 'ai@bkomachi.com', 151.0, 44.0)
  8    INTO mahasiswa VALUES (7, 'Ichigo Saitou', 'Japan', TO_DATE('1985-09-10', 'YYYY-MM-DD'), '081200000007', 'ichigo@strawberryprod.com', 178.0, 72.0)
  9    INTO mahasiswa VALUES (8, 'Miyako Saitou', 'Japan', TO_DATE('1988-01-15', 'YYYY-MM-DD'), '081200000008', 'miyako@strawberryprod.com', 165.0, 55.0)
 10    INTO mahasiswa VALUES (9, 'Taishi Gotanda', 'Japan', TO_DATE('1987-07-07', 'YYYY-MM-DD'), '081200000009', 'gotanda@filmstudio.com', 180.0, 75.0)
 11    INTO mahasiswa VALUES (10, 'Kaburagi Masaya', 'Japan', TO_DATE('1983-03-18', 'YYYY-MM-DD'), '081200000010', 'kaburagi@tvstation.com', 176.0, 70.0)
 12    INTO mahasiswa VALUES (11, 'Narushima Melt', 'Japan', TO_DATE('2001-11-11', 'YYYY-MM-DD'), '081200000011', 'melt@lalalai.com', 174.0, 63.0)
 13    INTO mahasiswa VALUES (12, 'Himekawa Taiki', 'Japan', TO_DATE('2000-02-22', 'YYYY-MM-DD'), '081200000012', 'taiki@lalalai.com', 182.0, 71.0)
 14    INTO mahasiswa VALUES (13, 'Yuki Sumi', 'Japan', TO_DATE('2003-09-01', 'YYYY-MM-DD'), '081200000013', 'yuki@bkomachi.com', 157.0, 46.0)
 15    INTO mahasiswa VALUES (14, 'Minami Kotobuki', 'Japan', TO_DATE('2002-08-18', 'YYYY-MM-DD'), '081200000014', 'minami@agency.com', 168.0, 54.0)
 16    INTO mahasiswa VALUES (15, 'Pieyon', 'Japan', TO_DATE('1995-05-05', 'YYYY-MM-DD'), '081200000015', 'pieyon@fitness.com', 183.0, 80.0)
 17  SELECT * FROM dual;

15 rows created.

SQL> SET LINESIZE 200;
SQL> SET PAGESIZE 50;
SQL> SET TRIMSPOOL ON;
SQL> SET PAGESIZE 100;
SQL> COLUMN ID FORMAT 999;
SQL> COLUMN NAMA FORMAT A20;
SQL> COLUMN TEMPAT_LAHIR FORMAT A15;
SQL> COLUMN TANGGAL_LAHIR FORMAT A12;
SQL> COLUMN NOMOR_HP FORMAT A13;
SQL> COLUMN EMAIL FORMAT A25;
SQL> COLUMN TINGGI_BADAN FORMAT 999;
SQL> COLUMN BERAT_BADAN FORMAT 999;
SQL> select * from mahasiswa;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI NOMOR_HP      EMAIL                     TINGGI_BADAN BERAT_BADAN
---- -------------------- --------------- ------------ ------------- ------------------------- ------------ -----------
   1 Arima Kana           Japan           19-APR-04    081200000001  kana@bkomachi.com                  150          45
   2 Hoshino Aqua         Japan           11-JUN-02    081200000002  aqua@shineagency.com               175          60
   3 Hoshino Ruby         Japan           11-JUN-04    081200000003  ruby@bkomachi.com                  158          47
   4 Memcho               Japan           05-DEC-99    081200000004  memcho@bkomachi.com                155          48
   5 Kurokawa Akane       Japan           02-MAR-03    081200000005  akane@lalalai.com                  163          50
   6 Hoshino Ai           Japan           20-MAY-98    081200000006  ai@bkomachi.com                    151          44
   7 Ichigo Saitou        Japan           10-SEP-85    081200000007  ichigo@strawberryprod.com          178          72
   8 Miyako Saitou        Japan           15-JAN-88    081200000008  miyako@strawberryprod.com          165          55
   9 Taishi Gotanda       Japan           07-JUL-87    081200000009  gotanda@filmstudio.com             180          75
  10 Kaburagi Masaya      Japan           18-MAR-83    081200000010  kaburagi@tvstation.com             176          70
  11 Narushima Melt       Japan           11-NOV-01    081200000011  melt@lalalai.com                   174          63
  12 Himekawa Taiki       Japan           22-FEB-00    081200000012  taiki@lalalai.com                  182          71
  13 Yuki Sumi            Japan           01-SEP-03    081200000013  yuki@bkomachi.com                  157          46
  14 Minami Kotobuki      Japan           18-AUG-02    081200000014  minami@agency.com                  168          54
  15 Pieyon               Japan           05-MAY-95    081200000015  pieyon@fitness.com                 183          80

15 rows selected.

SQL> SELECT
  2      NAMA,
  3      LOWER(NAMA) AS lower_nama,
  4      UPPER(NAMA) AS upper_nama,
  5      INITCAP(NAMA) AS initcap_nama,
  6      CONCAT(NAMA,'_HSR') AS concat_nama,
  7      LENGTH(NAMA) AS panjang_nama,
  8      SUBSTR(NAMA,1,4) AS potong_nama,
  9      LPAD(NAMA,15,'*') AS lpad_nama,
 10      RPAD(NAMA,15,'-') AS rpad_nama,
 11      LTRIM('   '||NAMA) AS ltrim_nama,
 12      RTRIM(NAMA||'   ') AS rtrim_nama,
 13      INSTR(NAMA,'a') AS posisi_a,
 14      REPLACE(NAMA,'a','@') AS replace_nama
 15  FROM mahasiswa;

NAMA                 LOWER_NAMA                                         UPPER_NAMA                                         INITCAP_NAMA
-------------------- -------------------------------------------------- -------------------------------------------------- --------------------------------------------------
CONCAT_NAMA                                            PANJANG_NAMA POTONG_NAMA      LPAD_NAMA
------------------------------------------------------ ------------ ---------------- ------------------------------------------------------------
RPAD_NAMA                                                    LTRIM_NAMA                                            RTRIM_NAMA                                              POSISI_A
------------------------------------------------------------ ----------------------------------------------------- ----------------------------------------------------- ----------
REPLACE_NAMA
--------------------------------------------------
Arima Kana           arima kana                                         ARIMA KANA                                         Arima Kana
Arima Kana_HSR                                                   10 Arim             *****Arima Kana
Arima Kana-----                                              Arima Kana                                            Arima Kana                                                     5
Arim@ K@n@

Hoshino Aqua         hoshino aqua                                       HOSHINO AQUA                                       Hoshino Aqua
Hoshino Aqua_HSR                                                 12 Hosh             ***Hoshino Aqua
Hoshino Aqua---                                              Hoshino Aqua                                          Hoshino Aqua                                                  12
Hoshino Aqu@

Hoshino Ruby         hoshino ruby                                       HOSHINO RUBY                                       Hoshino Ruby
Hoshino Ruby_HSR                                                 12 Hosh             ***Hoshino Ruby
Hoshino Ruby---                                              Hoshino Ruby                                          Hoshino Ruby                                                   0
Hoshino Ruby

Memcho               memcho                                             MEMCHO                                             Memcho
Memcho_HSR                                                        6 Memc             *********Memcho
Memcho---------                                              Memcho                                                Memcho                                                         0
Memcho

Kurokawa Akane       kurokawa akane                                     KUROKAWA AKANE                                     Kurokawa Akane
Kurokawa Akane_HSR                                               14 Kuro             *Kurokawa Akane
Kurokawa Akane-                                              Kurokawa Akane                                        Kurokawa Akane                                                 6
Kurok@w@ Ak@ne

Hoshino Ai           hoshino ai                                         HOSHINO AI                                         Hoshino Ai
Hoshino Ai_HSR                                                   10 Hosh             *****Hoshino Ai
Hoshino Ai-----                                              Hoshino Ai                                            Hoshino Ai                                                     0
Hoshino Ai

Ichigo Saitou        ichigo saitou                                      ICHIGO SAITOU                                      Ichigo Saitou
Ichigo Saitou_HSR                                                13 Ichi             **Ichigo Saitou
Ichigo Saitou--                                              Ichigo Saitou                                         Ichigo Saitou                                                  9
Ichigo S@itou

Miyako Saitou        miyako saitou                                      MIYAKO SAITOU                                      Miyako Saitou
Miyako Saitou_HSR                                                13 Miya             **Miyako Saitou
Miyako Saitou--                                              Miyako Saitou                                         Miyako Saitou                                                  4
Miy@ko S@itou

Taishi Gotanda       taishi gotanda                                     TAISHI GOTANDA                                     Taishi Gotanda
Taishi Gotanda_HSR                                               14 Tais             *Taishi Gotanda
Taishi Gotanda-                                              Taishi Gotanda                                        Taishi Gotanda                                                 2
T@ishi Got@nd@

Kaburagi Masaya      kaburagi masaya                                    KABURAGI MASAYA                                    Kaburagi Masaya
Kaburagi Masaya_HSR                                              15 Kabu             Kaburagi Masaya
Kaburagi Masaya                                              Kaburagi Masaya                                       Kaburagi Masaya                                                2
K@bur@gi M@s@y@

Narushima Melt       narushima melt                                     NARUSHIMA MELT                                     Narushima Melt
Narushima Melt_HSR                                               14 Naru             *Narushima Melt
Narushima Melt-                                              Narushima Melt                                        Narushima Melt                                                 2
N@rushim@ Melt

Himekawa Taiki       himekawa taiki                                     HIMEKAWA TAIKI                                     Himekawa Taiki
Himekawa Taiki_HSR                                               14 Hime             *Himekawa Taiki
Himekawa Taiki-                                              Himekawa Taiki                                        Himekawa Taiki                                                 6
Himek@w@ T@iki

Yuki Sumi            yuki sumi                                          YUKI SUMI                                          Yuki Sumi
Yuki Sumi_HSR                                                     9 Yuki             ******Yuki Sumi
Yuki Sumi------                                              Yuki Sumi                                             Yuki Sumi                                                      0
Yuki Sumi

Minami Kotobuki      minami kotobuki                                    MINAMI KOTOBUKI                                    Minami Kotobuki
Minami Kotobuki_HSR                                              15 Mina             Minami Kotobuki
Minami Kotobuki                                              Minami Kotobuki                                       Minami Kotobuki                                                4
Min@mi Kotobuki

Pieyon               pieyon                                             PIEYON                                             Pieyon
Pieyon_HSR                                                        6 Piey             *********Pieyon
Pieyon---------                                              Pieyon                                                Pieyon                                                         0
Pieyon


15 rows selected.

SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tanggal_asli,
  4  
SQL>     TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL>     TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL>     TO_CHAR(tanggal_lahir,'MONTH') AS bulan_panjang,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL> 
SQL>     TO_CHAR(tanggal_lahir,'DD') AS hari_angka,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL> 
SQL>     TO_CHAR(tanggal_lahir,'YYYY') AS tahun_panjang,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL>     TO_CHAR(tanggal_lahir,'YY') AS tahun_pendek,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL>     TO_CHAR(tanggal_lahir,'RR') AS tahun_rr,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> 
SQL>     TO_CHAR(SYSDATE,'HH') AS jam_12,
SP2-0734: unknown command beginning "TO_CHAR(SY..." - rest of line ignored.
SQL>     TO_CHAR(SYSDATE,'HH24') AS jam_24,
SP2-0734: unknown command beginning "TO_CHAR(SY..." - rest of line ignored.
SQL>     TO_CHAR(SYSDATE,'MI') AS menit,
SP2-0734: unknown command beginning "TO_CHAR(SY..." - rest of line ignored.
SQL>     TO_CHAR(SYSDATE,'SS') AS detik,
SP2-0734: unknown command beginning "TO_CHAR(SY..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL>     TO_CHAR(SYSDATE,'AM') AS am_pm,
SP2-0734: unknown command beginning "TO_CHAR(SY..." - rest of line ignored.
SQL> 
SQL>     SYSDATE AS waktu_sekarang,
SP2-0734: unknown command beginning "SYSDATE AS..." - rest of line ignored.
SQL> 
SQL>     ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan,
SP2-0734: unknown command beginning "ADD_MONTHS..." - rest of line ignored.
SQL> 
SQL>     LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan,
SP2-0734: unknown command beginning "LAST_DAY(t..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> 
SQL>     NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya,
SP2-0734: unknown command beginning "NEXT_DAY(t..." - rest of line ignored.
SQL> 
SQL>     MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan,
SP2-0734: unknown command beginning "MONTHS_BET..." - rest of line ignored.
SQL> 
SQL>     ROUND(tanggal_lahir,'MONTH') AS round_bulan,
SP2-0734: unknown command beginning "ROUND(tang..." - rest of line ignored.
SQL>     ROUND(tanggal_lahir,'YEAR') AS round_tahun
SP2-0734: unknown command beginning "ROUND(tang..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> 
SQL> FROM mahasiswa;
SP2-0734: unknown command beginning "FROM mahas..." - rest of line ignored.
SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MM-YYYY') AS tanggal_asli,
  4      TO_CHAR(tanggal_lahir,'MM') AS bulan_angka,
  5      TO_CHAR(tanggal_lahir,'MON') AS bulan_singkat,
  6      TO_CHAR(tanggal_lahir,'MONTH') AS bulan_panjang,
  7      TO_CHAR(tanggal_lahir,'DD') AS hari_angka,
  8      TO_CHAR(tanggal_lahir,'DY') AS hari_singkat,
  9      TO_CHAR(tanggal_lahir,'YYYY') AS tahun_panjang,
 10      TO_CHAR(tanggal_lahir,'YY') AS tahun_pendek,
 11      TO_CHAR(tanggal_lahir,'RR') AS tahun_rr,
 12      TO_CHAR(SYSDATE,'HH') AS jam_12,
 13      TO_CHAR(SYSDATE,'HH24') AS jam_24,
 14      TO_CHAR(SYSDATE,'MI') AS menit,
 15      TO_CHAR(SYSDATE,'SS') AS detik,
 16      TO_CHAR(SYSDATE,'AM') AS am_pm,
 17      SYSDATE AS waktu_sekarang,
 18      ADD_MONTHS(tanggal_lahir,6) AS tambah_6_bulan,
 19      LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan,
 20      NEXT_DAY(tanggal_lahir,'MONDAY') AS senin_berikutnya,
 21      MONTHS_BETWEEN(SYSDATE,tanggal_lahir) AS selisih_bulan,
 22      ROUND(tanggal_lahir,'MONTH') AS round_bulan,
 23      ROUND(tanggal_lahir,'YEAR') AS round_tahun
 24  FROM mahasiswa;

NAMA                 TANGGAL_AS BU BULAN_SINGKA BULAN_PANJANG                        HA HARI_SINGKAT TAHU TA TA JA JA ME DE AM WAKTU_SEK TAMBAH_6_ HARI_TERA SENIN_BER SELISIH_BULAN ROUND_BUL ROUND_TAH
-------------------- ---------- -- ------------ ------------------------------------ -- ------------ ---- -- -- -- -- -- -- -- --------- --------- --------- --------- ------------- --------- ---------
Arima Kana           19-04-2004 04 APR          APRIL                                19 MON          2004 04 04 03 03 14 43 AM 12-MAR-26 19-OCT-04 30-APR-04 26-APR-04    262.778555 01-MAY-04 01-JAN-04
Hoshino Aqua         11-06-2002 06 JUN          JUNE                                 11 TUE          2002 02 02 03 03 14 43 AM 12-MAR-26 11-DEC-02 30-JUN-02 17-JUN-02     285.03662 01-JUN-02 01-JAN-02
Hoshino Ruby         11-06-2004 06 JUN          JUNE                                 11 FRI          2004 04 04 03 03 14 43 AM 12-MAR-26 11-DEC-04 30-JUN-04 14-JUN-04     261.03662 01-JUN-04 01-JAN-04
Memcho               05-12-1999 12 DEC          DECEMBER                             05 SUN          1999 99 99 03 03 14 43 AM 12-MAR-26 05-JUN-00 31-DEC-99 06-DEC-99    315.230168 01-DEC-99 01-JAN-00
Kurokawa Akane       02-03-2003 03 MAR          MARCH                                02 SUN          2003 03 03 03 03 14 43 AM 12-MAR-26 02-SEP-03 31-MAR-03 03-MAR-03    276.326943 01-MAR-03 01-JAN-03
Hoshino Ai           20-05-1998 05 MAY          MAY                                  20 WED          1998 98 98 03 03 14 43 AM 12-MAR-26 20-NOV-98 31-MAY-98 25-MAY-98    333.746297 01-JUN-98 01-JAN-98
Ichigo Saitou        10-09-1985 09 SEP          SEPTEMBER                            10 TUE          1985 85 85 03 03 14 43 AM 12-MAR-26 10-MAR-86 30-SEP-85 16-SEP-85    486.068878 01-SEP-85 01-JAN-86
Miyako Saitou        15-01-1988 01 JAN          JANUARY                              15 FRI          1988 88 88 03 03 14 43 AM 12-MAR-26 15-JUL-88 31-JAN-88 18-JAN-88    457.907588 01-JAN-88 01-JAN-88
Taishi Gotanda       07-07-1987 07 JUL          JULY                                 07 TUE          1987 87 87 03 03 14 43 AM 12-MAR-26 07-JAN-88 31-JUL-87 13-JUL-87    464.165652 01-JUL-87 01-JAN-88
Kaburagi Masaya      18-03-1983 03 MAR          MARCH                                18 FRI          1983 83 83 03 03 14 43 AM 12-MAR-26 18-SEP-83 31-MAR-83 21-MAR-83    515.810814 01-APR-83 01-JAN-83
Narushima Melt       11-11-2001 11 NOV          NOVEMBER                             11 SUN          2001 01 01 03 03 14 43 AM 12-MAR-26 11-MAY-02 30-NOV-01 12-NOV-01     292.03662 01-NOV-01 01-JAN-02
Himekawa Taiki       22-02-2000 02 FEB          FEBRUARY                             22 TUE          2000 00 00 03 03 14 43 AM 12-MAR-26 22-AUG-00 29-FEB-00 28-FEB-00    312.681781 01-MAR-00 01-JAN-00
Yuki Sumi            01-09-2003 09 SEP          SEPTEMBER                            01 MON          2003 03 03 03 03 14 43 AM 12-MAR-26 01-MAR-04 30-SEP-03 08-SEP-03    270.359201 01-SEP-03 01-JAN-04
Minami Kotobuki      18-08-2002 08 AUG          AUGUST                               18 SUN          2002 02 02 03 03 14 43 AM 12-MAR-26 18-FEB-03 31-AUG-02 19-AUG-02    282.810814 01-SEP-02 01-JAN-03
Pieyon               05-05-1995 05 MAY          MAY                                  05 FRI          1995 95 95 03 03 14 43 AM 12-MAR-26 05-NOV-95 31-MAY-95 08-MAY-95    370.230168 01-MAY-95 01-JAN-95

15 rows selected.

SQL> SELECT
  2      nama,
  3  
SQL>     TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS char_date,
SP2-0734: unknown command beginning "TO_CHAR(ta..." - rest of line ignored.
SQL> 
SQL>     TO_CHAR(tinggi,'999.99') AS char_number,
SP2-0734: unknown command beginning "TO_CHAR(ti..." - rest of line ignored.
SQL> 
SQL>     TO_NUMBER('12345') AS contoh_to_number,
SP2-0734: unknown command beginning "TO_NUMBER(..." - rest of line ignored.
SQL> 
SQL>     TO_DATE('2024-05-20','YYYY-MM-DD') AS contoh_to_date
SP2-0734: unknown command beginning "TO_DATE('2..." - rest of line ignored.
SP2-0044: For a list of known commands enter HELP
and to leave enter EXIT.
SQL> 
SQL> FROM mahasiswa;
SP2-0734: unknown command beginning "FROM mahas..." - rest of line ignored.
SQL> clear buffer
buffer cleared
SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS char_date,
  4      TO_CHAR(tinggi,'999.99') AS char_number,
  5      TO_NUMBER('12345') AS contoh_to_number,
  6      TO_DATE('2024-05-20','YYYY-MM-DD') AS contoh_to_date
  7  FROM mahasiswa;
    TO_CHAR(tinggi,'999.99') AS char_number,
            *
ERROR at line 4:
ORA-00904: "TINGGI": invalid identifier


SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS char_date,
  4      TO_CHAR(tinggi,'999.99') AS char_number,
  5      TO_NUMBER('12345') AS contoh_to_number,
  6      TO_DATE('2024-05-20','YYYY-MM-DD') AS contoh_to_date
  7  FROM mahasiswa;
    TO_CHAR(tinggi,'999.99') AS char_number,
            *
ERROR at line 4:
ORA-00904: "TINGGI": invalid identifier


SQL> SELECT
  2  nama
  3  TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS char_date,
  4  TO_CHAR(tinggi,'999.99') AS char_number,
  5  TO_NUMBER('12345') AS contoh_to_number,
  6  TO_DATE('2024-05-20','YYYY-MM-DD') AS contoh_to_date
  7  FROM mahasiswa;
TO_CHAR(tanggal_lahir,'DD-MON-YYYY') AS char_date,
       *
ERROR at line 3:
ORA-00923: FROM keyword not found where expected


SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MON-YYYY') char_date,
  4      TO_CHAR(tinggi,'999.99') char_number,
  5      TO_NUMBER('12345') contoh_to_number,
  6      TO_DATE('2024-05-20','YYYY-MM-DD') contoh_to_date
  7  FROM mahasiswa;
    TO_CHAR(tinggi,'999.99') char_number,
            *
ERROR at line 4:
ORA-00904: "TINGGI": invalid identifier


SQL> SELECT
  2      nama,
  3      TO_CHAR(tanggal_lahir,'DD-MON-YYYY') char_date,
  4      TO_CHAR(tinggi_badan,'999.99') char_number,
  5      TO_NUMBER('12345') contoh_to_number,
  6      TO_DATE('2024-05-20','YYYY-MM-DD') contoh_to_date
  7  FROM mahasiswa;

NAMA                 CHAR_DATE            CHAR_NU CONTOH_TO_NUMBER CONTOH_TO
-------------------- -------------------- ------- ---------------- ---------
Arima Kana           19-APR-2004           150.00            12345 20-MAY-24
Hoshino Aqua         11-JUN-2002           175.00            12345 20-MAY-24
Hoshino Ruby         11-JUN-2004           158.00            12345 20-MAY-24
Memcho               05-DEC-1999           155.00            12345 20-MAY-24
Kurokawa Akane       02-MAR-2003           163.00            12345 20-MAY-24
Hoshino Ai           20-MAY-1998           151.00            12345 20-MAY-24
Ichigo Saitou        10-SEP-1985           178.00            12345 20-MAY-24
Miyako Saitou        15-JAN-1988           165.00            12345 20-MAY-24
Taishi Gotanda       07-JUL-1987           180.00            12345 20-MAY-24
Kaburagi Masaya      18-MAR-1983           176.00            12345 20-MAY-24
Narushima Melt       11-NOV-2001           174.00            12345 20-MAY-24
Himekawa Taiki       22-FEB-2000           182.00            12345 20-MAY-24
Yuki Sumi            01-SEP-2003           157.00            12345 20-MAY-24
Minami Kotobuki      18-AUG-2002           168.00            12345 20-MAY-24
Pieyon               05-MAY-1995           183.00            12345 20-MAY-24

15 rows selected.

SQL> SELECT
  2  TO_CHAR(tanggal_lahir, 'DD-MM-YYYY') as tgl_teks,
  3  TO_CHAR(tinggi_badan, '999.99') as tinggi_teks,
  4  TO_DATE('10-10-2025', 'DD-MM-YYYY') as teks_ke_tgl,
  5  TO_NUMBER('100') + berat_badan as hasil_jumlah
  6  FROM mahasiswa;

TGL_TEKS   TINGGI_ TEKS_KE_T HASIL_JUMLAH
---------- ------- --------- ------------
19-04-2004  150.00 10-OCT-25          145
11-06-2002  175.00 10-OCT-25          160
11-06-2004  158.00 10-OCT-25          147
05-12-1999  155.00 10-OCT-25          148
02-03-2003  163.00 10-OCT-25          150
20-05-1998  151.00 10-OCT-25          144
10-09-1985  178.00 10-OCT-25          172
15-01-1988  165.00 10-OCT-25          155
07-07-1987  180.00 10-OCT-25          175
18-03-1983  176.00 10-OCT-25          170
11-11-2001  174.00 10-OCT-25          163
22-02-2000  182.00 10-OCT-25          171
01-09-2003  157.00 10-OCT-25          146
18-08-2002  168.00 10-OCT-25          154
05-05-1995  183.00 10-OCT-25          180

15 rows selected.

SQL> SELECT
  2  nama,
  3  ABS(berat_badan - 100) as jarak_mutlak,
  4  MOD(id, 3) as sisa_bagi,
  5  FLOOR(tinggi_badan) as lantai_angka,
  6  POWER(id, 2) as kuadrat_id,
  7  ROUND(tinggi_badan, 0) as pembulatan,
  8  CEIL(tinggi_badan) as atap_angka
  9  FROM mahasiswa;

NAMA                 JARAK_MUTLAK  SISA_BAGI LANTAI_ANGKA KUADRAT_ID PEMBULATAN ATAP_ANGKA
-------------------- ------------ ---------- ------------ ---------- ---------- ----------
Arima Kana                     55          1          150          1        150        150
Hoshino Aqua                   40          2          175          4        175        175
Hoshino Ruby                   53          0          158          9        158        158
Memcho                         52          1          155         16        155        155
Kurokawa Akane                 50          2          163         25        163        163
Hoshino Ai                     56          0          151         36        151        151
Ichigo Saitou                  28          1          178         49        178        178
Miyako Saitou                  45          2          165         64        165        165
Taishi Gotanda                 25          0          180         81        180        180
Kaburagi Masaya                30          1          176        100        176        176
Narushima Melt                 37          2          174        121        174        174
Himekawa Taiki                 29          0          182        144        182        182
Yuki Sumi                      54          1          157        169        157        157
Minami Kotobuki                46          2          168        196        168        168
Pieyon                         20          0          183        225        183        183

15 rows selected.

SQL> elect * from mahasiswa;
SP2-0734: unknown command beginning "elect * fr..." - rest of line ignored.
SQL> Select * from mahasiswa;

  ID NAMA                 TEMPAT_LAHIR    TANGGAL_LAHI NOMOR_HP      EMAIL                     TINGGI_BADAN BERAT_BADAN
---- -------------------- --------------- ------------ ------------- ------------------------- ------------ -----------
   1 Arima Kana           Japan           19-APR-04    081200000001  kana@bkomachi.com                  150          45
   2 Hoshino Aqua         Japan           11-JUN-02    081200000002  aqua@shineagency.com               175          60
   3 Hoshino Ruby         Japan           11-JUN-04    081200000003  ruby@bkomachi.com                  158          47
   4 Memcho               Japan           05-DEC-99    081200000004  memcho@bkomachi.com                155          48
   5 Kurokawa Akane       Japan           02-MAR-03    081200000005  akane@lalalai.com                  163          50
   6 Hoshino Ai           Japan           20-MAY-98    081200000006  ai@bkomachi.com                    151          44
   7 Ichigo Saitou        Japan           10-SEP-85    081200000007  ichigo@strawberryprod.com          178          72
   8 Miyako Saitou        Japan           15-JAN-88    081200000008  miyako@strawberryprod.com          165          55
   9 Taishi Gotanda       Japan           07-JUL-87    081200000009  gotanda@filmstudio.com             180          75
  10 Kaburagi Masaya      Japan           18-MAR-83    081200000010  kaburagi@tvstation.com             176          70
  11 Narushima Melt       Japan           11-NOV-01    081200000011  melt@lalalai.com                   174          63
  12 Himekawa Taiki       Japan           22-FEB-00    081200000012  taiki@lalalai.com                  182          71
  13 Yuki Sumi            Japan           01-SEP-03    081200000013  yuki@bkomachi.com                  157          46
  14 Minami Kotobuki      Japan           18-AUG-02    081200000014  minami@agency.com                  168          54
  15 Pieyon               Japan           05-MAY-95    081200000015  pieyon@fitness.com                 183          80

15 rows selected.

SQL> spool off
