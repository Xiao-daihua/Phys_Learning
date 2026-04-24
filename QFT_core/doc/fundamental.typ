#import "../env/lib.typ": *

This chapter serves as an introduction to basic ideas in QFT, which
will be intensively used and discussed in the following chapters. It
will not be self contained, yet all preliminaries(free field, path
integral, Feymann diagrams) will be found in basic QFT textbooks.

= LSZ Reduction Formula
For a scattering theory, it is important predict the S-matrix as
observable quantity. For QFT, LSZ reduction formula is the one that
tells us how to *calculate the S-matrix from the correlation
functions*. Then we can:
+ Use Feymann diagrams to calculate correlation functions (Both
    functional derivative method or canonical quantization with
    interaction picture).
+ Use LSZ reduction formula to get the S-matrix from the correlation
    functions.

== Kallen-Lehmann Form of Propagator
This is a topic to prepare us for the LSZ reduction formula. The
question is:

- What is a "particle propagating" in a general Lorentz invariant QFT?

To have a concrete understanding of *particle* in interacting theory,
we then have the tools of using QFT to describe the scattering of
particles, and the S-matrix.

In free QFT, we know that the 2 point correlation function is
interpreted as the amplitude of a particle propagating from one point
to another:
$
    braket(0, cal(T) phi(x) phi(0), 0)
$
However, in general QFT, one may not expect this function to have such
interpretation, since the propergator may include propergation of
multiparticle states or even particle coming vaccum due to the
interaction.

Thus, the role of the KL form is to tell us what part of the 2 point
correlation function can be interpreted as the amplitude of a particle
propagating, and what part is not.

=== Kallen-Lehmann Form of Scalar Propagator

First we have a look at the scalar propagator. 



=== Kallen-Lehmann Form of Fermion Propagator


=== Example: QED Fermion Propagator
Now we have a look at a concrete example of a lorentz invariant QFT,
which is QED.


== LSZ Reduction Formula


=== Derivation of LSZ Reduction Formula

=== S-Matrix from Feymann Diagrams



#pagebreak()
= Ward-Takahashi Identity
Symmetry plans the fundamental role in QFT, and the Ward-Takahashi
identity is a consequence of the symmetry. I'll first introducs the
formal structure of the Ward-Takahashi identity following section 9.6
of @peskinIntroductionQuantumField1995, and then talk about the
application in electrodynamics, following section 7.4 of
@peskinIntroductionQuantumField1995.



#pagebreak()
= Quantization of Gauge Fields



