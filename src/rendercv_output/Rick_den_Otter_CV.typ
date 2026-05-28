
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Rick den Otter"
#let locale-catalog-page-numbering-style = context { "Rick den Otter - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in May 2026"
#let locale-catalog-language = "en"
#let design-page-size = "a4"
#let design-colors-text = rgb(30, 38, 44)
#let design-colors-section-titles = rgb(33, 84, 87)
#let design-colors-last-updated-date-and-page-numbering = rgb(143, 143, 143)
#let design-colors-name = rgb(13, 71, 79)
#let design-colors-connections = rgb(82, 104, 112)
#let design-colors-links = rgb(15, 110, 100)
#let design-section-titles-font-family = "Raleway"
#let design-section-titles-bold = false
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-partial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "Open Sans"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "Raleway"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = false
#let design-header-small-caps-for-name = false
#let design-header-connections-font-family = "Raleway"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = left
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-nested-bullet = "-"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = false
#let design-links-underline = false
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-nested-bullet,
  spacing: design-highlights-vertical-space-between-highlights,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let bullet-entry(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: 0pt,
    indent: 0pt,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #if design-header-small-caps-for-name [
    #smallcaps(it.body)
  ] else [
    #it.body
  ]
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-partial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin - design-header-photo-width * 1.1
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

#two-col(
  left-column-width: design-header-photo-width * 1.1,
  right-column-width: 1fr,
  left-content: [
    #align(
      left + horizon,
      image("profile_picture.jpg", width: design-header-photo-width),
    )
  ],
  column-gutter: 0cm,
  right-content: [
= Rick den Otter

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Apeldoorn, the Netherlands],
  [#box(original-link("mailto:rickdotyt@gmail.com")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)rickdotyt\@gmail.com])],
  [#box(original-link("https://orcid.org/0009-0002-8852-1697")[#fa-icon("orcid", size: 0.9em) #h(0.05cm)0009-0002-8852-1697])],
  [#box(original-link("https://linkedin.com/in/rick-denotter")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)rick-denotter])],
  [#box(original-link("https://github.com/rickdott")[#fa-icon("github", size: 0.9em) #h(0.05cm)rickdott])],
)
#connections(connections-list)

  ],
)


== Education


// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[PhD]],
  middle-content: [
    #strong[Experimental Psychology, Utrecht University], Artificial Intelligence & Cognitive Neuroscience -- Utrecht, the Netherlands
  ],
  right-content: [
    May 2024 – present
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [My PhD is a continuation of my masters' thesis project, where I apply Hidden Multivariate Pattern analysis combined with deep spatiotemporal sequence models to decode cognitive operations from EEG at the trial level.])], column-gutter: 0cm)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[MSc]],
  middle-content: [
    #strong[Utrecht University], Artificial Intelligence -- Utrecht, the Netherlands
  ],
  right-content: [
    Feb 2022 – Feb 2024
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [I conducted my thesis at the department of Experimental Psychology \(Utrecht University\) on classifying cognitive processing operations from EEG using machine learning classifiers. During this thesis I was chosen to present my research at the NVP Dutch Society for Brain and Cognition Winter Conference. My thesis was awarded a grade of 8.9, with a 9.5 for both the result and the process.])], column-gutter: 0cm)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, YES DEGREE
#three-col-entry(
  left-column-width: 1cm,
  left-content: [#strong[BSc]],
  middle-content: [
    #strong[Hogeschool van Amsterdam], HBO-ICT Software Engineering -- Amsterdam, the Netherlands
  ],
  right-content: [
    Sept 2017 – June 2021
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Graduated Cum Laude \(Grade: 8.3\/10\)],[Followed thematic semester \"Big Data\" and minor \"Positive Psychology & Technology\"],[Best first year project out of 150+ groups as voted by peers and teachers \(2017\)],)
  ],
  inset: (
    left: design-entry-types-education-entry-degree-column-width + design-entries-horizontal-space-between-columns + design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Publications


#two-col-entry(
  left-content: [
    #strong[Trial-level sequence modeling reveals hidden dynamics of dual-task interference]

  ],
  right-content: [
    May 2026
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Rick den Otter, Anna Dame, Sjoerd Stuit, Leendert van Maanen

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1371/journal.pcbi.1014302")[10.1371/journal.pcbi.1014302] (PLOS Computational Biology)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Identifying trial-by-trial cognitive strategies in speed-accuracy trade-off through deep sequence modeling]

  ],
  right-content: [
    under review
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Rick den Otter, Gabriel Weindel, Sjoerd Stuit, Leendert van Maanen])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[A Trial-Level Neural Predictor of Proactive Slowing and Stop-Signal Success]

  ],
  right-content: [
    in preparation
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Rick den Otter, Leendert van Maanen, Leon Kenemans, Daan van Rooij])



