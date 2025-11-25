= Relacijska algebra
Tabele so množice, na katerih lahko izvajamo matematične operacije.

== Osnove relacijske algebre
+ Projekcija *π*
+ Selekcija *σ*
+ Preimenovanje *ρ*
+ Unija *∪*
+ Presek *∩*
+ Razlika *-*
+ Kartezični produkt *×*
+ Stiki

Primer izpeljane operacije - Deljenje

=== Projekcija π - pi
Ohrani samo izbrane atribute (stolpce) iz tabele (relacije).

Primer - Tabela hlace:

$π_("znamka, vrsta")" (hlace)"$
```sql
SELECT znamka, vrsta FROM hlace;
```

=== Selekcija σ - sigma in logični operatorji
Ohrani samo vrstice iz tabele, ki izpolnjujejo pogoj.

$σ_("vrsta='športna'")" (hlace)"$

```sql
SELECT * FROM hlace WHERE vrsta = 'sportna';
```

Logični operatorji:
+ $∧$ - in
+ $∨$ - ali
+ $¬$ - ne

$σ_("vrsta='športna'∧ ¬(znamka='S.Oliver)'")" (hlace)"$

Primer z uporabo logičnih operatorjev (<> bi lahko zamenjali tudi z ¬=):

```sql
SELECT * FROM hlace WHERE vrsta = 'sportna' AND znamka <> 'S.Oliver';
```

=== Preimenovanje ρ
Preimenuje atribut ali tabelo.

Primeri:

$ρ_("znamka / firma")\(π_("znamka")" (hlace))"$

```sql
SELECT DISTINCT znamka AS firma FROM hlace;
```

$ρ_("kategorija, znamka / firma, vrsta")" (hlace")$

```sql
SELECT kategorija, znamka AS firma, vrsta FROM hlace;
```

$ρ_("Kavbojke(kategorija, znamka, vrsta)")" (hlace")$

```sql
SELECT kategorija, znamka AS firma, vrsta FROM hlace AS kavbojke
```

=== Unija ∪
Združitev dveh tabel

majice ∪ hlace

```sql
SELECT * FROM majice
UNION
SELECT * FROM hlace;
```

=== Presek ∩
Presek dveh tabel (npr. znamke, ki so v tabeli hlač in majic).

hlace ∩ majice

Oracle - intersect, v MySQL pa tega (neposredno) ni.

```sql
SELECT DISTINCT znamka FROM hlace WHERE IN (
  SELECT znamka FROM majice
);
```

=== Razlika -
Razlika med vrednostmi v dveh tabelah. Oracle podpira minus, MySQL pa neposredno ne.

```sql
SELECT id FROM t1 LEFT JOIN t2 USING (id) WHERE t2.id IS NULL;​
```

^ Vzamemo vse vrednosti v tabeli t1 (left join), ki niso v tabeli t2 (oz vse tiste kjer je vrednost t2 NULL)

#pagebreak()
