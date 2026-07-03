#import "../env/lib.typ": *

This chapter serves as an introduction to basic ideas in QFT, which
will be intensively used and discussed in the following chapters. It
will not be self contained, yet all preliminaries(free field, path
integral, Feymann diagrams) will be found in basic QFT textbooks.


= Kallen-Lehmann Form of Propagator
This is a topic to prepare us for the LSZ reduction formula. The
question is:

- What is a "particle propagating" in a general interacting Lorentz
    invariant QFT?

To have a concrete understanding of *particle* in interacting theory,
we then can know how to QFT to describe the scattering of particles.
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

Thus, the role of the KL form is to tell us which part of the 2 point
correlation function can be interpreted as the amplitude of a particle
propagating, and which part is not.

== KL Form for Scalar Propagator

First we have a look at the massive scalar propagator. We then need to
specify our assumptions on the theory, which are:

+ The dynamical fields are scalar fields, and the theory is Poincare
    invariant.

+ The theory is a sensible quantum theory.

With these minimal assumptions, we can think of the spectrum of the
theory can be organized as follow.

=== Spectrum of a Lorentz Invariant QFT

First, the Poincare invariance of quantum theory means that the theory
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


=== Kallen-Lehmann Form of Scalar Propagator
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
is true for most cases. This is due to the $ZZ_2$ symmetry of the
scalar theory, if we redefine $phi arrow.r - phi$ the lagrangian is
invariant, yet the correlation function will change sign, thus it must
be zero. For highier spin, the fact of being an irreducible
representation of lorentz group will also lead to the vanishing of
such one point function:
$
    braket(Omega, phi_a (x), Omega) =& braket(Omega, U(Lambda) U^dagger (Lambda) phi_a (x) U(Lambda) U^dagger(Lambda), Omega) \
    =& D(Lambda)_a^b braket(Omega, phi_b (Lambda^(-1) x), Omega)
$
if we take $x = 0$, then only when $D(Lambda)_a^b = delta_a^b$ we can
have nonzero one point function, which is only true for scalar
representation. Thus for highier spin representation, the one point
function must vanish.

Then we have for $x^0 > 0$:
$
    braket(Omega, phi(x) phi(0), Omega) = sum.integral_lambda (dif^3 p) / (2 pi)^3 1 / (2 E_p (lambda)) e^(-i p x) braket(Omega, phi(x), lambda_p) braket(lambda_p, phi(0), Omega)
$
Now have a look at the matrix element
$braket(Omega, phi(x), lambda_p)$. We can translate the field to 0 by
the property of $phi(x)$ being a lorentz scalar:
$
    braket(Omega, phi(x), lambda_p) = braket(Omega, e^(i P x) phi(0) e^(-i P x), lambda_p) = e^(-i p x) braket(Omega, phi(0), lambda_p)
$
#remark([
    notice the poisson bracket and canonical quantization relation
    gives us the standard boost generator is $U(a) = e^(i P dot a)$,
    and the relation of:
    $
        U(a) phi(x) U^dagger(a) = phi(x + a)
    $
    and for the lorentz transformation, we have
    $U(Lambda) = e^(- i/2 J^(mu nu) omega_(mu nu))$ and the relation
    of:
    $
        U(Lambda) phi(x) U^dagger (Lambda) = phi(Lambda x)
    $
])
By being a scalar, it must satisfy:
$
    U(Lambda) phi(0) U^(dagger)(Lambda) = phi(0)
$
Thus we can insert a boost operator to the matrix element, which gives
us:
$
    braket(Omega, phi(0), lambda_p) = braket(Omega, U^(dagger)(Lambda) U(Lambda) phi(0) U^(dagger)(Lambda) U(Lambda), lambda_p) = braket(Omega, phi(0), lambda_0)
$
With all these ingrediant we can write the 2 point correlation
function as following by making the 3 integral into a 4 integral while
the integral of $p^0$ gives out the energy function exactly, the
result is:
$
    braket(Omega, phi.alt ( x ) phi.alt ( y ), Omega) = sum_( lambda ) integral ( d^( 4 ) p ) / ( ( 2 pi )^( 4 ) ) ( i ) / ( p^( 2 ) - m_( lambda )^( 2 ) + i epsilon.alt ) e^( - i p dot.c ( x - y ) ) abs(braket(Omega, phi.alt ( 0 ), lambda_( 0 )))^( 2 ).
