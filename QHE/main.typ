#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Note on Quantum Hall Effect],
    author: [Yu Liu],
    abstract: [This is a note on QHE, based on David Tong's lecture
        notes. But I want to make it more concise and capture a smooth
        idea flow of the topic. My main goal is to basically
        understand this topic and give insights to its relation with
        TFT, Anyons and CFT.],
)

#pagebreak()
#include "doc/sec1.typ"

#pagebreak()
#include "doc/sec2.typ"

#pagebreak()
#include "doc/sec3.typ"

#pagebreak()
#include "doc/sec4.typ"

#pagebreak()
#bibliography("references.bib")

