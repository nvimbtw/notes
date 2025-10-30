= SUPB
- *shranjevanje podatkov v datoteke direktno na disk - slabosti:*
  - vsaka aplikacija je morala vsebovati tudi funkcije, ki jih danes opravlja supb,
  - vzdrževanje takšnih aplikacij je bilo zahtevno, vsebovale so veliko vrstic kode,
  - spreminjanje podatkov struktur je bilo zahtevno in zamudno,
  - pogosto aplikacije niso imele implementirane varnosti,
- *Prednosti SUPB:*
  - Neodvisnost podatkov: Spremembe v strukturi podatkov (npr. dodajanje stolpcev) ne zahtevajo sprememb v aplikacijski kodi, kar olajša razvoj in vzdrževanje.,
  - Centralizirano upravljanje: Podatki so shranjeni na enem mestu, kar zmanjša ponavljanje (redundanco), izboljša konsistenco in olajša upravljanje celotne baze.,
  - Sočasni dostop in nadzor konkurence: Omogoča varen dostop več uporabnikom hkrati z mehanizmi zaklepanja, ki preprečujejo konflikte in zagotavljajo pravilnost podatkov.,
  - Vgrajena varnost: Vključuje avtentikacijo, avtorizacijo in nadzor dostopa, kar ščiti podatke pred nepooblaščenim dostopom ali spremembami.,
  - Podpora za integriteto in validacijo: Zagotavlja pravila (omejitve) za preverjanje pravilnosti podatkov, kot so unikatnost ali omejeni vrednosti, kar preprečuje napake.,
  - Avtomatska obnova in rezervne kopije: Omogoča hitro obnovitev po izpadu ali napaki z uporabo dnevnikov in kopij, kar zmanjša izgubo podatkov.,
  - Učinkovito pridobivanje podatkov: Uporablja poizvedbe (npr. SQL) in optimizacijo za hitro iskanje in analizo velikih količin podatkov brez ročnega brskanja po datotekah.

== Funkcije SUPB
+ shranjevanje, pridobivanje in spreminjanje podatkov - SUPB omogoča varno shranjevanje podatkov v strukturirani obliki, njihovo hitro pridobivanje po zahtevah in enostavno spreminjanje za posodobitve ali popravke.
+ dostopnost kataloga PB - SUPB zagotavlja enostaven dostop do kataloga podatkovne baze, ki vsebuje metapodatke o tabelah, indeksih in drugih strukturah za učinkovito upravljanje.
+ Podpora transakcijam - SUPB podpira transakcije, ki zagotavljajo zanesljivo obdelavo operacij z lastnostmi ACID (atomarnost, skladnost, izolacija, trajnost), da se izognejo delnim spremembam.
+ Mehanizem za sočasni dostop do PB - SUPB upravlja sočasni dostop več uporabnikov z mehanizmi, kot so zaklepanje in nadzor konkurence, da prepreči konflikte in zagotovi pravilnost podatkov.
+ Obnavljanje PB po nesrečah - SUPB omogoča samodejno obnovitev podatkovne baze po izpadu ali napaki z uporabo dnevnikov in rezervnih kopij, da se vrne v skladno stanje.
+ Auth - SUPB izvaja avtentikacijo uporabnikov in avtorizacijo dostopa, da omeji pravice do branja, pisanja ali izvajanja operacij samo na pooblaščene osebe.

#pagebreak()
