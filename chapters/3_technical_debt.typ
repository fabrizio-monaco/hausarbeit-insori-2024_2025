#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Technische Schulden
<ch:technical_debt>

== Definition & Begriffserklärung
<ch:technical_debt:definition>
Technische Schulden - ein Begriff, der in der Informatik allgegenwärtig ist. Im Wesentlichen handelt es sich um die impliziten Kosten, die entstehen, wenn man in der Softwareentwicklung pragmatische Lösungen wählt, die nicht dem Optimum entsprechen @7332619. Ähnlich wie bei einem finanziellen Kredit  "bezahlt" man für die anfängliche Zeitersparnis mit späterem Mehraufwand - sei es bei der Wartung, der Fehlerbehebung oder der Erweiterung der Software.

Vereinfacht gesagt  entstehen technische Schulden, wenn man bei der Entwicklung Abkürzungen nimmt, Kompromisse bei der Codequalität eingeht oder die Dokumentation vernachlässigt.  All dies mag kurzfristig sinnvoll erscheinen,  führt aber langfristig dazu, dass die Software schwer verständlich, fehleranfällig und teuer in der Wartung wird. [Quelle]

Es ist wichtig zu verstehen, dass es verschiedene Arten von technischen Schulden gibt.  Manchmal sind sie bewusst geplant und kalkuliert,  manchmal entstehen sie unbewusst oder durch Nachlässigkeit. [Quelle] Und genau wie bei einem finanziellen Kredit  können sich technische Schulden schnell anhäufen und zu einem erheblichen Problem werden,  wenn man sie nicht im Auge behält und rechtzeitig "abbezahlt".

Ein kritischer Punkt ist, dass technische Schulden oft nicht sofort erkennbar sind.  Sie verstecken sich im Code, in der Architektur, in der Dokumentation - und treten erst im Laufe der Zeit zutage. [Quelle] Daher ist es unerlässlich, ein Bewusstsein für dieses Phänomen zu entwickeln und Strategien zu entwickeln, um technische Schulden zu minimieren und mit diesen umzugehen. 

#pagebreak()
== Klassifizierung
<ch:technical_debt:classification>
=== Absichtlich und unabsichtlich
Eine der grundlegendsten Unterscheidungen bei technischen Schulden ist die zwischen absichtlichen und unabsichtlichen Schulden @medium:defining-identifying-and-measuring-technical-debt. Absichtliche Schulden entstehen, wenn ein Team  bewusst eine Abkürzung nimmt oder eine suboptimale Lösung wählt, um ein bestimmtes Ziel zu erreichen.  Ein klassisches Beispiel ist die schnellere Markteinführung eines Produkts.  Man nimmt in Kauf,  dass der Code nicht perfekt ist,  um  schneller am Markt zu sein und  Feedback von Kunden zu erhalten.  Unabsichtliche Schulden hingegen entstehen  unbewusst,  oft durch mangelnde Erfahrung,  Nachlässigkeit oder unzureichende Planung.  Hier  werden Fehler gemacht oder  suboptimale Entscheidungen getroffen,  ohne dass dies  intendiert ist. \

Martin Fowler erweiterte das Konzept der technischen Schulden um den "technischen Schuldenquadranten" @fowler_technical_debt_quadrant \ Dieser Quadrant  klassifiziert technische Schulden anhand von zwei Dimensionen: *Absicht* und *Umsicht*. Dadurch entstehen vier Kategorien:
#figure(
  image("../figures/techDebtQuadrant.png", width: 75%),
  caption: [Der Technische Schuldenquadrant],
)<tab:kategorien>
#pagebreak()
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
    [Build], [Probleme im Build- und Deployment-Prozess, die die Entwicklungszeit verlängern.], [Manuelle Tests, die automatisiert werden könnten.],
    [Code], [Probleme im Programmierstil, die die Wartbarkeit und Lesbarkeit beeinträchtigen.], [Duplizierter Code, lange Methoden, mangelnde Kommentare],
  ),
  caption: [Spezifische Arten von technischen Schulden],
)<tab:categories_specific>
== Entstehung
<ch:technical_debt:emergence>
Technische Schulden entstehen nicht einfach zufällig, sondern sind oft die Folge verschiedener Faktoren und Entscheidungen im Entwicklungsprozess. [Quelle] \
Ein häufiger Grund ist Zeitdruck. Wenn Teams unter starkem Zeitdruck stehen, um beispielsweise eine Deadline einzuhalten oder schnell auf Marktveränderungen zu reagieren, werden oft Abkürzungen genommen und Kompromisse bei der Codequalität gemacht. [Quelle]  Anstatt die optimale Lösung zu implementieren, wird der schnellste Weg gewählt, um die Funktionalität zu liefern. Dies kann zu unübersichtlichem, schlecht dokumentiertem oder fehleranfälligem Code führen, der später zu Problemen führt. \
Ein weiterer Faktor ist mangelnde Erfahrung oder unzureichendes Wissen der Entwickler. [Quelle]  Gerade unerfahrene Entwickler neigen dazu, Code zu schreiben, der nicht den Best Practices entspricht oder schwer zu warten ist. Auch fehlende Kenntnisse über Architekturmuster oder Designprinzipien können zu technischen Schulden führen. \
Unzureichende Planung und Kommunikation im Team tragen ebenfalls zur Entstehung technischer Schulden bei. [Quelle] Wenn Anforderungen nicht klar definiert sind oder sich während der Entwicklung ändern, kann dies zu Ad-hoc-Lösungen und Workarounds führen, die den Code verkomplizieren und die Wartbarkeit erschweren. Auch unzureichende Tests und fehlendes Refactoring können dazu führen, dass sich technische Schulden im Laufe der Zeit anhäufen. \
Schließlich können auch veraltete Technologien und Frameworks zu technischen Schulden führen. [Quelle] Wenn Software auf alten Systemen basiert, die nicht mehr aktiv weiterentwickelt oder unterstützt werden, wird es immer schwieriger und teurer, die Software zu warten und an neue Anforderungen anzupassen. Auch hier kann es sinnvoll sein, rechtzeitig in die Modernisierung der Software zu investieren, um technische Schulden zu vermeiden.