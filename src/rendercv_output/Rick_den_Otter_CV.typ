// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Rick den Otter",
  title: "Rick den Otter - CV",
  footer: context { [#emph[Rick den Otter -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Sept 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "a4",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(30, 38, 44),
  colors-name: rgb(13, 71, 79),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(82, 104, 112),
  colors-section-titles: rgb(33, 84, 87),
  colors-links: rgb(15, 110, 100),
  colors-footer: rgb(143, 143, 143),
  colors-top-note: rgb(143, 143, 143),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Open Sans",
  typography-font-family-name: "Open Sans",
  typography-font-family-headline: "Open Sans",
  typography-font-family-connections: "Open Sans",
  typography-font-family-section-titles: "Open Sans",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: false,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: left,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.12cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.12cm,
  entries-highlights-space-between-items: 0.12cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 9,
    day: 28,
  ),
)


#grid(
  columns: (auto, 1fr),
  column-gutter: 0cm,
  align: horizon + left,
  [#pad(left: 0.4cm, right: 0.4cm, image("profile_picture.jpg", width: 3.5cm))
],
  [
= Rick den Otter

#connections(
  [#connection-with-icon("location-dot")[Apeldoorn, the Netherlands]],
  [#link("mailto:rickdotyt@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[rickdotyt\@gmail.com]]],
  [#link("https://orcid.org/0009-0002-8852-1697", icon: false, if-underline: false, if-color: false)[#connection-with-icon("orcid")[0009-0002-8852-1697]]],
  [#link("https://linkedin.com/in/rick-denotter", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[rick-denotter]]],
  [#link("https://github.com/rickdott", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[rickdott]]],
)
  ]
)


== Education

#education-entry(
  [
    #strong[Experimental Psychology, Utrecht University], PhD in Artificial Intelligence & Cognitive Neuroscience -- Utrecht, the Netherlands

  ],
  [
    May 2024 – present

  ],
  main-column-second-row: [
    #summary[My PhD is a continuation of my masters' thesis project, where I apply Hidden Multivariate Pattern analysis combined with deep spatiotemporal sequence models to decode cognitive processes from EEG at the trial level.]

  ],
)

#education-entry(
  [
    #strong[Utrecht University], MSc in Artificial Intelligence -- Utrecht, the Netherlands

  ],
  [
    Feb 2022 – Feb 2024

  ],
  main-column-second-row: [
    #summary[I conducted my thesis at the department of Experimental Psychology (Utrecht University) on classifying cognitive processes from EEG using machine learning classifiers. During this thesis I was chosen to present my research at the NVP Dutch Society for Brain and Cognition Winter Conference. My thesis was awarded a grade of 8.9, with a 9.5 for both the result and the process.]

  ],
)

#education-entry(
  [
    #strong[Hogeschool van Amsterdam], BSc in HBO-ICT Software Engineering -- Amsterdam, the Netherlands

  ],
  [
    Sept 2017 – June 2021

  ],
  main-column-second-row: [
    - Graduated Cum Laude (Grade: 8.3\/10)

    - Followed thematic semester \"Big Data\" and minor \"Positive Psychology & Technology\"

    - Best first year project out of 150+ groups as voted by peers and teachers (2018)

  ],
)

== Publications

#regular-entry(
  [
    #strong[Trial-level sequence modeling reveals hidden dynamics of dual-task interference]

  ],
  [
    May 2026

  ],
  main-column-second-row: [
    Rick den Otter, Anna Dame, Sjoerd Stuit, Leendert van Maanen

    #link("https://doi.org/10.1371/journal.pcbi.1014302")[10.1371\/journal.pcbi.1014302] (PLOS Computational Biology)

  ],
)

#regular-entry(
  [
    #strong[Identifying trial-by-trial cognitive strategies in speed-accuracy trade-off through deep sequence modeling]

  ],
  [
    under review

  ],
  main-column-second-row: [
    Rick den Otter, Gabriel Weindel, Sjoerd Stuit, Leendert van Maanen

  ],
)

#regular-entry(
  [
    #strong[A Trial-Level Neural Predictor of Proactive Slowing and Stop-Signal Success]

  ],
  [
    in preparation

  ],
  main-column-second-row: [
    Rick den Otter, Leendert van Maanen, Leon Kenemans, Daan van Rooij

  ],
)

== Grants and Awards