$
#note([
    The calculation of intergrating out $p^0$ is a standard trick. the
    time order of $x^0 > y^0$ tells us that the integral contour of
    $p^0$ should be closed in the lower half plane, and the only pole
    is at $p^0 = sqrt(p^2 + m_lambda^2) - i epsilon$. Thus this gives
    us the residue of the integrand at this pole, which is exactly
    $1 / (2 E_p (lambda)) e^(-i p^0 t)$. The other case of $x^0 < y^0$
    is similar, and the result is the same.
])
All above deduction is the same for the case of $x^0 < y^0$, and takes
the exact same form. One may recognize the Feymann propagator within
the integral, yet it is in fact a sum of Feymann propagators with
different masses, giving us the Kallen-Lehmann form of the propagator:
#theorem[Kallen-Lehmann Form of Propagator][
    The 2 point correlation function of a general interacting lorentz
    invariant QFT can be written as:
    $
        braket(Omega, cal(T) phi(x) phi(y), Omega) = integral_( 0 )^( oo ) ( d M^( 2 ) ) / ( 2 pi ) rho ( M^( 2 ) ) D_( F ) ( x - y ; M^( 2 ) ),
    $
    where $D_F (x - y; M^2)$ is the Feymann propagator of a free
    scalar field and:
    $
        rho ( M^( 2 ) ) = sum_( lambda ) ( 2 pi ) delta ( M^( 2 ) - m_( lambda )^( 2 ) ) abs(braket(Omega, phi.alt ( 0 ), lambda_( 0 )))^( 2 ).
    $
]
For a typical theory the spectural density will take the form of:
$
    rho ( M^( 2 ) ) = 2 pi Z delta ( M^( 2 ) - m^( 2 ) ) + "continuum"
$
Here $m$ is the physical mass of the particle and is in general
different from the mass parameter in the lagrangian. And $Z$ is the
field strength renormalization factor, which is:
$
    Z = abs(braket(Omega, phi.alt ( 0 ), lambda_( 0 )))^( 2 ).
$

=== Interpretation of KL Form

The KL form of the propagator in momentum space behaves as:
$
    integral d^4 x e^(i p x) braket(Omega, cal(T) phi(x) phi(0), Omega) = i Z / ( p^( 2 ) - m^( 2 ) + i epsilon.alt ) + "branch cut terms for " p^( 2 ) > ( 2 m )^( 2 )
$
we interpret the first term as the amplitude of a single particle
propagating. And $m$ as the physical mass of the particle, and $Z$ as
the field strength renormalization factor. The second term is the
contribution of multiparticle states.


== KL Form of Fermion Propagator

For a fermion propagator, the KL form is similar to the scalar case:
$
    integral d^4 x e^(i p x) braket(Omega, cal(T) psi(x) overline(psi)(0), Omega) = i Z (feynman(p) + m) / ( p^( 2 ) - m^( 2 ) + i epsilon.alt ) + "branch cut terms for " p^( 2 ) > ( 2 m )^( 2 )
$
where the field strength renormalization is defined as:
$
    braket(Omega, psi(0), p s) = sqrt(Z) u(p,s)
$
Similarly, we interpret this pole as the particle with physical mass
$m$ propagating.

== Example: QED Fermion Propagator

Now we look at a concrete example, which is the Fermion propagator in
QED, to see if it satisfy this form. We now have tools to deal with
interacting theory by doing perturbation, thus we can try to evaluate
$m$ and $Z$ perturbatively.

- Leading Order

The leading order of the fermion propagator is just the free
propagator:
$
    i (feynman(p)+m_0)/ (p^2 - m_0^2 + i epsilon)
$
we'd expect at 0 order $m = m_0$ and $Z = 1$.
#remark([
    Notice that the above result is a Fourier transformation of the 2
    point correlation function, not the Feymann diagram for S matrix,
    which is not defined yet, but often taught in an early stage.
])

- First Order

The first order correction due to interaction is the following
diagram:

#figure(
    image("../assets/firstorderqedprop.png", width: 30%),
    caption: [First order correction to the fermion propagator in QED.
    ],
) <fig-firstorderqedprop>

#note([
    To regulate the infrared divergence of the photon, we need a small
    photon mass $mu$. With some tricks this won't effect the physical
    result. This is another important topic.
])

#YL([better to come back after the electric vertex function example!])


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





