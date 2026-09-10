#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [QM4 Lecture Notes],
    author: [Yu Liu],
    abstract: [This is my lecture note on QM4 in EPFL for 2026 spring
        semester. This is not a full note on the course, but focusing
        on one main topic: QM in a background Gauge Field],
)

#pagebreak()
#include "doc/lec5.typ"

#pagebreak()
#include "doc/lec6.typ"

// #pagebreak()
// #include "doc/lec7.typ"
//
// #pagebreak()
// #include "doc/lec8.typ"



#pagebreak()
#bibliography("references.bib")

