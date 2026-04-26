#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Mathematical Aspects of (Gauge) Field Theory],
    author: [Yu Liu],
    abstract: [This is a note on the mathematical basis of gauge
        theory. I intend to follow the renownd textbook
        @nakaharaGeometryTopologyPhysics2003a, which will provide an
        introduction to the mathematical tools of: homology group,
        cohomology group, fibre bundle, connection, chern class and
        index theorem which are widely used in gauge theory.],
)

#include "doc/homol.typ"

#pagebreak()
#bibliography("references.bib")

