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
    - Ena proti mnogo   [1:M] -> Primer: (1) Work email : (1) Zaposleni,
    - Mnogo proti ena   [M:1] -> Primer: (M) Zaposleni : (1) Marketing,
    - Mnogo proti mnogo [N:M] -> Primer: (N) Študenti  : (M) Predmeti

= Podatek in informacija
*Podatek*
Podatek je predstavitev dejstva, koncepta na formalen nacin (ansi, iso). Je poljubna predstavitev s pomocjo simbolov ali analognih velicin, ki ji je pripisan, ali se ji lahko pripise pomen. Podatki so prazaprav le stevila, s katerimi predstavimo neko dejstvo v racunalniku. To so lahko znaki, stevila... Sam podatek pa nam ne pove veliko. *Ko podatku dodamo pomen, dobimo informacijo*

*Informacija*
Informacija je pomen, ki ga clovek pripise podatkom.

== Vrednost informacije
- Informacijsko vrednost lahko dolocimo kot vrednost spremembe v obnasanju prejemnika, zmanjsano za stroske pridobitve informacije.
- Vrednost informacije se s casom manjsa
- Pravocasnost da se na njeni osnovi dobro odlocimo $arrow.r$ visoka vrednost
- Prepozna $arrow.r$ zelo nizka ali nic.
- Odvisna je tudi od kakovosti.

== Kolicina informacije
Informacije je merljiva kolicina - osnovna enota: bit
Informacija odstrani doloceno stopnjo neznanja

Osnovna kolicina informacije - bit:
- 1bit $arrow.r$ 2 stanji
- 2bit $arrow.r$ 4 stanji
- 3bit $arrow.r$ 8 stanji
- 4bit $arrow.r$ 16 stanji - nibble

qbits

// #table(
//   columns: (auto, auto, auto, auto, auto, auto),
//   [], [], [], [], [], [],
//   [], [], [], [], [], [],
//   [], [], [], [], [], [],
//   [], [], [], [], [], [],
//   [], [], [], [], [], [],
//   [], [], [], [], [], [],
// )
//
// #table(
//   columns: (auto, auto),
//   [], [],
//   [], [],
//   [], [],
//   [], [],
//   [], [],
//   [], [],
// )

== Kakovost informacije
Kakovost informacije je odvisna od:
- Dostopnost - definition,
- Tocnost - definition,
- Pravocasnos - definitiont
- Popolnost - definition,
- Zgoscenost - definition,
- Ustreznost - definition,
- Razumljivost - definition,
- Objektivnost - definition.

= Podatkovna baza
Podatkovna baza je model okolja, ki sluzi kot osnova za sprejemanje odlocitev in izvajanje akcij.
Znacilnosti:
- je organizirana zbirka podatkov
- je integralni del vsake poslovne aplikacije ali informacijskega sistema
- obsezna shramba podatkov, ki jo lahko hkrati uporablja vec uporabnikov
- namesto neurejene mnozice datotek so vsi podatki shranjeni na enem mestu
- minimizirano podvajanje podatkov
- poleg podatkov vsebuje tudi njihove opise - metapodatki (podatki o podatkih)

Podatkovna baza je nacrtovana in zgrajena z nekim namenom in skladno s tem odraza dolocen vidik realnega sveta oziroma hrani le tiste podatke, ki so za doloceno domeno pomembni.

== Upravljanje podatkovne baze
*Upravljanje podatkovne baze vkljucuje:*
+ Zagotavljanje razpolozljivosti podatkov
+ Zagotavljanje celovitosti podatkov
+ Zagotavljanje zaupnosti podatkov

== Arhitektura podatkovne baze
V poslovnih sistemih zaposleni uporabljajo poslovni informacijski sistem le z vidika opravljanja svojih delovnih funkcij. Le v manjsih poslovnih okoljih morajo uporabljati celoten informacijski sistem (ki je v teh primerih nekoliko preprostejsi).

Arhitektura zbirke podatkov predstavlja ralicne nivoje abstrakcije podatkov.

*Tri-nivojska arhitektura:*
- Zunanji nivo
- Konceptualni nivo
- Notranji nivo

*PB omogoca podatkovno neodvisnost*

Programi so neodvisni od fizicnega nacina shranjevanja in strukturiranja podatkov v PB. Da bi dosegli podatkovno neodvisnost podatke v PB opisemo na treh ravneh:
+ Zunanja shema - se uporablja za dostop podatkov, ki je prilagojen dolocenemu uporabniku ali skupini uporabnikov. Vsaka zunanja shema se sestoji iz enega ali vec pogledov (views). Pogled je logicna tabela, ki ne obstaja v fizicni podatkovni bazi.
+ Konceptualna ali logicna shema - opisuje podatke z vidika podatkovnega modela, ki ga PB uporablja. Npr. podatki o entitetnih tipih (profesor, student, predmet, predavalnica, ...) in povezavah (predava, poslusa...).
+ Fizicna (notranja) shema - fizicna shema podaja podrobnosti o shranjevanju podatkov. Predstavi, kako so podatki iz konceptualne sheme dejansko shranjeni (npr. na disku), kako so shranjeni indeksi...

== Podatkovna neodvisnost
Poznamo dve vrsti podatkovne neodvisnosi:
- *Fizicno neodvisnost*
- *Logicno neodvisnost*

=== Fizicna neodvisnost
konceptualna shema zagotavlja fizicno podatkovno neodvisnost, saj skrije podrobnosti o tem, kako so podatki dejansko shranjeni na disku, o strukturi datotek in o indeksih. Dokler ostaja konceptualna shema nespremenjena, spremembe na fizicnem nivoju ne vplivajo pa programe, ki podatke uporabljajo. Lahko pa spremembe vplivajo na ucinkovitost.

=== Logicna podatkovna neodvisnost
Logicna neodvisnost zagotavlja...

== PB v poslovnem svetu
V poslovnem svetu se PB uporabljajo predvsem z dvema namenoma:
+ za hranjenje transakcijskih podatkov, ki se uporabljajo pri izvajanju razlicnih poslovnih procesov
+ za upravljanje poslovnega sistema

== SUPB
shranjevanje podatkov v datoteke direktno na disk - slabosti:
- vsaka aplikacija je morala vsebovati tudi funkcije, ki jih danes opravlja supb,
- vzdrzevanje taksnih aplikacij je bilo zahtevno, vsebovale so veliko vrstic kode,
- spreminjanje podatkov struktur je bilo zahtevno in zamudno,
- pogosto aplikacije niso imele implementirane varnosti,

=== Funkcije SUPB
+ shranjevanje, pridobivanje in spreminjanje podatkov - definition,
+ dostopnost kataloga PB - definition,
+ Podpora transakcijam - definition,
+ Mehanizem za socasni dostop do PB - definition,
+ Obnavljanje PB po nesrecah - definition,
+ Auth - kontrola dostopa - definition,