#regular-entry(
  [
    #strong[NWO Small Compute Grant (310.000 compute units on Snellius)]

  ],
  [
    Feb 2026

  ],
  main-column-second-row: [
    Rick den Otter

  ],
)

== Conferences

#regular-entry(
  [
    #strong[CuttingGardens Groningen]

  ],
  [
    Sept 2026

  ],
  main-column-second-row: [
    Groningen, the Netherlands (Invited talk)

  ],
)

#regular-entry(
  [
    #strong[NVP Dutch Society for Brain and Cognition Winter Conference]

  ],
  [
    Dec 2025

  ],
  main-column-second-row: [
    Egmond aan Zee, the Netherlands (Poster presentation)

  ],
)

#regular-entry(
  [
    #strong[International Conference on Cognitive Neuroscience (ICON)]

  ],
  [
    Sept 2025

  ],
  main-column-second-row: [
    Porto, Portugal (Poster presentation)

  ],
)

#regular-entry(
  [
    #strong[Cognitive Computational Neuroscience (CCN)]

  ],
  [
    July 2025

  ],
  main-column-second-row: [
    Amsterdam, the Netherlands (Poster presentation)

  ],
)

#regular-entry(
  [
    #strong[Helmholtz Institute - Perception day]

  ],
  [
    Nov 2024

  ],
  main-column-second-row: [
    Utrecht, the Netherlands (Poster presentation)

  ],
)

#regular-entry(
  [
    #strong[NVP Dutch Society for Brain and Cognition Winter Conference]

  ],
  [
    Dec 2023

  ],
  main-column-second-row: [
    Egmond aan Zee, the Netherlands (Poster presentation)

  ],
)

== Academic Service

#strong[(Co)-reviewer:] eLife, Cognitive Computational Neuroscience conference

== Teaching Experience

#strong[Machine Learning for Human Vision & Language (MSc Artificial Intelligence, Utrecht University):] Teaching work groups, grading exams

#strong[Human Network Analysis (MSc Applied Data Science, Utrecht University):] Teaching work groups, grading exams

#strong[Programming (BSc Psychology, Utrecht University):] Guiding and grading students during their programming assignments

#strong[Thesis supervision (BSc Artificial Intelligence, Utrecht University):] Guiding and grading students during their BSc thesis

#strong[Thesis supervision (MSc Artificial Intelligence, Utrecht University):] Guiding and grading students during their MSc thesis

== Professional Experience

#regular-entry(
  [
    #strong[Software Engineer, Thesis Intern, Intern], Sweco Nederland -- De Bilt, the Netherlands

  ],
  [
    Jan 2019 – Feb 2024

  ],
  main-column-second-row: [
    #summary[My internships and job at Sweco Nederland started with developing and maintaining the REST API for Obsurv. Later, I developed a novel application handling concurrent long-running export tasks from a relational database to RDF triple graph format. Finally, I conducted my BSc thesis at Sweco Nederland on using machine learning to recognize defects in sewer inspection media. I integrated this model into a deployed product using Azure Machine Learning. Additionally, I guided multiple interns, assisting them with the technical part of their internships, and grading their theses. Technologies used: PL\/SQL, Oracle stack, TypeScript, JavaScript, Express, NodeJS, Python, VR in Three.JS, Azure for DevOps activities, Azure Machine Learning.]

  ],
)

== Courses and Summer Schools

#regular-entry(
  [
    #strong[Smoothening your writing process]

  ],
  [
    July 2025

  ],
  main-column-second-row: [
    Utrecht, the Netherlands

  ],
)

#regular-entry(
  [
    #strong[Inclusion and Social Safety training]

  ],
  [
    Dec 2024

  ],
  main-column-second-row: [
    Utrecht, the Netherlands

  ],
)

#regular-entry(
  [
    #strong[Summer School Advanced Communication Skills]

  ],
  [
    Aug 2024

  ],
  main-column-second-row: [
    Utrecht, the Netherlands

  ],
)

== Skills

#strong[Programming:] Proficient: Python (PyTorch, Pandas, NumPy), R (lme4), MATLAB (EEGLAB). Familiar: C\#, JavaScript, HTML\/CSS

#strong[Other technical skills:] Git\/GitHub, Linux, Docker, Distributed computing (Azure, Snellius), Adobe Creative Cloud (Photoshop, Illustrator, InDesign)

#strong[Experimental methods:] EEG (BioSemi ActiveTwo)

#strong[Languages:] English (fluent), Dutch (native)
