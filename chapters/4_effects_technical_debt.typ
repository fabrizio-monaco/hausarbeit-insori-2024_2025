#import "@preview/glossarium:0.2.6": make-glossary, print-glossary, gls, glspl
#import "../thesis_typ/helper-functions.typ": *

= Auswirkungen technischer Schulden
<ch:effects_technical_debt>


== Software
<ch:effects_technical_debt:software>
Technische Schulden beeinträchtigen nicht nur die Wartbarkeit und Zukunftsfähigkeit des Codes, sondern haben auch erhebliche Auswirkungen auf die Effizienz, die Qualität und die Wirtschaftlichkeit des gesamten Entwicklungsprozesses. Im Folgenden werden die wichtigsten Auswirkungen auf die Software detailliert beleuchtet.

=== Verlangsamte Entwicklung
Technische Schulden können die Entwicklung erheblich verlangsamen, wenn der Code unübersichtlich und schlecht strukturiert ist. Entwickler müssen dann viel Zeit aufwenden, um den bestehenden Code zu verstehen und die Auswirkungen von Änderungen abzuschätzen. Diese Unsicherheit führt oft dazu, dass Anpassungen und Erweiterungen hinausgezögert oder ineffizient umgesetzt werden. Im Ergebnis verlängern sich Entwicklungszyklen, und das Tempo der Weiterentwicklung nimmt deutlich ab. Wenn dieser Zustand anhält, wird der gesamte Entwicklungsprozess zunehmend langsamer und teurer.

=== Geringere Qualität
Fehleranfälliger Code, mangelnde Tests und unzureichende Dokumentation erhöhen die Wahrscheinlichkeit von Bugs und Problemen im Produktivbetrieb. Die Software wird dadurch instabiler und anfälliger für Fehler, was schwerwiegende Konsequenzen wie Systemausfälle, Datenverluste oder Sicherheitslücken zur Folge haben kann #ccitenum("tornhill2022coderedbusinessimpact", "7"). Die Behebung solcher Fehler ist nicht nur aufwändig und teuer, sondern kann auch dauerhafte Imageschäden nach sich ziehen. Empirische Untersuchungen zeigen, dass die Fehlerbehebung in Code mit hoher technischer Verschuldung bis zu 124 % länger dauern kann als in qualitativ hochwertigem Code und dass Systeme mit niedriger Codequalität bis zu 15-mal mehr Defekte aufweisen können #ccitenum("tornhill2022coderedbusinessimpact", "7"). Dies unterstreicht, wie stark technische Schulden die Effizienz der Softwareentwicklung beeinträchtigen können.

=== Erhöhte Wartungskosten
Die Wartung von Software mit hohen technischen Schulden ist oft deutlich aufwändiger und kostspieliger. Fehlerbehebungen, Anpassungen an neue Anforderungen und die Integration moderner Technologien stellen in solchen Fällen erhebliche Herausforderungen dar, da unübersichtlicher und komplexer Code den Entwicklungsprozess verlangsamt und erschwert. Dies führt zu steigenden Wartungskosten, die nicht nur die Effizienz der Entwicklung mindern, sondern auch die Weiterentwicklung der Software erheblich einschränken können. In der Praxis bindet dies häufig einen großen Anteil des IT-Budgets, das stattdessen für die Entwicklung neuer Features oder die Optimierung bestehender Funktionalitäten genutzt werden könnte. Technische Schulden entwickeln sich somit zu einer Art "Kostenfalle", die die Innovationsfähigkeit von Unternehmen hemmt und ihre Anpassung an sich wandelnde Marktbedingungen erschwert.

