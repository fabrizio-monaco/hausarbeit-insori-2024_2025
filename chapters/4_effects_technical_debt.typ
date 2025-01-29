#import "@preview/glossarium:0.5.1": make-glossary, register-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Auswirkungen technischer Schulden
<ch:effects_technical_debt>


== Software
<ch:effects_technical_debt:software>
Technische Schulden beeinträchtigen nicht nur die Wartbarkeit und Zukunftsfähigkeit des Codes, sondern haben auch erhebliche Auswirkungen auf die Effizienz, die Qualität und die Wirtschaftlichkeit des gesamten Entwicklungsprozesses. Im Folgenden werden diese Auswirkungen auf die Software detailliert beleuchtet.

=== Verlangsamte Entwicklung
Technische Schulden können die Entwicklung erheblich verlangsamen, wenn der Code unübersichtlich oder schlecht strukturiert ist. Entwickler müssen dann viel Zeit aufwenden, um den bestehenden Code zu verstehen und die Auswirkungen von Änderungen abzuschätzen. Diese Unsicherheit führt oft dazu, dass Anpassungen und Erweiterungen hinausgezögert oder ineffizient umgesetzt werden. Im Ergebnis verlängern sich Entwicklungszyklen und das Tempo der Weiterentwicklung nimmt deutlich ab. Wenn dieser Zustand anhält, wird der gesamte Entwicklungsprozess zunehmend langsamer und teurer.

=== Geringere Qualität
Fehleranfälliger Code, mangelnde Tests und unzureichende Dokumentation erhöhen die Wahrscheinlichkeit von #gls("bug", display: "Bugs") und Problemen im Produktivbetrieb. Die Software wird dadurch instabiler und anfälliger für Fehler, was schwerwiegende Konsequenzen wie Systemausfälle, Datenverluste oder Sicherheitslücken zur Folge haben kann #ccitenum("tornhill2022coderedbusinessimpact", "7"). Die Behebung solcher Fehler ist nicht nur aufwändig und teuer, sondern kann auch dauerhafte Imageschäden nach sich ziehen. Empirische Untersuchungen zeigen, dass die Fehlerbehebung in Code mit hoher technischer Verschuldung bis zu 124% länger dauern kann als in qualitativ hochwertigem Code und dass Systeme mit niedriger Codequalität bis zu 15-mal mehr Defekte aufweisen können #ccitenum("tornhill2022coderedbusinessimpact", "7"). Dies unterstreicht, wie stark technische Schulden die Effizienz der Softwareentwicklung beeinträchtigen können.

=== Erhöhte Wartungskosten
Die Wartung von Software mit hohen technischen Schulden ist oft deutlich aufwändiger und kostspieliger. Fehlerbehebungen, Anpassungen an neue Anforderungen und die Integration moderner Technologien stellen in solchen Fällen erhebliche Herausforderungen dar, da unübersichtlicher und komplexer Code den Entwicklungsprozess verlangsamt und erschwert. Dies führt zu steigenden Wartungskosten, die nicht nur die Effizienz der Entwicklung mindern, sondern auch die Weiterentwicklung der Software erheblich einschränken können. In der Praxis bindet dies häufig einen großen Anteil des IT-Budgets, das stattdessen für die Entwicklung neuer Features oder die Optimierung bestehender Funktionalitäten genutzt werden könnte. Technische Schulden entwickeln sich somit zu einer Art "Kostenfalle", die die Innovationsfähigkeit von Unternehmen hemmt und ihre Anpassung an sich wandelnde Marktbedingungen erschwert.

Empirische Studien belegen diese Zusammenhänge. Eine Untersuchung ergab, dass technische Schulden die Wartungskosten signifikant erhöhen und dass die durchschnittlichen Mehrkosten, um diese Schulden zu begleichen, 3.61\$ pro Zeile Code betragen. #ccitenum("Guo2014", "160") Zudem wurde festgestellt, dass Systeme mit hoher technischer Verschuldung eine erhöhte Fehleranfälligkeit aufweisen, was die Wartung weiter verkompliziert. \
// Diese Befunde unterstreichen die Notwendigkeit eines effektiven Managements technischer Schulden, um langfristige Kosten zu minimieren und die Wettbewerbsfähigkeit zu erhalten.

