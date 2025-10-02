// Copy these into the file
// #set heading(numbering: "1.")
// #set page(
//   margin: 1.5cm,
//   fill: rgb("#1e1e2e"),
// )
// #set text(
//   font: "JetBrainsMono NF",
//   size: 11pt,
//   fill: rgb("#cdd6f4"),
// )
//
// #show heading.where(level: 1): set text(fill: rgb("#89dceb"), size: 20pt, weight: "bold")
// #show heading.where(level: 2): set text(fill: rgb("#74c7ec"), size: 16pt, weight: "bold")
// #show heading.where(level: 3): set text(fill: rgb("#89b4fa"), size: 14pt, weight: "semibold")
// #show heading.where(level: 4): set text(fill: rgb("#b4befe"), size: 12pt, weight: "semibold")
// #show heading.where(level: 5): set text(fill: rgb("#cba6f7"), size: 11pt, weight: "medium")
//
// #show raw.where(block: true): it => block(
//   fill: rgb("#11111b"),
//   inset: 8pt,
//   radius: 4pt,
//   width: 100%,
//   stroke: none,
//   [
//     #set text(fill: rgb("#cdd6f4"))
//     #it
//   ],
// )
//
// #show raw.where(block: false): it => rect(
//   fill: rgb("#11111b"),
//   inset: 8pt,
//   radius: 2pt,
//   stroke: none,
//   [
//     #set text(fill: rgb("#cdd6f4"))
//     #it
//   ],
// )
