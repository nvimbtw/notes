= Uvod
== Gradivo
- #link("https://www.yumpu.com/xx/document/read/65267553/nacrtovanje-in-postavitev-podatkovnih-baz-2017")[
    "Načrtovanje in postavitev podatkovnih baz" - Andreja Šet,
  ]
- #link("https://www.w3schools.com")[
    "SQL Tutorial" - W3Schools,
  ]
- #link("https://www.sqltutorial.org/")[
    "SQL Tutorial" - sqltutorial.org
  ]

== Orodja
- MySQL Server 8.0 Community Oracle,
- MySQL Workbench 8.0

== Osnovni pojmi
=== Podatkovna baza (Database)
- Podatkovna baza predstavlja strukturirano shrambo medsebojno povezanih podatkov,
- Omogoča učinkovito shranjevanje, iskanje in vzdrževanje podatkov
- Sama po sebi ne izvaja operacij, vendar deluje kot pasivna shramba podatkov, ki čaka na ukaze sistema za upravljanje. Brez SUPB je baza nedostopna za aplikacije in uporabnike.

=== SUPB (Sistem za Upravljanje s Podatkovnimi Bazami)
- Aplikacija za upravljanje podatkovne baze,
- Zagotavlja vstavljanje, brisanje, posodabljanje in izvajanje poizvedb
- Primeri so:
  - MySQL
  - PostgreSQL
  - Oracle
  - Microsoft SQL Server
  - IBM DB2
  - Firebird

=== Entiteta
- je neodvisni podatkovni objekt iz realnega sveta,
- nosilec podatkov,
- lastnosti opisane z atributi: identifikator + opisni atributi -> Primer: Janez Novak,
- Primeri:
  - Janez Novak,
  - Remembrance of Earth's Past - Cixin Liu,
  - A8 - Audi,

=== Entitetni tip
- Abstraktna predstavitev entitet z enakimi atributi,
- Definira šablono / razred za vse entitete,
- Primeri:
  - Person,
  - Book,
  - Car,

=== Razmerje/relacija
- je povezava med dvema ali več entitetami,
- ER model $arrow.r$ Razmerje,
- Relacijski model (beri: "tabela") $arrow.r$ Relacija,
- *Vrste relacij:*
  - Ena proti mnogo   [1:M] $arrow.r$ Primer: (1) Work email : (1) Zaposleni,
  - Mnogo proti ena   [M:1] $arrow.r$ Primer: (M) Zaposleni  : (1) Marketing,
  - Mnogo proti mnogo [N:M] $arrow.r$ Primer: (N) Študenti   : (M) Predmeti

#pagebreak()
