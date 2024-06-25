
// a implementation of latex namref function in Typst
// example usage: #nameref(<ch:literature:review>)
#let nameref(label) = {
  locate(loc => {
    // search for item referenced by the label
    let elems = query(label,loc)
    if (elems.len()!= 1) {
      panic("#nameref: label <"+str(label)+"> not found")
    }
    let item =  elems.first()
    let linkText
    // normal heading detected
    if (item.func() == heading) {
      if (item.body == none or not item.body.has("text")) {
        panic("#nameref: heading referenced by <"+str(label)+"> has no name")
      }
      linkText = item.body.text
    // figure detected
    } else if (item.func() == figure) {
      if (item.has("caption") and item.caption != none) { 
        let itemBody = item.caption.body
        // only one caption
        if (itemBody.has("text")) {
          linkText = item.caption.body.text
        // multiple captions separated by a double space
        } else if (itemBody.has("children")){
          // use first caption
          let firstChild = itemBody.children.at(0)
          if (firstChild.has("text")) {
            linkText=firstChild.text
          } else {
            panic("#nameref: figure referenced by <"+str(label)+"> has multiple captions but first caption is empty")
          }
        } else{
          panic("#nameref: figure referenced by <"+str(label)+"> has unsupported caption to be displayed")
        }
      } else {
        panic("#nameref: figure referenced by <"+str(label)+"> has no caption to be displayed")
      }
    } else {
      panic("#nameref: item referenced by <"+str(label)+"> is not a heading or figure")
    }
    let link = link(label, linkText)
    link  
  })
}

// output code samples with line numbers
// example usage:   #displaycode(read("../figures/BubbleSort.java"), "java", textsize: 9pt)
#let displaycode(file,lang, textsize: 10pt) ={
    show raw: it => { set par(justify: false); let line_count=0;
    set text(size: textsize)
      align(left, 
        block(radius: 1em, fill: luma(246), width: auto, inset: 1em,
          for line in it.lines {
            box(width: 0pt, align(right, str(line_count + 1) + h(2em)))
            line
            linebreak()
            line_count +=1;
          },)
      )
  }
  raw(file,lang: lang)
}
