
  //set font settings
  #let body-font = "Computer Modern"
  #let sans-font = "Computer Modern Sans"
  #let defaultTextSize = 12pt
  #let linkColor = rgb("#013f7d") // color for links such as references to chapters or bib entries
  // language specific settings
  #let language = "de"              //change to "en" for english
  #let chapterString = "Kapitel"    //change to "Chapter" for english


 #let mainLayoutConfig(doc) = [
  #set page(
      margin: (left: 42mm, right: 42mm, top: 39mm, bottom: 39mm),
      number-align: center,
    )
    #set text(
      font: body-font, 
      size: defaultTextSize, 
      lang: language
    )
    // set color of references
    #show ref: set text(linkColor)
    #show link: set text(fill: linkColor)

    // chnage outline style e.g. table of contents
    #set outline(
      fill: box(width: 1fr, repeat("."+h(2mm)))
    ) 
    #show outline: set text(font: body-font)
    // math equation 
    #show math.equation: set text(weight: 800)

    // --- Headings ---
    #show heading: set block(below: 2em, above: 2em)
    #show heading: set text(font: body-font, weight: "thin", tracking: 0.1em, size: 0.75em)
    #set heading(numbering: "1.1")
    // make all headings upper case and start on new page
    #show heading: it => {
      if it.level==1 { // chapter heading
        set text(font: body-font, weight: "thin", tracking: 0.13em, size: 12pt)
        pagebreak()
        grid(
          rows: 2,
          row-gutter: 10pt,
          text(upper(it.body)),
          line(length: 100%),
        )
      } else if  it.level==2 {
        set text(font: body-font, weight: "semibold", size: 10pt)
        v(0.5em)
        text(upper(numbering(it.numbering,..counter(heading).at(it.location())) +" " + it.body))
        v(0.5em)
        parbreak()
      }
      else {
        set text(font: body-font, style: "italic", weight: "thin", size: 11pt)
        v(0.5em)
        text(upper(numbering(it.numbering,..counter(heading).at(it.location())) +" " + it.body))
        v(0.5em)
        parbreak()
      }
    }

    // set big page number to the top of pages (aka. header) where a new chapter starts
    #set page(header-ascent:40%)
    #set page(
    header: locate(
        loc => [
            // find first heading of level 1 on current page
            #let first-heading = query(
                heading.where(level: 1), loc).find(h => h.location().page() == loc.page())
            #if first-heading == none {
              let pageNum = loc.page()
              // try to find the first a second level heading on the current page
              let current2ndHeadline = query(heading.where(level: 2), loc).find(h => h.location().page() == pageNum)
              // look for the latest second level heading on a page before
              while current2ndHeadline == none and pageNum > 0{
                  current2ndHeadline = query(
                  heading.where(level: 2), loc).rev().find(h => h.location().page() == pageNum)
                  pageNum = pageNum -1
              }
              // a second level heading found on current page or a page before
              if current2ndHeadline != none and current2ndHeadline.numbering != none {
                    // if there is a level 2heading on this page, set the header
                    let headerString = numbering(current2ndHeadline.numbering,..counter(heading).at(current2ndHeadline.location())) +" " + current2ndHeadline.body
                    let headerText = align(right,
                        text(size: 12pt, headerString
                          )
                    )
                    headerText
              }
            } else {
              if first-heading.numbering != none {
                // if there is a level one heading (chapter heading) on this page, set the header
                let headerText = align(left,
                    text(size: 70pt, fill: luma(120), 
                      numbering(first-heading.numbering,..counter(heading).at(first-heading.location())))
                )
                headerText
            }
            }
        ]
    )
    )

    // Reference first-level headings as "chapters"
    #show ref: it => {
        let el = it.element
        if el != none and el.func() == heading and el.level == 1 { 
          let targetLink = it.target
          let supplement = chapterString
          if it.citation != none  and it.citation.supplement != none{ // custom supplement set
            supplement = it.citation.supplement
          }
          let linkText = supplement + " " + numbering(el.numbering,..counter(heading).at(el.location()))
          link(targetLink, linkText) 
      } else {
        it
      }
    }

    // --- Paragraphs ---
    #set par(leading: 1em)
    #set par(justify: true)

    // --- Citations ---
    #set cite(style: "alphanumeric")

    // --- Figures ---
    #show figure: set text(size: 0.85em)
    // change indent of lists globally
    #set list(body-indent: 5pt, indent: 15pt)
    #doc
  ]