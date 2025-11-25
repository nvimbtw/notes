= SUPB
- Sistem za upravljanje podatkovnih baz (SUPB, ang.: Database management system) je programska oprema, ki omogoča obvladovanje velikih količin podatkov.
- Predstavlja vmesni člen med podatkovno bazo in aplikacijo
- Navadno do SUPBja dostopa le skrbnik podatkovne baze

== Primeri SUPB
- Oracle,
- Microsoft SQL Server,
- MySQL,
- PostgreSQL,
- Firebird,
- IBM DB2,
- Informix,
- SAP DB,
- Microsoft Access,

#image("../media/SUPB.png")

- *shranjevanje podatkov v datoteke direktno na disk - slabosti:*
  - vsaka aplikacija je morala vsebovati tudi funkcije, ki jih danes opravlja SUPB,
  - vzdrževanje takšnih aplikacij je bilo zahtevno, vsebovale so veliko vrstic kode,
  - spreminjanje podatkovnih struktur je bilo zahtevno in zamudno,
  - pogosto aplikacije niso imele implementirane varnosti,
- *Prednosti SUPB:*
  - Neodvisnost podatkov: Spremembe v strukturi podatkov (npr. dodajanje stolpcev) ne zahtevajo sprememb v aplikacijski kodi, kar olajša razvoj in vzdrževanje.,
  - Centralizirano upravljanje: Podatki so shranjeni na enem mestu, kar zmanjša ponavljanje (redundanco), izboljša konsistenco in olajša upravljanje celotne baze.,
  - Sočasni dostop in nadzor konkurence: Omogoča varen dostop več uporabnikom hkrati z mehanizmi zaklepanja, ki preprečujejo konflikte in zagotavljajo pravilnost podatkov.,
  - Vgrajena varnost: Vključuje avtentikacijo, avtorizacijo in nadzor dostopa, kar ščiti podatke pred nepooblaščenim dostopom ali spremembami.,
  - Podpora za integriteto in validacijo: Zagotavlja pravila (omejitve) za preverjanje pravilnosti podatkov, kot so unikatnost ali omejene vrednosti, kar preprečuje napake.,
  - Avtomatska obnova in rezervne kopije: Omogoča hitro obnovitev po izpadu ali napaki z uporabo dnevnikov in kopij, kar zmanjša izgubo podatkov.,
  - Učinkovito pridobivanje podatkov: Uporablja poizvedbe (npr. SQL) in optimizacijo za hitro iskanje in analizo velikih količin podatkov brez ročnega brskanja po datotekah.

== Funkcije SUPB
+ shranjevanje, pridobivanje in spreminjanje podatkov - SUPB omogoča varno shranjevanje podatkov v strukturirani obliki, njihovo hitro pridobivanje po zahtevah in enostavno spreminjanje za posodobitve ali popravke.
+ dostopnost kataloga PB - SUPB zagotavlja enostaven dostop do kataloga podatkovne baze, ki vsebuje metapodatke o tabelah, indeksih in drugih strukturah za učinkovito upravljanje.
+ Podpora transakcijam - SUPB podpira transakcije, ki zagotavljajo zanesljivo obdelavo operacij z lastnostmi ACID (atomarnost, skladnost, izolacija, trajnost), da se izognejo delnim spremembam.
+ Mehanizem za sočasni dostop do PB - SUPB upravlja sočasni dostop več uporabnikov z mehanizmi, kot so zaklepanje in nadzor konkurence, da prepreči konflikte in zagotovi pravilnost podatkov.
+ Obnavljanje PB po nesrečah - SUPB omogoča samodejno obnovitev podatkovne baze po izpadu ali napaki z uporabo dnevnikov in rezervnih kopij, da se vrne v skladno stanje.
+ Auth - SUPB izvaja avtentikacijo uporabnikov in avtorizacijo dostopa, da omeji pravice do branja, pisanja ali izvajanja operacij samo na pooblaščene osebe.

== Komponente okolja SUPB
Okolje SUPB predstavljajo strojna in programska oprema, podatki, postopki in ljudje.

=== Strojna oprema (Hardware)
Je odvisna od potreb poslovnega sistema in zmogljivosti, ki jih mora zagotavljati:
- količina podatkov,
- število uporabnikov,
- število transakcij,
- stopnja varnosti

Včasih za namestitev SUPB zadostuje že osebni računalnik, ponavadi pa ga namestimo na strežniški sistem.

=== Programska oprema (Software)
- Upravlja SUPB in ostalo programsko opremo, ki omogoča poizvedovanje po bazi,
- Ponavadi uporablja QBE ali SQL,
- Pomembna je tudi omrežna programska oprema, če bo SUPB deloval v omrežju.

=== Podatki
- S stališča uporabnika najpomembnejši del SUPB,
- Predstavljajo most med tehnološkimi in človeškimi komponentami,
- Sestavljajo jih operativni podatki in metapodatki.

=== Postopki (Procedures ali procedure)
- Obsegajo navodila za načrtovanje in uporabo podatkovne baze,
- načini prijave v SUPB,
- načini uporabe posameznih orodij,
- postopki za zagon in zaustavitev
- postopki za izdelave varnostnih kopij,
- postopki v primeru okvar,
- postopki za restavriranje podatkovne baze,
- postopki za spreminjanje strukture podatkovne baze.

=== Ljudje
- Uporabniki in skrbniki,
- analitiki in načrtovalci,
- razvijalci aplikacij, ki PB uporabljajo,
- končni uporabniki.

== Aplikacije v poslovnem okolju
Dandanes ni industrije, ki ne bi bila povezana z zbirkami podatkov.

Zbirke podatkov predstavljajo jedro IS (??) vsakega poslovnega sistema.

Uporabniki izpolnjujejo obrazce in poročila, za dodajanje, spreminjanje, poizvedovanje in brisanje.

Sodobne aplikacije, so razvite kot spletne aplikacije (spletne strani), pred tem pa so se uporabljale klasične aplikacije sistema odjemalec-strežnik.

Ker so dostopne preko spleta, niso potrebne posodobitve klientov, kar zmanjša stroške vzdrževanja.

== Prednosti SUPB
- Nadzor redundance (Nadzoruje, vendar ne odpravi v celoti),
- Celovitost (consistency)
- Ista količina podatkov nudi več informacij in delitev podatkov,
- Večja integriteta in varnost,
- Uveljavljanje standardov,
- Enostavnejše vzdrževanje,
- Prihranek denarja,
- Večja sočasnost,
- Večja dostopnost in odzivnost,
- Varnostne kopije,
- Večja produktivnost

== Slabosti SUPB
- Kompleksnost,
- Velikost,
- Visoka cena,
- Dodatni stroški za strojno opremo,
- Cena prehoda,
- Izvedba.

#pagebreak()
