#import "@preview/glossarium:0.5.1": make-glossary, register-glossary, print-glossary, gls, glspl
#show: make-glossary

#let entry-list = (
  (
    key: "releasezyklen",
    short: "",
    long: "Releasezyklen",
    description: "Die Zeit zwischen zwei aufeinanderfolgenden Software-Veröffentlichungen"
  ),
  (
    key: "legacy_code",
    short: "",
    long: "Legacy Code",
    description: "Veralteter Code, der schwer zu verstehen und zu warten ist"
  ),
  (
    key: "codequalität",
    short: "",
    long: "Codequalität",
    description: "Die Güte des geschriebenen Programmcodes, gemessen an Kriterien wie Lesbarkeit, Wartbarkeit, Effizienz und Fehlerfreiheit"
  ),
  (
    key: "codebasis",
    short: "",
    long: "Codebasis",
    description: "Die Gesamtheit des Quellcodes eines Softwareprojekts"
  ),
  (
    key: "agile_methoden",
    short: "",
    long: "Agile Methoden",
    description: "Flexible und iterative Ansätze in der Softwareentwicklung, die auf kurze Entwicklungszyklen und enge Zusammenarbeit mit dem Kunden setzen"
  ),
  (
    key: "technische_nachhaltigkeit",
    short: "",
    long: "Technische Nachhaltigkeit",
    description: "Die Fähigkeit von Software, über einen langen Zeitraum hinweg wartbar, erweiterbar und an neue Anforderungen anpassbar zu sein."
  ),
  (
    key: "refactoring",
    short: "",
    long: "Refactoring",
    description: "Die strukturelle Verbesserung des Quellcodes, ohne das Verhalten der Software zu ändern"
  ),
  (
    key: "bug",
    short: "",
    long: "Bug",
    description: "Ein Fehler oder Defekt in der Software, der unerwünschtes Verhalten verursacht"
  ),
  (
    key: "workaround",
    short: "",
    long: "Workaround",
    description: "Eine temporäre Lösung für ein Problem, die nicht die eigentliche Ursache behebt"
  ),
  (
    key: "best_practices",
    short: "",
    long: "Best Practices",
    description: "Bewährte Methoden und Vorgehensweisen im Programmierstil, die sich in der Praxis als besonders effektiv und effizient erwiesen haben"
  ),
  (
    key: "ad_hoc_solution",
    short: "",
    long: "Ad-hoc-Lösung",
    description: "Eine kurzfristige, improvisierte Lösung für ein Problem, die nicht langfristig geplant oder strukturiert ist"
  )
)

#let tableOfAcronyms(title: "Acronyms",layoutConfig: none) = { 
  show: layoutConfig
  heading(numbering: none,outlined: false, bookmarked: true,title)
  v(1em)

  show figure.caption: c => block(width:100%,align(left, c.body))
  register-glossary(entry-list)
  print-glossary(entry-list)
}