#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
  title: [Modern Lectures on QFT],
  author: [Yu Liu],
  abstract: [],
)

#include "doc/sec1.typ"

#pagebreak()
#include "doc/sec2.typ"

#pagebreak()
#bibliography("references.bib")

