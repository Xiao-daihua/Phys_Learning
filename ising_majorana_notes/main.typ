#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Note on Ising/Majorana CFT Duality],
    author: [Yu Liu],
    abstract: [
        These notes give a concise introduction to the background
        gauge field language used in the bosonization of Ising and
        Majorana CFTs. We review $ZZ_2$ gauge fields, spin structures,
        and the Arf invariant, then catalogue the key partition
        function data before deriving the fermionization dualities
        relating Ising CFT and Majorana CFT on the torus (and more
        generally on closed Riemann surfaces). @karchWeb2dDualities2019.
    ],
)

#pagebreak()
#include "doc/sec1.typ"

#pagebreak()
#include "doc/sec2.typ"

#pagebreak()
#bibliography("references.bib")
