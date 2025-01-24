#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl 

#let tableOfAcronyms(title: "Acronyms",layoutConfig: none) = { 
  show: layoutConfig
  heading(numbering: none,outlined: false, bookmarked: true,title)
  v(1em)
  print-glossary((
    // minimal term
    (
      key: "releasezyklen",
      short: "",
      long: "Releasezyklen",
      desc: "die Zeit zwischen zwei aufeinanderfolgenden Software-Veröffentlichungen"
      ),
      (
      key: "legacy_code",
      short: "",
      long: "Legacy Code",
      desc: "veralteter Code, der schwer zu verstehen und zu warten ist"
      ),
      (
      key: "codequalität",
      short: "",
      long: "Codequalität",
      desc: "die Güte des geschriebenen Programmcodes, gemessen an Kriterien wie Lesbarkeit, Wartbarkeit, Effizienz und Fehlerfreiheit"
      ),
      (
      key: "codebasis",
      short: "",
      long: "Codebasis",
      desc: "die Gesamtheit des Quellcodes eines Softwareprojekts"
      ),
      (
      key: "agile_methoden",
      short: "",
      long: "Agile Methoden",
      desc: "flexible und iterative Ansätze in der Softwareentwicklung, die auf kurze Entwicklungszyklen und enge Zusammenarbeit mit dem Kunden setzen"
      ),
      (
        key: "technische_nachhaltigkeit",
        short: "",
        long: "Technische Nachhaltigkeit",
        desc: "Die Fähigkeit von Software, über einen langen Zeitraum hinweg wartbar, erweiterbar und an neue Anforderungen anpassbar zu sein."
      ),
      (
        key: "refactoring",
        short: "",
        long: "Refactoring",
        desc: "die strukturelle Verbesserung des Quellcodes, ohne das Verhalten der Software zu ändern"
      ),
      (
        key: "bug",
        short: "",
        long: "Bug",
        desc: "ein Fehler oder Defekt in der Software, der unerwünschtes Verhalten verursacht"
      ),
      (
        key: "workaround",
        short: "",
        long: "Workaround",
        desc: "eine temporäre Lösung für ein Problem, die nicht die eigentliche Ursache behebt"
      ),


    ))
}