#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Gauging Discrete Symmetry],
    author: [X. D. H.],
    abstract: [
        This note is about gauging a discrete symmetry. We will first
        review what gauging is in a continuous case and then try to
        define a counterpart for a discrete symmetry. Then we try to
        derive some general consequences of theory after gauging.
    ],
)


Gauging is the case when we couple a QFT to a gauge field (often
dynamical, but some people may also call background gauge field as
gauging). Apart from its importance of studying interaction between
QFTs, gauging is also a powerful tool to study the symmetry of a QFT.

#pagebreak()
#include "doc/sec1.typ"

#pagebreak()
#include "doc/sec2.typ"

#pagebreak()
#include "doc/sec3.typ"


#pagebreak()
#bibliography("references.bib")

