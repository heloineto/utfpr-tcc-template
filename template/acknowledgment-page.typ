#let acknowledgment-page(body) = {
  align(center, text(weight: "bold", "AGRADECIMENTOS"))
  v(30pt)

  text(weight: "regular")[
    #set align(left)
    #set par(
      justify: true,
      first-line-indent: 1.25cm,
      leading: 1em
    )

    #body
  ]

  pagebreak()
}