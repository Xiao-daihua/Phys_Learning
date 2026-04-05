#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
  title: [Note on Quantum Hall Effect],
  author: [Yu Liu],
  abstract: [],
)
Main Text 

#include "doc/sec1.typ"

#pagebreak()
#bibliography("references.bib")

