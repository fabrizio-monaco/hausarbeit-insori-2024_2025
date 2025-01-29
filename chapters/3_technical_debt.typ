#import "@preview/glossarium:0.5.1": make-glossary, register-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Technische Schulden
<ch:technical_debt>

== Definition
<ch:technical_debt:definition>
Technische Schulden - ein Begriff, der in der Informatik vor allem in Bereich Software Engineering allgegenwärtig ist. Im Wesentlichen handelt es sich um die impliziten Kosten, die entstehen, wenn man in der Softwareentwicklung pragmatische Lösungen wählt, die nicht den empfohlenen Programmierrichtlinien folgen #ccitenum("7332619", "S.1"). Ähnlich wie bei einem finanziellen Kredit erfolgt die anfängliche Zeitersparnis durch technische Schulden auf Kosten eines späteren Mehraufwands, der sich in der Wartung, Fehlerbehebung oder Erweiterung der Software manifestiert.

== Klassifizierung
<ch:technical_debt:classification>
Technische Schulden lassen sich in verschiedene Kategorien unterteilen. Eine grundlegende Unterscheidung besteht zwischen bewussten und versehentlichen Schulden #ccite("medium:defining-identifying-and-measuring-technical-debt"). \ 
Bewusste Schulden entstehen, wenn ein Team bewusst eine schnelle Umsetzung oder eine  bzw. unausgereifte Lösung wählt, um ein Ziel mit den vorgegebenen Ressourcenbeschränkungen zu erreichen - ein typisches Beispiel ist die schnellere Markteinführung eines Produkts. Dabei wird der Code nicht perfekt umgesetzt, um eine schnellere Markteinführung zu ermöglichen.
#pagebreak()
Versehentliche Schulden hingegen resultieren aus mangelnder Erfahrung, Nachlässigkeit oder unzureichender Planung, wobei Fehler oder suboptimale Entscheidungen unbeabsichtigt auftreten.

Martin Fowler erweiterte das Konzept dieser Unterscheidung und erstellte damit den "Technischen Schuldenquadranten" (vgl. @fig:techdebtquadrant). \ Dieser Quadrant klassifiziert technische Schulden anhand von zwei zusätzlichen Dimensionen: *Rücksichtslosigkeit* und *Umsichtig*. Dadurch entstehen die folgenden vier Kategorien:
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
    [Code], [Probleme im Programmierstil, welche die Wartbarkeit und Lesbarkeit beeinträchtigen.], [Duplizierter Code, lange Methoden, mangelnde Kommentare.],
  ),
  caption: [Spezifische Arten von technischen Schulden],
)<tab:categories_specific>
== Entstehung
<ch:technical_debt:emergence>
Technische Schulden entstehen nicht zufällig, sondern sind häufig die Konsequenz verschiedener Faktoren und Entscheidungen im Verlauf des Entwicklungsprozesses #ccitenum("Guo2014", "160"). \ Ein wesentlicher Faktor für das Entstehen technischer Schulden ist der Zeitdruck, der oft durch begrenzte Ressourcen oder enge Deadlines verursacht wird #ccitenum("Guo2014", "175"). Unter solchen Umständen bevorzugen Entwicklungsteams pragmatische Lösungen, um kurzfristig Ziele zu erreichen. Dies erhöht langfristig den Wartungsaufwand und die Entwicklungskosten und erschwert die Implementierung neuer Features sowie die Fehlerbehebung #ccite("medium:defining-identifying-and-measuring-technical-debt"). \
Ein weiterer Faktor für das Entstehen technischer Schulden ist mangelnde Erfahrung oder unzureichendes Wissen der Entwickler #ccitenum("Guo2014", "160"). Insbesondere unerfahrene Entwickler neigen dazu, Code zu schreiben, der nicht den #gls("best_practices", display: "Best Practices") entspricht. Auch ein unzureichendes Verständnis von Architekturmuster oder Designprinzipien innerhalb einer Codebasis kann zu technischen Schulden führen. Darüber hinaus tragen unzureichende Planung und mangelnde Kommunikation im Team ebenfalls zur Entstehung technischer Schulden bei #ccite("WhatisTe71:online"). \ 
Unklar definierte oder sich häufig ändernde Anforderungen führen oft zu #gls("ad_hoc_solution", display: "Ad-hoc-Lösungen") und #gls("workaround", display: "Workarounds"), die den Code unnötig komplex machen und die Wartbarkeit erheblich erschweren. Zusätzlich können unzureichende Tests sowie das Versäumnis, den Code regelmäßig einem #gls("refactoring") zu unterziehen, dazu beitragen, dass sich technische Schulden im Laufe der Zeit weiter anhäufen. \
Insgesamt zeigt sich somit, dass die Entstehung technischer Schulden auf einer Vielzahl von Faktoren beruht, die oft miteinander verknüpft sind. Diese Faktoren verdeutlichen, wie entscheidend ein bewusster und strukturierter Entwicklungsprozess ist, um die Ansammlung technischer Schulden zu minimieren und langfristige Auswirkungen auf die Softwareentwicklung zu vermeiden.