=== Geringere Flexibilität
Technische Schulden reduzieren die Anpassungsfähigkeit und Flexibilität von Software erheblich, da sie eng mit den im @ch:technical_debt:emergence beschriebenen Ursachen für die Entstehung verknüpft sind. Faktoren wie Zeitdruck, unzureichende Planung und unklare Anforderungen führen dazu, dass Entwicklungsteams häufig pragmatische und kurzfristige Lösungen umsetzen. Diese Entscheidungen, wie etwa die Wahl von #gls("workaround", display: "Workarounds") oder unzureichenden Tests, schaffen eine Grundlage für schwer verständlichen und komplexen Code. Eine Codebasis dieser Art wird mit der Zeit starr und schwer anzupassen, da jede Änderung das Risiko unvorhergesehener Nebenwirkungen birgt.

Diese mangelnde Flexibilität erschwert nicht nur die Integration neuer Technologien, sondern auch die Anpassung an sich wandelnde Geschäftsanforderungen. Wenn Software durch technische Schulden belastet ist, verlangsamt sich der gesamte Entwicklungsprozess, da Teams mehr Zeit in die Behebung von Altlasten und weniger auf die Entwicklung neuer Funktionen investieren. Insbesondere in dynamischen Märkten, in denen schnelle Anpassung an neue Gegebenheiten ein entscheidender Erfolgsfaktor ist, stellt dies ein gravierendes Hindernis dar. Die langfristigen Auswirkungen technischer Schulden können die Innovationsfähigkeit erheblich einschränken, die Wettbewerbsfähigkeit gefährden und die Zukunftsperspektiven eines Unternehmens beeinträchtigen.

#pagebreak()

== Team
<ch:effects_technical_debt:team>
Technische Schulden beeinflussen nicht nur die Software selbst, sondern auch die Menschen, die sie entwickeln. Während die technischen Konsequenzen oft im Vordergrund stehen, werden die Auswirkungen auf Motivation, Zusammenarbeit und Gruppendynamik häufig übersehen. Ein Softwareprojekt ist jedoch nur so erfolgreich wie das Team, das dahintersteht. Wenn technische Schulden die tägliche Arbeit erschweren, können Frustration und Überlastung die Folge sein, was langfristig die Leistungsfähigkeit des gesamten Teams gefährdet. Um diese Zusammenhänge zu verstehen, ist es essentiell, die psychologischen und sozialen Dimensionen technischer Schulden genauer zu betrachten.

=== Motivation und Arbeitszufriedenheit
Die Motivation von Softwareentwicklern wird laut einer empirischen Studie im Bereich der Globalen Softwareentwicklung #ccitenum("Noll_2017", "2") maßgeblich durch die folgenden Faktoren beeinflusst:
- *Autonomie*: Das Bedürfnis, eigenständig Entscheidungen zu treffen und die eigene Arbeit zu gestalten. Der Studie nach ist Autonomie eine notwendige Bedingung für Motivation, ist jedoch allein nicht ausreichend, um Entwickler nachhaltig zu motivieren.
- *Kompetenz*: Der Wunsch, sich fachlich weiterzuentwickeln und die eigenen Fähigkeiten zu verbessern. Die gleiche Studie betont, dass Autonomie nur dann motivierend wirkt, wenn Entwickler sich kompetent fühlen und in der Lage sind, ihre Aufgaben effektiv zu erfüllen.
- *Soziale Eingebundenheit*: Das Bedürfnis nach Zugehörigkeit und Anerkennung im Team. Neben Autonomie und Kompetenz stelle soziale Eingebundenheit einen entscheidenden Faktor für die Motivation von Entwicklern dar, da sie sich in einem unterstützenden sozialen Umfeld besser entfalten können.

Technische Schulden können diese essenziellen Motivationsfaktoren erheblich beeinträchtigen. Die Untersuchung zeigt, dass mangelnde Autonomie und fehlende Kompetenzentwicklung die Motivation von Entwicklern negativ beeinflussen können. Wenn Entwickler wiederholt mit schlecht strukturiertem oder fehleranfälligem Code arbeiten müssen, kann dies das Gefühl der Kontrolle über ihre Arbeit und die Wahrnehmung ihrer eigenen Fähigkeiten beeinträchtigen. Dies führt nicht nur zu Frustration, sondern senkt auch die Effizienz und die allgemeine Dynamik im Team.#pagebreak()

=== Typische Reaktionen auf Veränderungen
Wenn technische Schuld zu einem Problem wird, kann es sinnvoll sein, Veränderungen im Entwicklungsprozess oder in der Teamstruktur vorzunehmen, um die Schulden abzubauen und die Softwarequalität zu verbessern. Solche Veränderungen lösen bei den Betroffenen oft emotionale Reaktionen aus, die sich mit der psychologischen Change-Kurve nach Kübler-Ross/Streich #ccite("ChangeKu88:online") beschreiben lassen. \

