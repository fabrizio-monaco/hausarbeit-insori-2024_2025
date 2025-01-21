#import "thesis-config.typ": *
#import "thesis_typ/main_layout_config.typ": *

#set document(title: title, author: author)

//begin page numbering with roman letters
#show: set page(numbering: "(i)")

//output title page
#import "frontbackmatter/title_page.typ": titlePage
#titlePage(
  title: title,
  degree: degree,
  faculty: faculty,
  university: university,
  myProf: myProf,
  myOtherProf: myOtherProf,
  author: author,
  id: id,
  location: location,
  submissionDate: submissionDate,
)

//output second page
#import "thesis_typ/special_pages.typ": secondPage
#secondPage(
  title: title,
  author: author,
  submissionDate: submissionDate
)

//output declaration
#import "frontbackmatter/declaration.typ": declaration
#declaration(title: "Erklärung", layoutConfig: mainLayoutConfig, author, location, submissionDate)

// output blockingNotice
#import "frontbackmatter/blocking_notice.typ": blockingNotice
#blockingNotice(layoutConfig: mainLayoutConfig)

//output abstract
//#import "frontbackmatter/abstract_en.typ": abstractEN
//#abstractEN(layoutConfig: mainLayoutConfig)

//output abstract de
#import "frontbackmatter/abstract_de.typ": abstractDE
#abstractDE(layoutConfig: mainLayoutConfig)

// output various tables
#import "thesis_typ/special_pages.typ": tableOfContents,tableOfTables,tableOfListings,tableOfFigures
#tableOfContents(title: "Inhaltsverzeichnis", layoutConfig: mainLayoutConfig)
#tableOfFigures(title: "Abbildungsverzeichnis",layoutConfig: mainLayoutConfig)
#tableOfTables(title: "Tabellenverzeichnis",layoutConfig: mainLayoutConfig)
#tableOfListings(title: "Listings",layoutConfig: mainLayoutConfig)
#import "frontbackmatter/acronyms.typ": tableOfAcronyms
#tableOfAcronyms(title: "Abkürzungsverzeichnis",layoutConfig: mainLayoutConfig)


// set layout config
#show: mainLayoutConfig
//change page numbering back to normal
#show: set page(numbering: "1")
#counter(page).update(1)

// include you chapters here
#include "./chapters/1_einleitung.typ"
//#include "chapters/2_theoretical_basics.typ"
#include "chapters/3_technical_debt.typ"
#include "chapters/4_effects_technical_debt.typ"
#include "chapters/5_conclusion.typ"
//#include "./chapters/chapter1.typ"
//#include "./chapters/chapter2.typ"
//#include "./chapters/chapter3.typ"
//#include "./chapters/appendix.typ"

// "springer-lecture-notes-in-computer-science"
#bibliography("./thesis.bib", title: "Literaturverzeichnis")
