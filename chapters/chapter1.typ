#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Einleitung
<ch:intro>

 #nameref(<ch:literature:review>) is referenced in the code with a custom namref function to display its title instead of its number.
You can also reference chapters, figures or bib entries with typst built in reference feature to display them with their number  instead like here @ch:literature:review.
Additionally you can omit the default prefix (chapter or figure) when referencing like here @ch:literature:review[]. Alternatively you can replace it with a custom one like here @fig:bubble_sort[Custom prefix].


== Problemstellung
#lorem(10)
#gls("DRY")
#lorem(10)
#gls("DRY")
== Motivation und Ziele
#lorem(10)
#gls("API")
== Überblick zum Vorgehen
#lorem(10)
#gls("API")
#lorem(10)
#gls("UML")
#lorem(10)
#gls("UML")
#lorem(10)
@oracle_2014