#set page(
  paper: "a4",
  margin: (x: 23mm, y: 20mm),
  header: context if counter(page).get().first() > 1 {
    align(right, text(size: 8.5pt, fill: gray)[Quantum Mechanics · Chapter 2])
  },
  footer: context align(center, text(size: 8.5pt, fill: gray)[#counter(page).display()]),
)
#set text(font: "Noto Sans CJK SC", size: 10.5pt, lang: "zh")
#set par(leading: 0.72em)
#show heading.where(level: 1): it => block(above: 1.2em, below: 0.7em)[
  #set text(size: 15pt, weight: "bold")
  #it.body
]
#show heading.where(level: 2): it => block(above: 0.9em, below: 0.45em)[
  #set text(size: 11pt, weight: "bold")
  #it.body
]
#show math.equation: set block(above: 0.48em, below: 0.48em)

#align(center)[#text(size: 19pt, weight: "bold")[Quantum Mechanics, Chapter 2]]

#align(center)[Lin Hsuancheng]
