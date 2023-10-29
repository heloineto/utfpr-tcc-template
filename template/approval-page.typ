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
  degree: "",
  institution: "",
) = {
  [
    #set text(size: 10pt, weight: "regular")

    #line(length: 100%, stroke: 0.5pt)
    #name
    #linebreak()
    #degree
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
  approval-date: datetime.today(),
  approvers: (),
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

      Data de aprovação: #approval-date.display("[day]")/#months.at(approval-date.month() - 1)/#approval-date.display("[year]")

    ]

    #text(approvers.map(approver =>
      approver-field(
        name: approver.name,
        degree: approver.degree,
        institution: approver.institution,
      )
    ).join(v(3em)))

    #align(bottom)[
      #upper(city)
      #linebreak()
      #year
    ]
  ]

  pagebreak()
}