Empirische Studien belegen diese Zusammenhänge. Eine Untersuchung ergab, dass technische Schulden die Wartungskosten signifikant erhöhen und dass die durschnittlichen Mehrkosten, um diese Schulden abzubezahlen 3.61\$ betragen. #ccitenum("Guo2014", "160") Zudem wurde festgestellt, dass Systeme mit hoher technischer Verschuldung eine erhöhte Fehleranfälligkeit aufweisen, was die Wartung weiter verkompliziert. \
Diese Befunde unterstreichen die Notwendigkeit eines effektiven Managements technischer Schulden, um langfristige Kosten zu minimieren und die Wettbewerbsfähigkeit zu erhalten.

=== Geringere Flexibilität
Technische Schulden reduzieren die Anpassungsfähigkeit und Flexibilität von Software erheblich. [Quelle] \
Änderungen am Code bergen häufig das Risiko unvorhergesehener Nebenwirkungen, was die Integration neuer Technologien oder die Anpassung an geänderte Anforderungen erschwert. Dadurch wird die Software zunehmend starr und unflexibel, was die Innovationsfähigkeit des Unternehmens hemmt und langfristig die Wettbewerbsfähigkeit gefährden kann. \

Insbesondere in einem dynamischen Marktumfeld ist die Fähigkeit, schnell auf neue Gegebenheiten zu reagieren, ein entscheidender Erfolgsfaktor. Software mit hohen technischen Schulden stellt dabei ein erhebliches Hindernis dar, da sie die Entwicklung neuer Produkte oder die Optimierung bestehender Dienstleistungen verlangsamt oder gar blockiert. [Quelle] \ Dies kann zu einem nachhaltigen Wettbewerbsnachteil führen und die zukünftigen Erfolgsaussichten des Unternehmens stark beeinträchtigen.

#pagebreak()

== Team
<ch:effects_technical_debt:team>
Technische Schulden beeinflussen nicht nur die Software selbst, sondern auch die Menschen, die sie entwickeln. Während die technischen Konsequenzen oft im Vordergrund stehen, werden die Auswirkungen auf Motivation, Zusammenarbeit und Team-Dynamik häufig übersehen. Ein Softwareprojekt ist jedoch nur so erfolgreich wie das Team, das dahintersteht. Wenn technische Schulden die tägliche Arbeit erschweren, können Frustration und Überlastung die Folge sein, was langfristig die Leistungsfähigkeit des gesamten Teams gefährdet. Um diese Zusammenhänge zu verstehen, lohnt es sich, die psychologischen und sozialen Dimensionen technischer Schulden genauer zu betrachten.

=== Motivation und Arbeitszufriedenheit
Die Motivation von Entwicklern wird durch verschiedene Faktoren beeinflusst, darunter:
- Autonomie: Das Bedürfnis, eigenständig Entscheidungen zu treffen und die eigene Arbeit zu gestalten. [Quelle]
- Kompetenz: Der Wunsch, sich fachlich weiterzuentwickeln und die eigenen Fähigkeiten zu verbessern. [Quelle]
- Soziale Eingebundenheit: Das Bedürfnis nach Zugehörigkeit und Anerkennung im Team. [Quelle]
- Sinnhaftigkeit: Das Gefühl, an etwas Sinnvollem zu arbeiten und einen Beitrag zu leisten. [Quelle]
Technische Schulden können diese essenziellen Motivationsfaktoren erheblich beeinträchtigen. Wenn Entwickler regelmäßig mit schlecht strukturiertem, schwer verständlichem oder fehleranfälligem Code konfrontiert werden, fühlen sie sich oft entmündigt und frustriert. [Quelle] Anstatt kreativ und produktiv zu arbeiten, verbringen sie unverhältnismäßig viel Zeit mit der Behebung von Problemen, der Umgehung von Einschränkungen und der Analyse von Altlasten im Code. [Quelle] Der Mangel an Gestaltungsfreiheit und die ständige Auseinandersetzung mit wiederkehrenden Herausforderungen können dazu führen, dass Entwickler das Gefühl von Sinnhaftigkeit und Kontrolle über ihre Arbeit verlieren. Dies kann nicht nur die individuelle Arbeitszufriedenheit, sondern auch die Dynamik und Effizienz des gesamten Teams negativ beeinflussen.