== Grants and Awards


#two-col-entry(
  left-content: [
    #strong[NWO Small Compute Grant \(310.000 compute units on Snellius\)]

  ],
  right-content: [
    Feb 2026
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Rick den Otter])



== Conferences


#two-col-entry(
  left-content: [
    #strong[NVP Dutch Society for Brain and Cognition Winter Conference]

  ],
  right-content: [
    Dec 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Egmond aan Zee, the Netherlands \(Poster presentation\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[International Conference on Cognitive Neuroscience \(ICON\)]

  ],
  right-content: [
    Sept 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Porto, Portugal \(Poster presentation\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Cognitive Computational Neuroscience \(CCN\)]

  ],
  right-content: [
    July 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Amsterdam, the Netherlands \(Poster presentation\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Helmholtz Institute - Perception day]

  ],
  right-content: [
    Nov 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Utrecht, the Netherlands \(Poster presentation\)])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[NVP Dutch Society for Brain and Cognition Winter Conference]

  ],
  right-content: [
    Dec 2023
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Egmond aan Zee, the Netherlands \(Poster presentation\)])



== Academic Service


#one-col-entry(
  content: [#strong[\(Co\)-reviewer:] eLife, Cognitive Computational Neuroscience conference]
)


== Teaching Experience


#one-col-entry(
  content: [#strong[Machine Learning for Human Vision & Language \(MSc Artificial Intelligence, Utrecht University\):] Teaching work groups, grading exams]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Human Network Analysis \(MSc Applied Data Science, Utrecht University\):] Teaching work groups, grading exams]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming \(BSc Psychology, Utrecht University\):] Guiding and grading students during their programming assignments]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Thesis supervision \(BSc Artificial Intelligence, Utrecht University\):] Guiding and grading students during their BSc thesis]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Thesis supervision \(MSc Artificial Intelligence, Utrecht University\):] Guiding and grading students during their MSc thesis]
)


== Professional Experience


#two-col-entry(
  left-content: [
    #strong[Software Engineer, Thesis Intern, Intern], Sweco Nederland -- De Bilt, the Netherlands
  ],
  right-content: [
    Jan 2019 – Feb 2024
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [My internships and job at Sweco Nederland started with developing and maintaining the REST API for Obsurv. Later, I developed a novel application handling concurrent long-running export tasks from a relational database to RDF triple graph format. Finally, I conducted my BSc thesis at Sweco Nederland on using machine learning to recognize defects in sewer inspection media. I integrated this model into a deployed product using Azure Machine Learning. Additionally, I guided multiple interns, assisting them with the technical part of their internships, and grading their theses. Technologies used: PL\/SQL, Oracle stack, TypeScript, JavaScript, Express, NodeJS, Python, VR in Three.JS, Azure for DevOps activities, Azure Machine Learning.])], column-gutter: 0cm)
  ],
)



== Courses and Summer Schools


#two-col-entry(
  left-content: [
    #strong[Smoothening your writing process]

  ],
  right-content: [
    July 2025
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Utrecht, the Netherlands])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Inclusion and Social Safety training]

  ],
  right-content: [
    Dec 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Utrecht, the Netherlands])

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Summer School Advanced Communication Skills]

  ],
  right-content: [
    Aug 2024
  ],
)
#one-col-entry(content:[
  #v(design-highlights-top-margin);Utrecht, the Netherlands])



== Skills


#one-col-entry(
  content: [#strong[Programming:] Proficient: Python \(PyTorch, Pandas, NumPy\), R \(lme4\), MATLAB \(EEGLAB\). Familiar: C\#, JavaScript, HTML\/CSS]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Other technical skills:] Git\/GitHub, Linux, Docker, Distributed computing \(Azure, Snellius\), Adobe Creative Cloud \(Photoshop, Illustrator, InDesign\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Experimental methods:] EEG \(BioSemi ActiveTwo\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Languages:] English \(fluent\), Dutch \(native\)]
)


