#import "env/mytemp.typ": *
#import "env/lib.typ": *

#show: notetemp.with(
    title: [Core Concepts in\ Quantum Field Theory],
    author: [Yu Liu],
    abstract: [This note is a summary of formal core concepts in
        quantum field theory. Including Symmetry, Renormalization,
        Anomalies, Solitons and Instantons. The note is mainly based
        on Peskin and Schroeder's "An Introduction to Quantum Field
        Theory"@peskinIntroductionQuantumField1995, Tong's lecture
        notes on gauge theory, and some other references.],
)
#chapter[Fundamental Ideas]
#include "doc/fundamental.typ"

#chapter[Renormalization]
#include "doc/renormalization.typ"

#chapter[Renormalization Group]
#include "doc/rg.typ"

#chapter[Spontaneous Symmetry Breaking]
#include "doc/symmetry.typ"

#chapter[Anomalies]
#include "doc/anomaly.typ"



#pagebreak()
#bibliography("references.bib")

