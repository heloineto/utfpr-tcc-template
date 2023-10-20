#let months = (
  "janeiro",
  "fevereiro",
  "março",
  "abril",
  "maio",
  "junho",
  "julho",
  "agosto",
  "setembro",
  "outubro",
  "novembro",
  "dezembro",
)


#let approver-field(
  name: "",
  title: "",
  institution: "",
) = {
  [
    #set text(size: 10pt, weight: "regular")

    #line(length: 100%, stroke: 0.5pt)
    #name
    #linebreak()
    #title
    #linebreak()
    #institution
  ]
}

#let approval-page(
  title: "",
  authors: (),
  city: "",
  year: "",
  goal: [],
  date: datetime.today()
) = {
  [
    #set align(center)
    #set text(weight: "bold")

    #block(
      width: 100%,
      height: 5em,
      (authors.map(author => upper(author)).join("\n"))
    )

    #block(
      width: 100%,
      height: 6em,
      upper(title)
    )

    #align(right)[
      #block(width: 52.5%)[
        #set text(size: 10pt, weight: "regular")
        #set align(left)
        #set par(justify: true)

        #goal
      ]
    ]

    #v(3em)

    #block(
      width: 100%,
      height: 4em,
    )[
      #set text(size: 10pt, weight: "regular")

      Data de aprovação: #date.display("[day]")/#months.at(date.month() - 1)/#date.display("[year]")

    ]

    #approver-field(
      name: "Nome completo e por extenso do Membro 1 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    )
    #v(3em)
    #approver-field(
      name: "Nome completo e por extenso do Membro 1 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    )
    #v(3em)
    #approver-field(
      name: "Nome completo e por extenso do Membro 1 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    )


    #align(bottom)[
      #upper(city)
      #linebreak()
      #year
    ]
  ]

  pagebreak()
}
