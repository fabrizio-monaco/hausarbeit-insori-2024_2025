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
Technischer Schulden wirkt sich auch negativ auf die Qualität der Software aus. [Quelle] Fehleranfälliger Code, mangelnde Tests und unzureichende Dokumentation erhöhen die Wahrscheinlichkeit von Bugs und Problemen im Produktivbetrieb. Die Software wird "instabiler" und anfälliger für Fehler, was zu Systemausfällen,  Datenverlusten oder Sicherheitslücken führen kann. [Quelle] Ein Beispiel: Wenn  in einem  Online-Shop  wegen technischer Schulden die Bezahlfunktion ausfällt oder sensible Kundendaten gestohlen werden, verlieren die  Kunden das Vertrauen und wenden sich möglicherweise an die Konkurrenz. Die Behebung solcher Fehler im  Nachhinein ist oft sehr aufwändig und teuer, und der Imageschaden kann dauerhaft sein. [Quelle] Studien  haben gezeigt, dass die Fehlerbehebung in Code mit hohen technischen Schulden bis zu fünfmal so lange dauern kann  wie in Code mit geringen technischen Schulden. [Quelle] Dies liegt daran, dass die Entwickler mehr Zeit  benötigen, um die Ursache des Fehlers zu finden und die betroffenen Code-Stellen zu identifizieren.

=== Erhöhte Wartungskosten
Die Wartung von Software mit hohen technischen Schulden ist aufwändiger und teurer. [Quelle] Die Behebung von Fehlern, die Anpassung an neue Anforderungen und die Integration neuer Technologien werden zu einer Herausforderung, da der Code schwer zu verstehen und zu modifizieren ist. Dies führt zu steigenden Wartungskosten, die die weitere Entwicklung der Software erheblich behindern können. [Quelle] In der Praxis kann dies bedeuten, dass ein Großteil des IT-Budgets für die Wartung bestehender Systeme aufgewendet werden muss, anstatt in die Entwicklung neuer Features oder die Verbesserung bestehender Funktionalitäten zu investieren. [Quelle] Technischer Schulden kann also zu einer Art "Falle" werden, die Unternehmen daran hindert, innovativ zu sein und sich an veränderte Marktbedingungen anzupassen.

=== Erschwerte Zusammenarbeit
Wenn der Code schwer verständlich und undokumentiert ist, wird die Zusammenarbeit im Team erschwert. [Quelle] Es ist schwieriger, Code von anderen Entwicklern zu verstehen und zu ändern, was zu Missverständnissen, Fehlern und Konflikten führen kann. Gerade in größeren Teams oder bei verteilter Entwicklung kann technischer Schulden die Kommunikation und Koordination erheblich behindern. [Quelle] Die fehlende Transparenz und die Schwierigkeiten bei der Code-Integration können zu Frustration und Demotivation im Team führen. [Quelle] Studien haben gezeigt, dass technischer Schulden zu einer erhöhten Fluktuation in Entwicklungsteams führen kann, da Entwickler es vorziehen, in einem Umfeld zu arbeiten, in dem sie sich auf die Entwicklung neuer Features konzentrieren können, anstatt ständig mit "altem Ballast" zu kämpfen.

=== Geringere Flexibilität
Technischer Schulden reduziert die Flexibilität der Software. [Quelle] Es wird schwieriger, die Software an neue Anforderungen anzupassen oder neue Technologien zu integrieren, da Änderungen am Code oft unvorhergesehene Nebenwirkungen haben können. Die Software wird "starr" und "unflexibel", was die Innovationsfähigkeit des Unternehmens einschränken und die Wettbewerbsfähigkeit beeinträchtigen kann. [Quelle] In der heutigen dynamischen Geschäftswelt ist es wichtig, dass Unternehmen schnell auf veränderte Marktbedingungen reagieren können. Software mit hohen technischen Schulden hindert Unternehmen daran, neue Produkte und Dienstleistungen zu entwickeln oder bestehende Angebote anzupassen. Dies kann zu einem Wettbewerbsnachteil führen und die langfristigen Erfolgsaussichten des Unternehmens gefährden.

#pagebreak()

== Team
<ch:effects_technical_debt:team>
Während die technischen Auswirkungen von Schulden oft offensichtlich sind, werden die psychologischen und soziologischen Folgen für das Entwicklerteam häufig unterschätzt. [Quelle]  Dabei ist ein motiviertes und effizientes Team essenziell für den Erfolg eines Softwareprojekts. Technischer Schulden kann jedoch die Motivation, die Zusammenarbeit und die Teamdynamik negativ beeinflussen und somit die Produktivität und die Qualität der Software beeinträchtigen. [Quelle] Um diese Auswirkungen zu verstehen, ist es hilfreich, sich mit den grundlegenden Faktoren der menschlichen Motivation und den typischen Reaktionen auf Veränderungen auseinanderzusetzen.

