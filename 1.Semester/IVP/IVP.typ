#set heading(numbering: "1.")

#set page(
  margin: 2cm,
  fill: rgb("#1e1e2e"),
)

#set text(
  font: "JetBrainsMono NF",
  size: 9pt,
  fill: rgb("#cdd6f4"),
)

#show heading.where(level: 1): set text(
  fill: rgb("#89dceb"),
  size: 16pt,
  weight: "bold",
)

#show heading.where(level: 2): set text(
  fill: rgb("#74c7ec"),
  size: 14pt,
  weight: "bold",
)

#show heading.where(level: 3): set text(
  fill: rgb("#89b4fa"),
  size: 12pt,
  weight: "semibold",
)

#show heading.where(level: 4): set text(
  fill: rgb("#b4befe"),
  size: 11pt,
  weight: "semibold",
)

#show heading.where(level: 5): set text(
  fill: rgb("#cba6f7"),
  size: 9pt,
  weight: "medium",
)


#show raw.where(block: true): it => block(
  fill: rgb("#11111b"),
  inset: 8pt,
  radius: 4pt,
  width: 100%,
  stroke: none,
  [
    #set text(fill: rgb("#cdd6f4"))
    #it
  ],
)

#align(center + horizon)[
  #text(fill: rgb("#89dceb"), size: 24pt, weight: "bold")[Informatika v podjetju]
  #linebreak()
  #linebreak()
  #text(fill: rgb("#74c7ec"), size: 18pt, weight: "semibold")[Zapiski iz predavanj]
  #linebreak()
  #linebreak()
  #text(fill: rgb("#89b4fa"), size: 14pt, weight: "semibold")[Tadej Gungl, 2025]
]

#pagebreak()

#outline(
  title: "Kazalo vsebine",
  indent: 2em,
)

#pagebreak()

#set page(
  header: context {
    text(1em, fill: rgb("#cdd6f4"))[Zbirke podatkov 1]
    h(1fr)
    text(1em, fill: rgb("#74c7ec"))[Tadej Gungl, 2025]
    line(length: 100%, stroke: (paint: rgb("#cdd6f4"), thickness: 1pt))
  },
  footer: context {
    align(center)[
      #counter(page).display()
    ]
  },
)

#include "1_uvod/uvod.typ"
#include "2_informatika/informatika.typ"
#include "kolokvij1/kolokvij1.typ"
