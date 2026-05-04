#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Note on Fermionizing Virasoro Minimal Models],
    author: [Yu Liu],
    abstract: [
        This note gives some advanced idea in fermionizing the
        Virasoro Minimal Models. Including the case with boundary
        presented.
    ],
)


#pagebreak()
#include "doc/Isingmaj.typ"

#pagebreak()
#include "doc/fermion1.typ"

#pagebreak()
#include "doc/fermboundarystate.typ"

#pagebreak()
#include "doc/fermion2.typ"

#pagebreak()
#include "doc/stateoperator.typ"

#pagebreak()
#bibliography("references.bib")
