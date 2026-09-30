#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Core Concepts in\ Quantum Field Theory],
    author: [Yu Liu],
    abstract: [
        This note is a partial reading note of Peskin's book. #YL(
            [However, this note is stopped due to I'm taking a better
                QFT course. I'm not sure about continuing it or not,
                thus I just put it here.],
        )
    ],
)
#chapter[Fundamental Ideas]
#include "doc/fundamental.typ"

#chapter[Renormalization]
#include "doc/renormalization.typ"


#pagebreak()
#bibliography("references.bib")

