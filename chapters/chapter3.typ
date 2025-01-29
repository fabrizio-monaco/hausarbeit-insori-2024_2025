#import "@preview/glossarium:0.5.1": make-glossary, register-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *
= Technische Schulden
<ch:literature:chapter3>
#lorem(100)
== Listen
Enumeration with bullets
- #lorem(10)
- #lorem(10)
- #lorem(10)

Enumeration with numbers
+ #lorem(10)
+ #lorem(10)
+ #lorem(10)

== Grafiken
Try to use SVGs for the figures. They are vector graphics and can be scaled without loss of quality.\
You can export a chart as svg in powerpoint by right clicking on it and selecting "Save as Picture".\
Then select "SVG" as file format.
Alternatively,  PNG, JPEG, GIF are supported by typst.\
#figure(
  image("../figures/figure1.svg", width: 100%),
  caption: [A generic chart],
) <fig:chart1>
#v(10pt)
#figure(
  image("../figures/figure2.svg", width: 100%),
  caption: [An other generic chart],
) <fig:chart1>
#pagebreak()

== Tabellen
#figure(
  table(
    columns: (1fr, auto, auto),
    inset: 10pt,
    align: horizon,
    [], [*Area*], [*Parameters*],
    [cylinder],
    $ pi h (D^2 - d^2) / 4 $,
    [
      $h$: height \
      $D$: outer radius \
      $d$: inner radius
    ],
  [tetrahedron],
    $ sqrt(2) / 12 a^3 $,
    [$a$: edge length]
  ),
  caption: [A table example],
)<tab:table1>

== Standardabweichung
<formula:formulas_stddev>
(vgl. @corder_2014 ch. 2.3)\
\
$s = sqrt( sum_(1)^n (x_i - overline(x))^2  / (n-1) )$