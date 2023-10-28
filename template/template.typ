#import "cover-page.typ": cover-page
#import "title-page.typ": title-page
#import "approval-page.typ": approval-page
#import "abstract-page.typ": abstract-page
#import "acknowledgment-page.typ": acknowledgment-page

#let base(
    weight: "regular",
    style: "normal",
    body
  ) = {
    text(
      12pt,
      weight: weight,
      style: style,
      body
    )
}

#let levelToStyle = (
  it => base(weight: "bold", upper(it)),
  it => base(weight: "bold", it),
  it => base(it),
  it => base(underline(it)),
  it => base(style: "italic", it),
)

#let headings(it) = {
  let index = it.level - 1
  let styleFn = levelToStyle.at(
    index,
    default: it => it
  )

  styleFn(it)
}

#let project(
  institution: "",
  title: "",
  authors: (),
  city: "",
  year: "",
  english-title: "",
  goal: [],
  adivsor: "",
  keywords: (),
  abstract: [],
  english-keywords: (),
  english-abstract: [],
  approval-date: datetime.today(),
  approvers: (),
  acknowledgment: [],
  body,
) = {
  set document(author: authors, title: title)
  set page(
    paper: "a4",
    margin: (
      top: 3cm,
      right: 2cm,
      bottom: 2cm,
      left: 3cm
    ),
  )
  set text(
    size: 12pt,
    lang: "pt",
    font: "Arial",
  )
  set cite(style: "chicago-author-date");

  set heading(numbering: "1.1")
  show heading: it => [
    #block(
      width: 100%,
      below: 20pt,
      above: 20pt,
      headings(it)
    )
    #par()[#text(size: 0pt)[#h(0.0em)]]
  ]

  cover-page(
    title: title,
    authors: authors,
    institution: institution,
    city: city,
    year: year,
  )

  title-page(
    title: title,
    authors: authors,
    english-title: english-title,
    city: city,
    year: year,
    goal: goal,
    adivsor: adivsor,
  )

  approval-page(
    title: title,
    authors: authors,
    city: city,
    year: year,
    goal: goal,
    approval-date: approval-date,
    approvers: approvers,
  )

  acknowledgment-page(acknowledgment)

  abstract-page(lang: "pt", keywords: keywords, abstract)
  abstract-page(lang: "en", keywords: english-keywords, english-abstract)

  show outline.entry: it => {
    let fields = it.fields()
    if it.body.at("children", default: false) == false {
      return [#box(width: 55pt) #it]
    }

    let (number, ..rest) = it.body.children

    // Stops recursion
    if number.func() == box {
      return it
    }

    let body = ((box(width: 55pt,number),) + rest).join()
    fields.at("body") = body
    outline.entry(..fields.values())
  }

  show outline.entry: it => [
    #box(headings(it), height: 1.25em)
  ]

  outline(
    depth: 5,
    title: [
      #set align(center)
      #block(width: 100%, "SUMÁRIO")
      #v(30pt)
    ]
  )

  pagebreak()

  outline(
    title: [
      #set align(center)
      #block(width: 100%, "LISTA DE FIGURAS")
      #v(30pt)
    ],
    target: figure.where(kind: image),
  )

  pagebreak()

  outline(
    title: [
      #set align(center)
      #block(width: 100%, "LISTA DE QUADROS")
      #v(30pt)
    ],
    target: figure.where(kind: "board"),
  )

  pagebreak()

  set page(numbering: "1", number-align: top + right)
  set par(
    justify: true,
    first-line-indent: 1.5cm,
    leading: 1em
  )
  show list: it => pad(x: 1.5cm + 0.75cm, it)
  show enum: it => pad(x: 1.5cm + 0.75cm, it)

  body

  pagebreak()

  show bibliography: it => [
    #show heading: it => align(center, text(size: 12pt, weight: "bold", it))
    #it
  ]

  bibliography(
    "../main.bib",
    style: "chicago-author-date",
    title: "REFERÊNCIAS"
  )
}

#let original-figure = figure;
#let figure = (
  content,
  placement: none,
  source: "",
  label: none,
  ..rest
) => [
  #set align(center)
  #set text(weight: "bold", size: 10pt)
  #set figure.caption(position: top, separator: " – ")
  #original-figure(
    content,
    ..rest
  ) #label
  Fonte: #source,
]