#show link: underline
#figure(
  image("../figures/change-kurve-nach-kuebler-ross-streich.png", width: 100%),
  caption: [
    Die Change-Kurve nach Kübler-Ross/Streich,
  ],
)<fig:change_curve>

#pagebreak()

Diese Kurve beschreibt die emotionalen und psychologischen Phasen, die Menschen durchlaufen, wenn sie mit Veränderungen konfrontiert werden. Diese Phasen reichen von Verleugnung und Widerstand über Frustration bis hin zur Akzeptanz und Integration. Führungskräfte und Teamleiter sollten diese Dynamik verstehen, um Veränderungsprozesse aktiv und unterstützend zu gestalten. Gerade im Bereich technischer Schulden ist dieses Verständnis essenziell, da die Maßnahmen zur Tilgung technischer Schulden häufig tiefgreifende Anpassungen in Entwicklungsprozessen, Systemarchitekturen oder Priorisierungen erfordern. Ohne gezielte Begleitung können diese Veränderungen bei den betroffenen Teams zu Widerstand, Überforderung und Frustration führen, was nicht nur die Umsetzung verzögert, sondern auch die Motivation und Produktivität nachhaltig beeinträchtigt.

Ein weiterer Aspekt, der die Herausforderung bei der Bewältigung technischer Schulden verstärkt, sind die soziologischen Dynamiken innerhalb eines Teams. Technische Schulden können zu Konflikten führen, da unterschiedliche Meinungen über deren Priorisierung und Umgang oft aufeinandertreffen. Während einige Entwickler hohen Wert auf Codequalität legen und sich bemühen, technische Schulden zu vermeiden, gehen andere pragmatisch vor und sind bereit, Abkürzungen in Kauf zu nehmen. Diese unterschiedlichen Arbeitsstile und Prioritäten können Spannungen und Streitigkeiten hervorrufen, insbesondere wenn Entscheidungen über die Tilgung der Schulden getroffen werden müssen.

Zudem kann die Verteilung von Aufgaben und Verantwortlichkeiten weitere Konflikte schüren, die tiefere Auswirkungen auf die gesamte Gruppendynamik haben können. Wenn bestimmte Entwickler regelmäßig mit der Behebung von Fehlern im „alten“ Code betraut werden, während andere bevorzugt an der Entwicklung neuer Features arbeiten dürfen, entsteht möglicherweise der Eindruck von Ungleichbehandlung. Diese Wahrnehmung kann zu Unmut und Frustration führen, insbesondere wenn diejenigen, die ständig mit der Wartung und Fehlerbehebung älterer Systeme beschäftigt sind, das Gefühl haben, weniger wertgeschätzt oder weniger förderlich für den Fortschritt des Projekts zu sein. Solche Ungleichgewichte erzeugen nicht nur Spannungen innerhalb des Teams, sondern können auch die langfristige Motivation der Teammitglieder beeinträchtigen, da die Aufgabe, mit altbekannten Problemen konfrontiert zu werden, als weniger spannend oder herausfordernd empfunden werden kann.

Die Unternehmenskultur spielt in diesem Zusammenhang eine entscheidende Rolle. Wenn technische Schulden toleriert oder sogar gefördert werden, entsteht häufig eine Kultur der Schuldzuweisung und des Misstrauens. Entwickler könnten sich unter Druck gesetzt fühlen, schnelle Ergebnisse zu liefern, auch wenn dies auf Kosten der Codequalität geschieht. Diese kurzfristige Denkweise kann eine Abwärtsspirale auslösen: Die Qualität der Software sinkt weiter, und gleichzeitig schwindet die Motivation der Entwickler. Langfristig untergräbt dies die Produktivität und führt zu einer ineffizienten und konfliktbehafteten Arbeitsumgebung.

Führungskräfte, die sowohl die psychologischen Phasen der Veränderung als auch die soziologischen Dynamiken verstehen, sind besser in der Lage, technische Schulden erfolgreich zu bewältigen. Durch transparente Kommunikation, gerechte Aufgabenverteilung und gezielte Unterstützung können sie nicht nur die Akzeptanz für die notwendigen Veränderungen erhöhen, sondern auch die negativen Auswirkungen technischer Schulden auf das Team und die Unternehmenskultur minimieren. Dies ist entscheidend, um langfristig eine nachhaltige Softwarequalität und eine positive Arbeitsatmosphäre zu gewährleisten.