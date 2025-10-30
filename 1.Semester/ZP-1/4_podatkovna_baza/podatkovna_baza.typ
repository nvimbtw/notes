= Podatkovna baza
Podatkovna baza je model okolja, ki služi kot osnova za sprejemanje odločitev in izvajanje akcij.

== Značilnosti podatkovne baze
- je organizirana zbirka podatkov
- je integralni del vsake poslovne aplikacije ali informacijskega sistema
- obsežna shramba podatkov, ki jo lahko hkrati uporablja več uporabnikov
- namesto neurejene množice datotek so vsi podatki shranjeni na enem mestu
- minimizirano podvajanje podatkov
- poleg podatkov vsebuje tudi njihove opise - metapodatki (podatki o podatkih)

== Upravljanje podatkovne baze
=== Zagotavljanje razpoložljivosti podatkov
- Razpoložljivost (ang.: Availability) pomeni *učinkovit, sočasen dostop vseh uporabnikov* do podatkov, kadarkoli jih pri svojem delu potrebujejo.
- Med uporabnike podatkovne baze poleg *končnih uporabnikov* štejemo tudi *razvijalce aplikacij, skrbnika / administratorja in uporabniške programe.*
- Podatki morajo biti razpoložljivi in dostopni tudi v prihodnje. Podatkovno bazo je treba prilagajati poslovnim zahtevam in posodabljati *infrastrukturo za hranjenje podatkov.*

=== Zagotavljanje celovitosti podatkov
- Celovitost ali integriteta (ang.: Integrity) podatkov pomeni, da so *konsistentni navznoter in z zunanjim svetom.*
- Širše lahko pri integriteti govorimo tudi o kvaliteti podatkov, ki jih podatkovna baza vsebuje. Ti so pravočasni, popolni in izvirajo iz zanesljivih virov.
- Mehanizmi za zagotavljanje celovitosti podatkov:
  - *preverjanje vhodnih podatkov,*
  - *obnavljanje podatkovne baze,*
  - *nadzor nad sočasnim dostopom*

=== Zagotavljanje zaupnosti podatkov
- Mehanizmi za upravljanje dostopa (ang.: Access control) uporabnikom omogočajo dostop le do tistih podatkov, ki jih glede na svojo vlogo potrebujejo - potreba po vedenju (ang.: Need to know).
- Pri tem se določi tudi vrsta dostopa (branje, spreminjanje, brisanje, spreminjanje strukture...).
- Upravljanje z pravicami dostopa je ena ključnih nalog administratorja podatkovne baze.

== Arhitektura podatkovne baze
V poslovnih sistemih zaposleni uporabljajo poslovni informacijski sistem le z vidika opravljanja svojih delovnih funkcij. Le v manjših poslovnih okoljih morajo uporabljati celoten informacijski sistem (ki je v teh primerih nekoliko preprostejši).

Arhitektura zbirke podatkov predstavlja ralične nivoje abstrakcije podatkov.

*Tri-nivojska arhitektura:*
- Zunanji nivo
- Konceptualni nivo
- Notranji nivo

*PB omogoča podatkovno neodvisnost*

Programi so neodvisni od fizičnega načina shranjevanja in strukturiranja podatkov v PB. Da bi dosegli podatkovno neodvisnost podatke v PB opišemo na treh ravneh:
+ Zunanja shema - se uporablja za dostop podatkov, ki je prilagojen določenemu uporabniku ali skupini uporabnikov. Vsaka zunanja shema se sestoji iz enega ali več pogledov (views). Pogled je logična tabela, ki ne obstaja v fizični podatkovni bazi.
+ Konceptualna ali logična shema - opisuje podatke z vidika podatkovnega modela, ki ga PB uporablja. Npr. podatki o entitetnih tipih (profesor, študent, predmet, predavalnica, ...) in povezavah (predava, posluša...).
+ Fizična (notranja) shema - fizična shema podaja podrobnosti o shranjevanju podatkov. Predstavi, kako so podatki iz konceptualne sheme dejansko shranjeni (npr. na disku), kako so shranjeni indeksi...

#image("../media/arhitektura-podatkovne-baze.png")

== Podatkovna neodvisnost
Poznamo dve vrsti podatkovne neodvisnosi:
- *Fizično neodvisnost*
- *Logično neodvisnost*

=== Fizična neodvisnost
konceptualna shema zagotavlja fizično podatkovno neodvisnost, saj skrije podrobnosti o tem, kako so podatki dejansko shranjeni na disku, o strukturi datotek in o indeksih. Dokler ostaja konceptualna shema nespremenjena, spremembe na fizičnem nivoju ne vplivajo pa programe, ki podatke uporabljajo. Lahko pa spremembe vplivajo na učinkovitost.

=== Logična podatkovna neodvisnost
Logična neodvisnost zagotavlja, da spremembe v konceptualni shemi (npr. dodajanje novih tabel ali atributov) ne vplivajo na zunanje poglede ali aplikacijske programe. Zunanja shema skrije podrobnosti konceptualne sheme, zato dokler ostaja zunanja shema nespremenjena, spremembe na logičnem nivoju ne zahtevajo prilagajanja programov, ki podatke uporabljajo. To olajša razširjanje baze brez motenj obstoječih aplikacij.

== PB v poslovnem svetu
V poslovnem svetu se PB uporabljajo predvsem z dvema namenoma:
+ za hranjenje transakcijskih podatkov, ki se uporabljajo pri izvajanju različnih poslovnih procesov
+ za upravljanje poslovnega sistema

#pagebreak()

