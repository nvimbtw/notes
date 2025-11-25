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
  radius: 2pt,
  width: 100%,
  stroke: none,
  [
    #set text(fill: rgb("#cdd6f4"))
    #it
  ],
)

// Decorative background shapes - Diamonds
#place(top + right, dx: 5cm, dy: -4cm)[
  #rotate(45deg)[
    #rect(width: 12cm, height: 12cm, stroke: (paint: rgb("#b4befe"), thickness: 3pt))
  ]
]

#place(bottom + left, dx: -8cm, dy: 5cm)[
  #rotate(45deg)[
    #rect(width: 16cm, height: 16cm, fill: rgb("#313244"))
  ]
]

#place(top + left, dx: 15%, dy: 20%)[
  #rotate(45deg)[
    #rect(width: 2.5cm, height: 2.5cm, stroke: (paint: rgb("#45475a"), thickness: 2pt))
  ]
]

#place(bottom + right, dx: -15%, dy: -25%)[
  #rotate(45deg)[
    #rect(width: 1.5cm, height: 1.5cm, fill: rgb("#b4befe"))
  ]
]

#place(top + left, dx: 60%, dy: 10%)[
  #rotate(45deg)[
    #rect(width: 1cm, height: 1cm, stroke: (paint: rgb("#89dceb"), thickness: 1.5pt))
  ]
]

#align(center + horizon)[
  #text(fill: rgb("#89dceb"), size: 32pt, weight: "bold")[Zbirke podatkov 1]
  #linebreak()
  #v(1em)
  #text(fill: rgb("#74c7ec"), size: 20pt, weight: "semibold")[Zapiski iz predavanj]
]

#align(bottom + left)[
  #grid(
    columns: (auto, auto),
    column-gutter: 1em,
    row-gutter: 0.8em,
    text(fill: rgb("#a6adc8"), weight: "bold")[Študent:], text(fill: rgb("#cdd6f4"))[Tadej Gungl],
    text(fill: rgb("#a6adc8"), weight: "bold")[Profesor:], text(fill: rgb("#cdd6f4"))[Matej Horvat],
    text(fill: rgb("#a6adc8"), weight: "bold")[Šola:], text(fill: rgb("#cdd6f4"))[VSŠ L.I.V.E],
    text(fill: rgb("#a6adc8"), weight: "bold")[Semester:], text(fill: rgb("#cdd6f4"))[1. semester],
    text(fill: rgb("#a6adc8"), weight: "bold")[Šolsko leto:], text(fill: rgb("#cdd6f4"))[2025/26],
  )
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

#include "1_info/info.typ"
#include "2_uvod/uvod.typ"
#include "3_podatek_in_informacija/podatek_in_informacija.typ"
#include "4_podatkovna_baza/podatkovna_baza.typ"
#include "5_SUPB/SUPB.typ"
#include "6_normalizacija/normalizacija.typ"
#include "7_relacijska_algebra/relacijska_algebra.typ"
#include "8_jezik_SQL/jezik_SQL.typ"

#pagebreak()

#set page(header: none, footer: none)

// Decorative background shapes - Diamonds
#place(bottom + right, dx: 8cm, dy: 8cm)[
  #rotate(45deg)[
    #rect(width: 16cm, height: 16cm, stroke: (paint: rgb("#313244"), thickness: 4pt))
  ]
]

#place(top + left, dx: -5cm, dy: -5cm)[
  #rotate(45deg)[
    #rect(width: 10cm, height: 10cm, fill: rgb("#313244"))
  ]
]

#place(top + right, dx: -15%, dy: 20%)[
  #rotate(45deg)[
    #rect(width: 2cm, height: 2cm, stroke: (paint: rgb("#b4befe"), thickness: 2pt))
  ]
]

#place(bottom + left, dx: 20%, dy: -15%)[
  #rotate(45deg)[
    #rect(width: 1.5cm, height: 1.5cm, fill: rgb("#89dceb"))
  ]
]

#align(center + horizon)[
  #text(fill: rgb("#cba6f7"), size: 32pt, weight: "bold")[Konec]
  #v(1cm)
  #line(length: 4cm, stroke: (paint: rgb("#7f849c"), thickness: 1pt))
  #v(1cm)
  #text(fill: rgb("#cdd6f4"), size: 12pt)[Zbirke podatkov 1]
  #linebreak()
  #text(fill: rgb("#a6adc8"), size: 10pt)[Tadej Gungl, 2025]
]
