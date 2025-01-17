#let blockingNotice(title: "Sperrvermerk", layoutConfig: none) = {
  show: layoutConfig
  heading(numbering: none,outlined: false, bookmarked: true, title)
  v(1em)
  text()[
    Diese Hausarbeit dient ausschließlich der Bewertung im Rahmen des entsprechenden Moduls und darf nur von der prüfenden Person sowie gegebenenfalls weiteren dazu befugten Personen innerhalb der Hochschule eingesehen werden. Jegliche Vervielfältigung, Veröffentlichung oder Weitergabe an Dritte ist ohne ausdrückliche Zustimmung des Verfassers / der Verfasserin unzulässig.
  ]
}
