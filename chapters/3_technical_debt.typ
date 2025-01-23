#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Technische Schulden
<ch:technical_debt>

== Definition
<ch:technical_debt:definition>
Technische Schulden - ein Begriff, der in der Informatik vor allem in Bereich Software Engineering allgegenwärtig ist. Im Wesentlichen handelt es sich um die impliziten Kosten, die entstehen, wenn man in der Softwareentwicklung pragmatische Lösungen wählt, die nicht dem Optimum entsprechen #ccitenum("7332619", "S.1"). Ähnlich wie bei einem finanziellen Kredit erfolgt die anfängliche Zeitersparnis durch technische Schulden auf Kosten eines späteren Mehraufwands, der sich in der Wartung, Fehlerbehebung oder Erweiterung der Software manifestiert.

== Klassifizierung
<ch:technical_debt:classification>
Technische Schulden lassen sich in verschiedene Kategorien unterteilen. Eine grundlegende Unterscheidung besteht zwischen bewussten und versehentlichen Schulden #ccite("medium:defining-identifying-and-measuring-technical-debt"). \ 
Bewusste Schulden entstehen, wenn ein Team bewusst eine schnelle Umsetzung oder eine suboptimale Lösung wählt, um ein Ziel mit den vorgegebenen Ressourcenbeschränkungen zu erreichen - ein typisches Beispiel ist die schnellere Markteinführung eines Produkts. Dabei wird der Code nicht perfekt umgesetzt, um schnelleres Kundenfeedback zu erhalten. 
#pagebreak()
Versehentliche Schulden hingegen resultieren aus mangelnder Erfahrung, Nachlässigkeit oder unzureichender Planung, wobei Fehler oder suboptimale Entscheidungen unbeabsichtigt auftreten

Martin Fowler erweiterte das Konzept dieser Unterscheidung und erstellte damit den "Technischen Schuldenquadranten" @fig:techdebtquadrant \ Dieser Quadrant klassifiziert technische Schulden anhand von zwei Dimensionen: *Rücksichtslos* und *Umsicht*. Dadurch entstehen vier Kategorien:
#figure(
  image("../figures/techDebtQuadrant.svg", width: 75%),
  caption: [Der Technische Schuldenquadrant],
)<fig:techdebtquadrant>
#pagebreak()
=== Typen
Neben den oben genannten Klassifizierungen gibt es weitere, spezifische Arten, die zur Beschreibung von technischen Schulden verwendet werden können. Zu den wichtigsten gehören:
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    align: left,
    table.header(
      [Typ],
      [Beschreibung],
      [Beispiel],
    ),
    [Design], [Identifizierung von Verstößen gegen gute Software-Designprinzipien im Quellcode.], [Ein Design, das nicht skalierbar ist oder sich nicht an veränderte Anforderungen anpassen lässt.],
    [Build], [Probleme im Build- und Deployment-Prozess, welche die Entwicklungszeit verlängern.], [Manuelle Tests, die automatisiert werden könnten.],
    [Code], [Probleme im Programmierstil, welche die Wartbarkeit und Lesbarkeit beeinträchtigen.], [Duplizierter Code, lange Methoden, mangelnde Kommentare],
  ),
  caption: [Spezifische Arten von technischen Schulden],
)<tab:categories_specific>
== Entstehung
<ch:technical_debt:emergence>
Technische Schulden entstehen nicht zufällig, sondern sind häufig die Konsequenz verschiedener Faktoren und Entscheidungen im Verlauf des Entwicklungsprozesses. \ Ein wesentlicher Faktor für das Entstehen technischer Schulden ist der Zeitdruck, der oft durch begrenzte Ressourcen oder enge Deadlines verursacht wird. Unter solchen Umständen bevorzugen Entwicklungsteams pragmatische Lösungen, um kurzfristig Ziele zu erreichen, was häufig zu Kompromissen bei der Codequalität führt. Anstatt die optimale Lösung zu wählen, wird der schnellste Weg zur Umsetzung der Funktionalität bevorzugt, was später zu unübersichtlichem, schlecht dokumentiertem oder fehleranfälligem Code führen kann. Dies erhöht langfristig den Wartungsaufwand und die Entwicklungskosten und erschwert die Implementierung neuer Features sowie die Fehlerbehebung #ccite("medium:defining-identifying-and-measuring-technical-debt"). \
Ein weiterer Faktor für das Entstehen technischer Schulden ist mangelnde Erfahrung oder unzureichendes Wissen der Entwickler #ccite("WhatisTe71:online"). Insbesondere unerfahrene Entwickler neigen dazu, Code zu schreiben, der nicht den Best Practices entspricht und daher schwer zu warten ist. Auch ein unzureichendes Verständnis von Architekturmuster oder Designprinzipien kann zu technischen Schulden führen. Darüber hinaus tragen unzureichende Planung und mangelnde Kommunikation im Team ebenfalls zur Entstehung technischer Schulden bei #ccite("WhatisTe71:online"). \ 
Unklar definierte oder sich häufig ändernde Anforderungen führen oft zu Ad-hoc-Lösungen und Workarounds, die den Code unnötig komplex machen und die Wartbarkeit erheblich erschweren. Zusätzlich können unzureichende Tests sowie das Versäumnis, den Code regelmäßig zu refaktorisieren, dazu beitragen, dass sich technische Schulden im Laufe der Zeit weiter anhäufen. \
Insgesamt zeigt sich somit, dass die Entstehung technischer Schulden auf einer Vielzahl von Faktoren beruht, die oft miteinander verknüpft sind. Diese Faktoren verdeutlichen, wie entscheidend ein bewusster und strukturierter Entwicklungsprozess ist, um die Ansammlung technischer Schulden zu minimieren und langfristige Auswirkungen auf die Softwareentwicklung zu vermeiden.