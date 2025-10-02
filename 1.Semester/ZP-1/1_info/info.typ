#set align(center)
= Zbirke Podatkov 1 (ZP-1)

#set align(left)
// #grid(
//   columns: (1fr, 1fr),
//   gutter: 1em,
//   ```sql
//   SELECT *
//   FROM students
//   INNER JOIN grades ON students.id = grades.id
//   WHERE students.name = 'nvimbtw';
//   ```,
//
//   table(
//     columns: (auto, auto, auto, auto),
//     align: (center, left, center, center),
//     [*id*], [*name*], [*grade*], [*class*],
//     [0], [nvimbtw], [7], [1],
//   ),
// )

== Predavanja in vaje
- Število kontaktnih ur: 84 ur (36 ur predavanj, 48 ur vaj).
- Število ur samostojnega dela: 126 ur (36 študij literature, 42 ur vaj, 48 ur seminarska naloga).
- Skupaj 210 ur dela - 7 KT.
- Obvezna je vsaj *80%* prisotnost, izdelava in predstavidev *projektne naloge* ter *pisni izpit*.

== Ocena
Ocena je sestavljena iz *vaj + projektne naloge (50%)* in *pisnega izpita (50%)*
+ Opravljene vse vaje (vse vaje morajo bit oddane do roka) - *25%*
+ Projektna naloga (Podatkovna baza) - *25%*
  - načrtovanje,
  - ER diagram,
  - skripte,
  - poizvedbe,
  - Zagovor,
  - Osnovna dokumentacija
+ Pisni izpit / Trije kolokviji - *50%*

== Projektna naloga
- Izdelava predvidoma med vajami; min. 5 tabel, normalizirana v vsaj 3. normalno obliko.
- Predloge, teme in področja objavljene na Teams; možna individualna izbira teme.
- Min. 10 strani; predstavitve zadnja dva tedna predavanj.
- *Vsebina:*
  - Opis procesa in ciljev naloge.
  - ER ali EER model (vsaj 4 entitetni tipi, vsak z vsaj 3 atributi; povezave).
  - SQL stavki za kreiranje tabel (CREATE).
  - SQL stavki za polnjenje tabel (vsaka tabela vsaj 5 vrstic).
  - SQL poizvedbe: 3x SELECT (vsaka s povezavo vsaj 3 tabel) + agregatne poizvedbe.
