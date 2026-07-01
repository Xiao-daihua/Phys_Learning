#import "../env/lib.typ": *

This chapter serves as an introduction to basic ideas in QFT, which
will be intensively used and discussed in the following chapters. It
will not be self contained, yet all preliminaries(free field, path
integral, Feymann diagrams) will be found in basic QFT textbooks.


= Kallen-Lehmann Form of Propagator
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

== KL Form for Scalar Propagator

First we have a look at the massive scalar propagator. We then need to
specify our assumptions on the theory, which are:

+ The dynamical fields are scalar fields, and the theory is
    relativistic and Lorentz invariant.

+ The theory is a sensible quantum theory.

With these minimal assumptions, we can think of the spectrum of the
theory can be organized as follow.

=== Spectrum of a Lorentz Invariant QFT

First, the Lorentz invariance of quantum theory means that the theory
have a symmetry algebra of Poicare Algebra and the Hilbert space forms
a representation of the Poincare Algebra.

A maximally commuting subalgebra of the momentum operator $H, P^i$,
which can be used to label states in the theory. We consider a series
of states in this theory with 0 eigenvalues of $P^i$. We will call
them:
$
    ket(lambda_0) "satisfying" P^i ket(lambda_0) = 0 quad H ket(lambda_0) = m_lambda ket(lambda_0)
$
Then we can construct a series of states with nonzero eigenvalues of
$P^i$ by applying the Lorentz boost operator $K^i$ on the states
$ket(lambda_0)$, which will give us a series of states
$ket(lambda_p)$:
$
    ket(lambda_p) = e^(i K^i xi_i) ket(lambda_0)
$
Due to the fact that $P^mu P_mu = m_lambda^2$ is a Casimir and commute
with the Poincare algebra, we know that under the boost operator, the
states will satisfy the following eigenvalue equations:
$
    P^i ket(lambda_p) = p^i ket(lambda_p) quad H ket(lambda_p) = sqrt(p^2 + m_lambda^2) ket(lambda_p)
$
Thus in general Hilbert Space of this Lorentz Invariant QFT take form
of:
$
    cal(H) = plus.o.big_(lambda, p) ket(lambda_p)
$

#remark[
    Notice that $ket(lambda_p)$ may not be a single particle states,
    but just a general momentum and energy eigenstate may have many
    particle and messy interaction and bounding between them.
]

=== Spectral Representation of Scalar Propagator

Consider this theory with the above spectrum. We can then write the 2
point correlation function as:
$
    braket(Omega, cal(T) phi(x) phi(0), Omega)
$
Now we insert a complete set of states in the middle, which is:
$
    II = ketbra(Omega, Omega) + sum.integral_lambda (dif^3 p) / (2 pi)^3 1 / (2 E_p (lambda)) ketbra(lambda_p, lambda_p)
$
#remark[notice that here we assume the relativistic normalization of
    states.]
Notice that:
$
    braket(Omega, phi(x), Omega) = 0
$
This is due to the $ZZ_2$ symmetry of the scalar theory, if we
redefine $phi arrow.r - phi$ the lagrangian is invariant, yet the
correlation function will change sign, thus it must be zero. (For
highier spin, the fact of being an irreducible representation of
lorentz group will also lead to the vanishing of such one point
function.)

Then we have:
$
    braket(Omega, cal(T) phi(x) phi(0), Omega) = sum.integral_lambda (dif^3 p) / (2 pi)^3 1 / (2 E_p (lambda)) e^(-i p x) braket(Omega, phi(x), lambda_p) braket(lambda_p, phi(0), Omega)
$
Now have a look at the matrix element
$braket(Omega, phi(x), lambda_p)$. We can translate the field to 0 by
the property of $phi(x)$ being a lorentz scalar:
$
    braket(Omega, phi(x), lambda_p) = braket(Omega, e^(i P x) phi(0) e^(-i P x), lambda_p) = e^(-i p x) braket(Omega, phi(0), lambda_p)
$
By being a scalar, it must satisfy:
$
    U(Lambda) phi(0) U^(dagger)(Lambda) = phi(0)
$
Thus we have:
$
    braket(Omega, phi(0), lambda_p) = braket(Omega, U^(dagger)(Lambda) U(Lambda) phi(0) U^(dagger)(Lambda) U(Lambda), lambda_p) = braket(Omega, phi(0), lambda_0)
$

=== Kallen-Lehmann Form of Scalar Propagator




== KL Form of Fermion Propagator


== Example: QED Fermion Propagator
Now we have a look at a concrete example of a lorentz invariant QFT,
which is QED.


#pagebreak()

= LSZ Reduction Formula

For a scattering theory, it is important predict the S-matrix as
observable quantity. For QFT, LSZ reduction formula is the one that
tells us how to *calculate the S-matrix from the correlation
functions*. Then we can:
+ Use Feymann diagrams to calculate correlation functions (Both
    functional derivative method or canonical quantization with
    interaction picture).
+ Use LSZ reduction formula to get the S-Matrix from the correlation
    functions.

#pagebreak()
= Optic Theorem





#pagebreak()
= Ward-Takahashi Identity
Symmetry plans the fundamental role in QFT, and the Ward-Takahashi
identity is a consequence of the symmetry. I'll first talk about the
application in electrodynamics, following section 7.4 of
@peskinIntroductionQuantumField1995, then I will talk about the formal
structure of the Ward-Takahashi identity following section 9.6 of
@peskinIntroductionQuantumField1995.

== Ward-Takahashi Identity in QED


== Ward-Takahashi Identity in General QFT





