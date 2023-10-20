#let cover-page(
  institution: "",
  title: "",
  authors: (),
  city: "",
  year: "",
) = {
  [
    #set align(center)
    #set text(weight: "bold")

    #block(
      width: 100%,
      height: 6em,
      upper(institution)
    )
    #block(
      width: 100%,
      height: 11em,
      (authors.map(author => upper(author)).join("\n"))
    )
    #upper(title)
    #align(bottom)[
      #upper(city)
      #linebreak()
      #year
    ]
  ]

  pagebreak()
}