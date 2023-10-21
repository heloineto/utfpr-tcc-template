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
  adivsor: "Orientador(a): Nome completo e por extenso.",
  approval-date: datetime(day: 19, month: 9, year: 2023),
  approvers: (
    (
      name: "Nome completo e por extenso do Membro 1 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    ),
    (
      name: "Nome completo e por extenso do Membro 2 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    ),
    (
      name: "Nome completo e por extenso do Membro 3 (de acordo com o Currículo Lattes)",
      title: "Titulação (Especialização, Mestrado, Doutorado)",
      institution: "Nome completo e por extenso da instituição a qual possui vínculo",
    ),
  ),
  keywords: (
    "ferramenta",
    "trabalhos acadêmicos",
    "formatação",
    "editor de documentos",
    "desenvolvimento web",
  ),
  goal: [
    Trabalho de conclusão de curso de graduação/Dissertação/Tese apresentada como requisito para obtenção do título de Bacharel/Licenciado/Tecnólogo/Mestre/Doutor em Nome do Curso/Programa da Universidade Tecnológica Federal do Paraná (UTFPR).
  ],
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

Parte inicial do texto, na qual devem constar o tema e a delimitação do assunto tratado, objetivos da pesquisa e outros elementos necessários para situar o tema do trabalho. Após o início de uma seção, recomenda-se a inserção de um texto ou, no mínimo, uma nota explicativa sobre a seção iniciada. Evitar, por exemplo:

= INTRODUÇÃO
== Contextualização
=== Memorial da pesquisa


== Paginação

Todas as folhas do trabalho, a partir da folha de rosto, devem ser contadas sequencialmente, mas não numeradas. A numeração deve ser inserida à partir da primeira folha da parte textual (Introdução), em algarismos arábicos, no canto superior direito da folha. Havendo apêndices e anexos, as suas folhas devem ser paginadas de maneira contínua.

== Exemplos de utilização de numeração progressiva

Nos títulos com indicativo numérico não se utilizam pontos, hífen, travessão, ou qualquer sinal após o indicativo de seção ou de título.
A numeração progressiva para as seções do texto deve ser adotada para evidenciar a sistematização do conteúdo do trabalho.
Destacam-se gradativamente os títulos das seções, utilizando-se tipograficamente com recursos como letra maiúscula, negrito, itálico ou sublinhado.
No sumário, os títulos devem aparecer de forma idêntica ao texto.
Ver os exemplos na folha seguinte:

=	SEÇÃO PRIMÁRIA (CAIXA ALTA E NEGRITO)

As seções primárias devem iniciar sempre em páginas distintas. Entre uma seção e outra sempre haverá um texto.
Texto justificado, com recuo especial na primeira linha de 1,5 cm. Não utilizar tab (1,25 cm). Os títulos das seções devem ser separados do texto que os precede por 1 (um) espaço (1,5 cm).

==	Seção secundária (negrito)

Texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto.

===	Seção terciária (sem negrito)

Texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto.

====	 Seção quaternária (sublinhado)

Texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto.

=====	Seção quinária (itálico)

Texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto, texto.

@figure

#let original-figure = figure;

#let figure = (
  content,
  placement: none,
  caption: none,
  kind: auto,
  source: "",
) => [
  #set align(center)
  #set text(weight: "bold", size: 10pt)
  #set figure.caption(position: top, separator: " – ")
  #original-figure(
    content,
    caption: caption,
  ) <figure>
  Fonte: #source
]

#pagebreak()

#figure(
  image("profile.jpg", width: 80%),
  caption: "Foto de perfil",
  source: "Autoria própria (2023)"
)
