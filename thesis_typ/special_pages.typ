

#let tableOfListings(title: "Listings",layoutConfig: none) = { 
  show: layoutConfig
  // List of listings.
  heading(numbering: none,outlined: false, bookmarked: true,title)
  v(1em)
  outline(
    title: none,
    target: figure.where(kind: raw)
  )
}

#let tableOfTables(title: "Tables",layoutConfig: none) = { 
  show: layoutConfig
    // List of tables.
  heading(numbering: none,outlined: false, bookmarked: true,title)
  v(1em)
  outline(
    title: none,
    target: figure.where(kind: table)
  )
}

#let tableOfFigures(title: "Figures",layoutConfig: none) = { 
  show: layoutConfig
 // List of figures.
  heading(numbering: none,outlined: false, bookmarked: true,title)
  v(1em)
  outline(
    title:  none,
    target: figure.where(kind: image),
  )
}

#let tableOfContents(title: "Table of Contents",layoutConfig: none) = {
  show: layoutConfig
    // --- Table of Contents ---
  heading(numbering: none,outlined: false, bookmarked: true,title)  
  v(1em)
  outline(
    title: none,
    indent: 2em
  )
}

#let secondPage(
  title: "",
  author: "",
  submissionDate: ""
) = {
  set page(footer: "")
  let font = "New Computer Modern"
  v(97%)
  align(left, text(font: font, 1.1em, weight: 400, author+": "+text(style: "italic",title)+", © "+submissionDate))
  // overwrite page number with empty string
}
