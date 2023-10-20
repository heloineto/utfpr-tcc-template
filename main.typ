#import "template/template.typ": *

#show: project.with(
  institution: "UNIVERSIDADE TECNOLÓGICA FEDERAL DO PARANÁ",
  authors: (
    "NOME COMPLETO E POR EXTENSO DO(A) AUTOR(A)",
  ),
  title: "O TÍTULO DEVE SER CLARO E PRECISO: SUBTÍTULO (SE HOUVER) DEVE SER PRECEDIDO DE DOIS PONTOS CONFIRMANDO SUA VINCULAÇÃO AO TÍTULO",
  english-title: "Put your english title here",
  city: "CIDADE",
  year: "ANO DA ENTREGA",
  goal: [
    Trabalho de conclusão de curso de graduação/Dissertação/Tese apresentada como requisito para obtenção do título de Bacharel/Licenciado/Tecnólogo/Mestre/Doutor em Nome do Curso/Programa da Universidade Tecnológica Federal do Paraná (UTFPR).
  ],
  adivsor: "Orientador(a): Nome completo e por extenso.",
  keywords: (
    "ferramenta",
    "trabalhos acadêmicos",
    "formatação",
    "editor de documentos",
    "desenvolvimento web",
  ),
  abstract: [
    Um dos desafios enfrentados pelos pesquisadores é a formatação de trabalhos acadêmicos, o que consome uma quantidade significativa de tempo e recursos (KHAN, 2018). A não conformidade com as diretrizes de formatação estabelecidas pelas instituições e revistas científicas pode resultar na rejeição dos trabalhos submetidos (ALI, 2010). Com o objetivo de solucionar esse problema, este trabalho propõe o desenvolvimento de um sistema que auxilie os escritores na redação de trabalhos científicos por meio de modelos de formatação predefinidos. Essa ferramenta garantirá o cumprimento de aspectos como margens, fontes e espaçamentos, além de automatizar tarefas repetitivas, como a criação de listas, sumário e referências. Dessa forma, espera-se reduzir o tempo gasto em revisões e aumentar a qualidade dos trabalhos. A implementação dessa ferramenta promoverá a produtividade dos escritores, uma vez que eles poderão direcionar seu tempo para a produção dos conteúdos, em oposição à formatação do documento. Para iniciar e demonstrar a eficácia do sistema proposto, será direcionado o foco em auxiliar os alunos dos cursos de graduação da UTFPR na escrita do Trabalho de Conclusão de Curso (TCC). Isso ocorrerá por meio da criação de modelos de formatação específicos para as diretrizes estabelecidas pela instituição, garantindo assim a conformidade dos trabalhos dos alunos com os requisitos exigidos.
  ],
  english-keywords: ("tool", "academic works", "formatting", "document editor", "web development"),
  english-abstract: [
    One of the challenges faced by researchers is the formatting of academic work, which consumes a significant amount of time and resources (KHAN, 2018). Non-compliance with the formatting guidelines established by institutions and scientific journals may result in the rejection of submitted works (ALI, 2010). With the aim of solving this problem, this work proposes the development of a system that assists researchers in writing scientific works through predefined formatting models. This tool will ensure compliance with aspects such as margins, fonts and spacing, in addition to automating repetitive tasks, such as creating lists, tables of contents and references. In this way, it is expected to reduce the time spent on revisions and increase the quality of the work. Implementing this tool will promote writers' productivity, as they will be able to direct their time to producing content, as opposed to formatting the document. To begin and demonstrate the effectiveness of the proposed system, the focus will be on assisting students on UTFPR undergraduate courses in writing their final paper. This will occur through the creation of specific formatting models for the guidelines established by the institution, thus ensuring that student work complies with the requirements.
  ],
  acknowledgment: [
    Agradeço principalmente aos meus pais, Heloi Júnior e Adriane Portela, pois, sem o suporte destes não seria possível a realização da minha graduação e o desenvolvimento deste trabalho de conclusão de curso.

    Agradeço também o Prof. MSc. Luiz Rafael Schmitke, pela idealização inicial desse trabalho e por sua orientação ao longo do mesmo.

    A Secretaria do Curso, pela cooperação e prestatividade.

    Enfim, a todos os meus colegas e professores, que contribuíram para minha formação acadêmica
  ]
)

= INTRODUÇÃO

Os autores de trabalhos científicos precisam seguir padrões para citação, estilo e formatação (TURABIAN, 2013). Segundo Watson (1992), à medida que os computadores se tornaram amplamente disponíveis, softwares de processamento de texto começaram a ser usados para escrever e editar documentos. Desde então, a preparação de documentos tem sido uma ferramenta cada vez mais importante.

A sofisticação destes programas aumentou ao longo dos anos, evoluindo de sistemas que se destinavam a produzir textos simples para ferramentas nas quais é possível especificar equações, tabelas, desenhos e outros componentes do documento. Os sistemas modernos aprimoram a facilidade com que estes componentes podem ser descritos, muitas vezes por meio de uma interface visual (FURUTA, 1992).

==	Objetivos

O objetivo geral deste trabalho consiste em desenvolver um sistema que auxilie na escrita de trabalhos científicos por meio de modelos de formatação predefinidos, inicialmente focado em auxiliar os alunos dos cursos de graduação da UTFPR na redação do Trabalho de Conclusão de Curso (TCC).

===	Objetivo Geral

O objetivo geral deste trabalho consiste em desenvolver um sistema que auxilie na escrita de trabalhos científicos por meio de modelos de formatação predefinidos, inicialmente focado em auxiliar os alunos dos cursos de graduação da UTFPR na redação do Trabalho de Conclusão de Curso (TCC).

===	Objetivos Específicos

Os objetivos específicos são:

- Avaliar as ferramentas de formatação atuais, categorizando os seus problemas e melhores recursos em sua relevância;
- Desenvolver a ferramenta de formatação proposta;
- Avaliar o uso da ferramenta com usuários.

+ Avaliar as ferramentas de formatação atuais, categorizando os seus problemas e melhores recursos em sua relevância;
+ Desenvolver a ferramenta de formatação proposta;
+ Avaliar o uso da ferramenta com usuários.

#let fig = (
  content,
  placement: none,
  caption: none,
  kind: auto,
  source: "",
) => [
  #set align(center)
  #set text(weight: "bold", size: 10pt)
  #set figure.caption(position: top, separator: " – ")
  #figure(
    content,
    caption: caption,
  ) <figure>
  Fonte: #source
]

// #show figure: (it) => [
//   #set align(center)
//   #set text(weight: "bold", size: 10pt)
//   #it.caption
//   #it.body
// ]

// #figure(
//   image("profile.jpg", width: 80%),
//   caption: [A curious figure.],
// ) <glacier>

#pagebreak()


#fig(
  image("profile.jpg", width: 80%),
  caption: "Foto de perfil",
  source: "Autoria própria (2023)"
)
