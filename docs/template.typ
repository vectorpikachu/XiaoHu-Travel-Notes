// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project(title: "", authors: (), date: none, body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set heading(numbering: "1.1.1.1.")
  set text(font: ("Latin Modern Roman", "Source Han Serif SC"), lang: "en")
  show math.equation: set text(weight: 400)
  show raw: set text(font: ("ComicShannsMono Nerd Font", "LXGW WenKai Mono"))
  show link: set text(fill: rgb("#433af4"))

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  // Main body.
  set par(justify: true)

  body
}