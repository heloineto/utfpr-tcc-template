#let abstract-page(body, lang: "pt", keywords: ()) = {
  [
    #set align(center)
    #set text(weight: "bold")

    #(if lang == "pt" { "RESUMO" } else { "ABSTRACT" })
  ]

  v(30pt)

  [
    #set text(weight: "regular")
    #set align(left)
    #set par(justify: true)

    #body
  ]

  [
    #text(weight: "bold", if lang == "pt" { "Palavras-chave:" } else { "Keywords" }) #keywords.join("; ").
  ]

  pagebreak()
}