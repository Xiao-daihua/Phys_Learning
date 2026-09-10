#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
  title: [String Theory Seminar],
  author: [Yu Liu],
  abstract: [This is the lecture note of the String Theory Seminar in EPFL 2026 spring semester. The main reference will be Polchinski's String Theory. Metric convention $(-,+,+,+)$],
)

#pagebreak()
#include "doc/lec1.typ"


#pagebreak()
#bibliography("references.bib")

