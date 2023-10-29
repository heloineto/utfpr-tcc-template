#let title-page(
  title: "",
  authors: (),
  city: "",
  year: "",
  english-title: "",
  advisor: "",
  goal: []
) = {
  [
    #set align(center)
    #set text(weight: "bold")

    #block(
      width: 100%,
      height: 10em,
      (authors.map(author => upper(author)).join("\n"))
    )
    #block(
      width: 100%,
      height: 6em,
      upper(title)
    )
    #block(
      width: 100%,
      height: 5em,
      english-title
    )

    #align(right)[
      #block(width: 52.5%)[
        #set text(size: 10pt, weight: "regular")
        #set align(left)
        #set par(justify: true)

        #goal
        #linebreak()
        #advisor
      ]
    ]

    #align(bottom)[
      #upper(city)
      #linebreak()
      #year
    ]
  ]

  pagebreak()
}