=== Motivation und Arbeitszufriedenheit
Die Motivation von Entwicklern wird durch verschiedene Faktoren beeinflusst, darunter:
- Autonomie: Das Bedürfnis, eigenständig Entscheidungen zu treffen und die eigene Arbeit zu gestalten. [Quelle]
- Kompetenz: Der Wunsch, sich fachlich weiterzuentwickeln und die eigenen Fähigkeiten zu verbessern. [Quelle]
- Soziale Eingebundenheit: Das Bedürfnis nach Zugehörigkeit und Anerkennung im Team. [Quelle]
- Sinnhaftigkeit: Das Gefühl, an etwas Sinnvollem zu arbeiten und einen Beitrag zu leisten. [Quelle]
Technischer Schulden kann diese Motivationsfaktoren negativ beeinflussen. Wenn Entwickler ständig mit schlecht geschriebenem Code und technischen Schulden kämpfen müssen, fühlen sie sich oft entmündigt, frustriert und demotiviert. [Quelle] Sie haben weniger Freiraum für kreative Lösungen und müssen viel Zeit mit der Behebung von Fehlern und der Umgehung von Problemen verbringen, anstatt sich auf die Entwicklung neuer Features konzentrieren zu können. [Quelle] Dies kann zu einem Gefühl der Ohnmacht und Sinnlosigkeit führen.

=== Die psychologische Change-Kurve
Wenn technischer Schulden zu einem Problem wird, müssen oft Veränderungen im Entwicklungsprozess oder in der Teamstruktur vorgenommen werden, um die Schulden abzubauen und die Softwarequalität zu verbessern. [Quelle] Solche Veränderungen lösen bei den Betroffenen oft emotionale Reaktionen aus, die sich mit der psychologischen Change-Kurve beschreiben lassen. [Quelle] Diese Kurve zeigt die typischen Phasen, die Menschen durchlaufen, wenn sie mit Veränderungen konfrontiert werden:

 + Schock und Verleugnung: Die erste Reaktion auf die Veränderung ist oft Unglaube und Ablehnung. [Quelle]
 + Frustration und Ärger: Wenn die Veränderung unvermeidlich ist, kommt es oft zu Frustration und Ärger. [Quelle]
 + Experimentieren und Entscheiden: In dieser Phase beginnen die Betroffenen, sich mit der Veränderung auseinanderzusetzen und neue Lösungsansätze zu suchen. [Quelle]
 + Integration und Akzeptanz: Schließlich wird die Veränderung akzeptiert und in den Alltag integriert. [Quelle]
Es  ist  wichtig,  dass  Führungskräfte  und  Teamleiter  die  psychologische  Change-Kurve  kennen  und  die  Betroffenen  bei  der  Bewältigung  der  Veränderung  unterstützen.  [Quelle]  Nur  so  kann  sichergestellt  werden,  dass  die  Veränderungen  erfolgreich  umgesetzt  werden  und  die  Motivation  und  Produktivität  des  Teams  nicht  leiden.

=== Soziologische Aspekte
Technischer  Schulden  kann  auch  zu  Konflikten  im  Team  führen.  [Quelle]  Unterschiedliche  Meinungen  über  den  Umgang  mit  technischen  Schulden,  unterschiedliche  Prioritäten  und  unterschiedliche  Arbeitsstile  können  zu  Spannungen  und  Streitigkeiten  führen.  [Quelle]  Wenn  ein  Entwickler  beispielsweise  viel  Wert  auf  Codequalität  legt  und  sich  bemüht,  technische  Schulden  zu  vermeiden,  während  ein  anderer  Entwickler  eher  pragmatisch  vorgeht  und  Abkürzungen  in  Kauf  nimmt,  kann  dies  zu  Konflikten  führen.  [Quelle]  Auch  die  Verteilung  von  Aufgaben  und  Verantwortlichkeiten  kann  zu  Konflikten  führen,  wenn  beispielsweise  bestimmte  Entwickler  immer  wieder  mit  der  Behebung  von  Fehlern  in  "altem"  Code  beauftragt  werden,  während  andere  Entwickler  an  neuen  Features  arbeiten  dürfen. Technische  Schulden  können  auch  die  Unternehmenskultur  negativ  beeinflussen.  [Quelle]  Wenn  technischer  Schulden  toleriert  oder  sogar  gefördert  wird,  kann  dies  zu  einer  Kultur  der  Schuldzuweisung  und  des  Misstrauens  führen. [Quelle] Entwickler  fühlen  sich  möglicherweise  unter  Druck  gesetzt,  schnell  Ergebnisse  zu  liefern,  auch  wenn  dies  auf  Kosten  der  Codequalität  geht.  [Quelle]  Dies  kann  zu  einer  Abwärtsspirale  führen,  in  der  die  Qualität  der  Software  immer  weiter  sinkt  und  die  Motivation  der  Entwickler  immer  mehr  leidet.