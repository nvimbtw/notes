= Jezik SQL
SQL (izgovorjeno sequel) je programski jezik, ki ga uporabljamo za kreiranje in spreminjanje podatkovnih baz, ter dodajanje in spreminjanje podatkov v bazah. Delimo ga na:
- DDL (Data Definition Language)
  - create
  - alter
  - drop
- DML (Data Manipulation Language)
  - select
  - insert
  - update
  - delete
- DCL (Data Control Language)
  - grant
  - revoke
  - set
- TCL (Transaction Control Language)
  - begin
  - commit
  - rollback

== DDL
=== CREATE DATABASE
```sql
CREATE DATABASE IF NOT EXISTS college
CHARACTER SET utf8mb4
COLLATE utf8mb4_slovenian_ci;
```

=== CREATE TABLE
Z ukazom CREATE TABLE definiramo tabelo in njene stolpce.

```sql
CREATE TABLE IF NOT EXISTS college.students (
  ID INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);
```

Dodatne vrednosti, ki jih lahko dodamo v CREATE TABLE:
- NOT NULL,
- UNIQUE,
- DEFAULT,
- PRIMARY KEY,
- CHECK,
- GENERATED, VIRTUAL, COMMENT...

=== ALTER TABLE
Z ukazom ALTER TABLE spreminjamo stolpce v tabeli. Lahko dodajamo, brišemo ali spreminjamo stolpce.

```sql
ALTER TABLE college.students
ADD COLUMN gender VARCHAR(255) NOT NULL DEFAULT 'male';
```

== Osnovni podatkovni tipi
=== Številski
#table(
  columns: (auto, auto),
  fill: rgb("#1e1e2e"),
  [*Podatkovni tip*], [*Opis vrednosti*],
  [BIT], [0, 1],
  [TINYINT], [0 do 255 ali -128 do 127],
  [SMALLINT], [0 do 65535 ali -32768 do 32767],
  [MEDIUMINT], [0 do 16777215 ali -8388608 do 8388607],
  [INT], [0 do 4294967295 ali -2147483648 to 2147483647],
  [BIGINT], [0 do 18446744073709551615 ali -9223372036854775808 do 9223372036854775807],
  [DECIMAL(m,d)], [-9999999999999999999999999999 do 9999999999999999999999999999],
  [FLOAT], [-3.402823466E+38 do 3.402823466E+38],
  [SERIAL], [BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE],
)

Dodatni tipi, ki jih lahko definiramo:
- Unsigned,
- Auto Increment

=== Časovni
#table(
  columns: (auto, auto),
  fill: rgb("#1e1e2e"),
  [*Podatkovni tip*], [*Opis vrednosti*],
  [DATE], [YYYY-MM-DD],
  [DATETIME], [YYYY-MM-DD HH:MM:SS],
  [TIMESTAMP], [YYYY-MM-DD HH:MM:SS.mmm],
  [TIME], [HH:MM:SS],
  [YEAR], [YYYY],
)

=== Veliki objekti

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,
  [
    Binarni
    #table(
      columns: (1fr, 1fr),
      fill: rgb("#1e1e2e"),
      align: horizon,
      [*Podatkovni tip*], [*Opis vrednosti*],
      [BLOB], [binary data],
      [BINARY], [binary data],
      [VARBINARY(n)], [binary data],
    )
  ],
  [
    Besedilni
    #table(
      columns: (1fr, 1fr),
      fill: rgb("#1e1e2e"),
      align: horizon,
      [*Podatkovni tip*], [*Opis vrednosti*],
      [CHAR(n)], [string],
      [VARCHAR(n)], [string],
      [TINYTEXT], [string],
      [TEXT], [string],
      [MEDIUMTEXT], [string],
      [LONGTEXT], [string],
    )
  ],
)

#pagebreak()