=== Die psychologische Change-Kurve
Wenn technischer Schulden zu einem Problem wird, müssen oft Veränderungen im Entwicklungsprozess oder in der Teamstruktur vorgenommen werden, um die Schulden abzubauen und die Softwarequalität zu verbessern. [Quelle] Solche Veränderungen lösen bei den Betroffenen oft emotionale Reaktionen aus, die sich mit der psychologischen Change-Kurve beschreiben lassen. [Quelle] \

#figure(
  image("../figures/change-kurve-nach-kuebler-ross-streich.png", width: 100%),
  caption: [Die Kübler-Ross-Change-Kurve],
)<fig:change_curve>

#pagebreak()

Diese Kurve zeigt die typischen Phasen, die Menschen durchlaufen, wenn sie mit Veränderungen konfrontiert werden:

 + Schock und Verleugnung: Die erste Reaktion auf die Veränderung ist oft Unglaube und Ablehnung. [Quelle]
 + Frustration und Ärger: Wenn die Veränderung unvermeidlich ist, kommt es oft zu Frustration und Ärger. [Quelle]
 + Experimentieren und Entscheiden: In dieser Phase beginnen die Betroffenen, sich mit der Veränderung auseinanderzusetzen und neue Lösungsansätze zu suchen. [Quelle]
 + Integration und Akzeptanz: Schließlich wird die Veränderung akzeptiert und in den Alltag integriert. [Quelle]
Es  ist  wichtig,  dass  Führungskräfte  und  Teamleiter  die  psychologische  Change-Kurve  kennen  und  die  Betroffenen  bei  der  Bewältigung  der  Veränderung  unterstützen.  [Quelle]  Nur  so  kann  sichergestellt  werden,  dass  die  Veränderungen  erfolgreich  umgesetzt  werden  und  die  Motivation  und  Produktivität  des  Teams  nicht  leiden.

=== Soziologische Aspekte
Technischer  Schulden  kann  auch  zu  Konflikten  im  Team  führen.  [Quelle]  Unterschiedliche  Meinungen  über  den  Umgang  mit  technischen  Schulden,  unterschiedliche  Prioritäten  und  unterschiedliche  Arbeitsstile  können  zu  Spannungen  und  Streitigkeiten  führen.  [Quelle]  Wenn  ein  Entwickler  beispielsweise  viel  Wert  auf  Codequalität  legt  und  sich  bemüht,  technische  Schulden  zu  vermeiden,  während  ein  anderer  Entwickler  eher  pragmatisch  vorgeht  und  Abkürzungen  in  Kauf  nimmt,  kann  dies  zu  Konflikten  führen.  [Quelle]  Auch  die  Verteilung  von  Aufgaben  und  Verantwortlichkeiten  kann  zu  Konflikten  führen,  wenn  beispielsweise  bestimmte  Entwickler  immer  wieder  mit  der  Behebung  von  Fehlern  in  "altem"  Code  beauftragt  werden,  während  andere  Entwickler  an  neuen  Features  arbeiten  dürfen. Technische  Schulden  können  auch  die  Unternehmenskultur  negativ  beeinflussen.  [Quelle]  Wenn  technischer  Schulden  toleriert  oder  sogar  gefördert  wird,  kann  dies  zu  einer  Kultur  der  Schuldzuweisung  und  des  Misstrauens  führen. [Quelle] Entwickler  fühlen  sich  möglicherweise  unter  Druck  gesetzt,  schnell  Ergebnisse  zu  liefern,  auch  wenn  dies  auf  Kosten  der  Codequalität  geht.  [Quelle]  Dies  kann  zu  einer  Abwärtsspirale  führen,  in  der  die  Qualität  der  Software  immer  weiter  sinkt  und  die  Motivation  der  Entwickler  immer  mehr  leidet.