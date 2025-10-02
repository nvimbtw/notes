= Uvod
*Gradivo:*
- #link("https://www.yumpu.com/xx/document/read/65267553/nacrtovanje-in-postavitev-podatkovnih-baz-2017")[
    "Načrtovanje in postavitev podatkovnih baz" - Andreja Šet,
  ]
- #link("https://www.w3schools.com")[
    "SQL Tutorial" - W3Schools,
  ]
- #link("https://www.sqltutorial.org/")[
    "SQL Tutorial" - sqltutorial.org
  ]

*Orodja:*
- MySQL Server 8.0 Community Oracle,
- MySQL Workbench 8.0

== Osnovni pojmi
+ *Podatkovna baza (Database):*
  - je strukturirana shramba med sebojno povezanih podatkov,
+ *SUPB (Sistem za Upravljanje s Podatkovnimi Bazami):*
  - je aplikacija za manipulacijo in upravljanje teh podatkov,
+ *Entiteta:*
  - je neodvisni podatkovni objekt iz realnega sveta,
  - nosilec podatkov,
  - lastnosti opisane z atributi: identifikator + opisni atributi -> Primer: Janez Novak,
+ *Entitetni tip:*
  - je abstraktna predstavitev entitet z enakimi atributi -> Primer: Osebe,
+ *Razmerje/relacija:*
  - je povezava med dvema ali več entitetami,
  - ER model -> Razmerje,
  - Relacijski model (beri: "tabela") -> Relacija,
  - *Vrste relacij:*
    - Ena proti mnogo   [1:M] -> Primer: (1) Marketing : (M) Zaposleni,
    - Mnogo proti ena   [M:1] -> Primer: (M) Zaposleni : (1) Marketing,
    - Mnogo proti mnogo [N:M] -> Primer: (N) Študenti  : (M) Predmeti
