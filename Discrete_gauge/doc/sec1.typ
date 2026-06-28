

Gauging is the case when we couple a QFT to a gauge field (often
dynamical, but some people may also call background gauge field as
gauging). Apart from its importance of studying interaction between
QFTs, gauging is also a powerful tool to study the symmetry of a QFT.


= Gauging a Continuous Symmetry

First we review some basics of coupling a QFT to a gauge field. Of
course, we can just do the minimal coupling and be happy with it.
However, to make it suit into a more general picture, we should not
assume we always have a conserved current or even a classical
lagrangian description. Then, how can we do it?

== Symmetry Characterized by Generators

When we want to pin down a symmetry in QFT, the usual tools are the
conserved current and the conserved charge. But these come from
Noether's theorem, which already assumes two things: the symmetry is
continuous, and it's invertible (so it forms a group). Neither is
really essential to being a symmetry — so current and charge can't
capture everything.

The Ward identity does better. A symmetry shows up as non-trivial
constraints on correlation functions, and that's exactly what the Ward
identity encodes. Nevertheless, a Ward identity is a constraint, not
an object you can build and play with. Moreover, having a constraint
on correlation function doesn't necessarily mean we have a symmetry,
for example, if a symmetry has an anomaly, the correlation function
indeed satisfy some constraints, but we think of it as the symmetry is
broken.

So what we'd really like is an "object-like" thing — like a current or
charge — that's general enough and accurate enough to describe
symmetry. Good news: it exists. It's the *symmetry generator*, and the
trick is that it's a topological operator. That's the property that
sets us free from continuity and invertibility, and it's what we'll
build the definition around.

In what follows, we'll let our intuition about continuous symmetries
lead the way — and watch the conserved charge turn into a topological
operator.

=== Classical Definition

We first take an example of a classical field theory with a U(1)
symmetry (say a complex scalar field). Noether's theorem tells us that
there is a conserved current $j$ satisfying the conservation equation:
$
    d * j = 0
$
And we can define a conserved charge by integrating the current over a
spatial slice:
$
    Q = integral.cont_(Sigma) * j
$
where $Sigma$ is a spatial slice. Now we can try to integrate the
current over a codimension-1 manifold $M_(d-1)$, which is not
necessarily a spatial slice, and define a charge as:
$
    Q(M_(d-1)) = integral.cont_(M_(d-1)) * j
$
and a related classical quantity we called the *symmetry generator*:
$
    U(M_(d-1)) = exp (i alpha Q(M_(d-1)))
$
One can prove that these objects are topological, which means that
they are invariant under continuous deformation of the manifold
$M_(d-1)$, as long as we don't cross any strange stuffs. This can be
proven with the stokes theorem:
$
    Q(M_(d-1)) = integral.cont_(M_(d-1)) * j = integral.cont_(M'_(d-1)) * j + integral.cont_(B_d) d * j = Q(M'_(d-1))
$
where $B_d$ is the manifold connecting $M_(d-1)$ and $M'_(d-1)$
satisfying:
$
    partial B_d = M_(d-1) union.sq M'_(d-1)
$


=== Quantum Symmetry Generator
<sec:qsg>

Now we generalize the classical object we define above to a quantum
one. Notice that the world is NOT classical, it is definitely true
that we can have some quantum object without classical counterparts.
Namely can't be derived from quantizing some classical object using
single quantization scheme (eg. canonical quantization), and the
symmetry generator is such an object.

Thus, we don't derive a quantum theory from a classical one, but use
different quantization scheme and results to justify how a quantum
symmetry generators exit what properties should they have.

The properties of *quantum symmetry generators* (and justifications)
are:

1. They are *Topological Operators*. This can be justified by the
    classical property of independent of continuous deformation,
    plugging them into a path integral won't change this fact.
    Moreover, as a quantum theory, in the canonical picture if we want
    to define these symmetry generators as line operators, they have
    to commute with the Energy-Momentum tensor, which generates the
    spacetime translation.


2. If inserted in a time slice, they act as an *operators on the
    Hilbert space* in the canonical formalism. This can be justified
    by analogizing the ordinary symmetry charge defined on a time
    slice.


3. If inserted in vertically in the path integral, they behave as a
    *defect, which twisted the Hilbert Space*. This can't be justified
    straightforwardly, but a few lines of calculation in the path
    integral formalism, for example, consider a free massless complex
    scalar field theory in 2D Euclidean spacetime:


Insert the defect along $S^1_tau$ at $x = 0$ into the Euclidean path
integral:
$
    Z_theta = integral cal(D)Phi thin cal(D)Phi^dagger thin
    e^(-S[Phi]) thin
    underbrace(exp(i theta integral_0^beta d tau thin j_x (tau, 0)), U_theta) ,
    quad
    j_x = i(partial_x Phi^dagger)Phi - i Phi^dagger partial_x Phi .
$
The insertion couples the current to a source localized at $x = 0$.
Writing it as $exp(i integral d^2 x thin A_mu j^mu)$ requires
$
    A_x (tau, x) = theta thin delta(x) , quad A_tau = 0 .
$
This promotes $partial_mu Phi -> (partial_mu - i A_mu)Phi$ in the
action. Compute the field strength:
$
    F_(tau x) = partial_tau A_x - partial_x A_tau = partial_tau (theta thin delta(x)) = 0 .
$
A flat connection carries no local physics; it can be removed by a
gauge transformation $Phi -> e^(i alpha(x)) Phi$,
$A_x -> A_x + partial_x alpha$. Choose
$
    alpha(x) = - theta integral_0^x delta(x') thin d x' = - theta thin Theta(x) ,
$
so that $A_x + partial_x alpha = theta delta(x) - theta delta(x) = 0$.
Define $tilde(Phi) = e^(i alpha(x)) Phi = e^(-i theta Theta(x)) Phi$.
Then $tilde(Phi)$ obeys the *standard free action* $S[tilde(Phi)]$
with no defect, and the measure is invariant ($|e^(i alpha)| = 1$,
Jacobian $= 1$). The original periodic field
$Phi(tau, x + 2pi) = Phi(tau, x)$ forces, on the redefined field, a
monodromy across one spatial period:
$
    tilde(Phi)(tau, x + 2pi)
    = e^(-i theta Theta(x + 2pi)) Phi(tau, x + 2pi)
    = e^(-i theta (Theta(x) + 1)) Phi(tau, x)
    = e^(-i theta) thin tilde(Phi)(tau, x) .
$
Equivalently, the field carrying the defect satisfies the *twisted*
boundary condition
$
    Phi_theta (tau, x + 2pi) = e^(i theta) thin Phi_theta (tau, x) .
$

The defect insertion is traded for a boundary twist:
$
    Z_theta
    = integral_(Phi(x + 2pi) = e^(i theta) Phi(x)) cal(D)Phi thin e^(-S[Phi])
    = tr_(cal(H)_theta (S^1_x)) thin e^(-beta H) .
$
Inserting $U_theta$ along Euclidean time $=$ tracing over the Hilbert
space quantized with the twisted boundary condition.

#note([
    2 and 3 properties are called the operator/defect principles
    @shaoWhatsDoneCannot2024
])

4. When going through local operators, they act as a *symmetry
    transformation on the local operators*. This can be justified by
    the Ward identity.

For example, consider inserting the symmetry generator on a manifold
that wrapped around the local operator, for a U(1) 0-form symmetry and
a local operator. We define wrapping around the local operator in the
canonical picture as:
$
    U_( alpha ) ( M_( d - 1 ) ) cal(O)_( q ) ( x ) U_( - alpha ) ( M'_( d - 1 ) )
$
We can calculate the correlation function of this object using the
Ward Identity.
$
    U_alpha (M_(d-1)) cal(O)_q(x) U_(-alpha)(M'_(d-1))
    = e^(i alpha integral_(N_d) d^d y thin partial^mu j_mu (y)) cal(O)_q(x) .
$
Remember, the Ward-Takahashi identity:
$
    partial^mu j_mu(y) cal(O)_q(x) = q thin delta^((d))(x-y) cal(O)_q(x)
$
By expanding the exponential and using the Ward-Takahashi identity, we
have:
$
    = sum_(n=0)^infinity (i alpha)^n / n! (integral_(N_d) d^d y thin partial^mu j_mu(y))^n cal(O)_q(x)
    = sum_(n=0)^infinity (i alpha q)^n / n! (integral_(N_d) d^d y thin delta^((d))(x-y))^n cal(O)_q(x) .
$
Since $x in N_d$, the integral $= 1$, so the sum resums to
$
    = sum_(n=0)^infinity (i alpha q)^n / n! cal(O)_q(x) = e^(i q alpha) cal(O)_q(x) .
$

=== A Slogan for Symmetry

The current/charge picture is tied to continuous symmetries with a
classical Lagrangian. To go beyond it, we adopt the following slogan.

#definition[Symmetry Slogan][
    A symmetry is characterized by the existence of a topological
    operator — a _symmetry generator_.]

This is a powerful and sensible generalization. As we will see, it
applies equally to continuous symmetries, discrete symmetries, and
even symmetries without an inverse, the so-called _non-invertible
symmetries_.

== (Higher Form) Gauge Field

Now we have a grasp of what is a symmetry, we turn to the other
question of gauging: what is a gauge field?

=== What is a Gauge Field?

Naively, we define a gauge field as a Lie algebra valued one form
field:
$
    A = A_mu d x^mu "where" A_mu in frak(g)
$
However, this is generally not the case.

- *A gauge field may not be globally defined.*

A classical and experimental example is the AB effect of U(1) gauge
field, where we know that:
$
    exp (i integral.cont_(C) A dif l)
$
and is exactly an experimental observable. Thus we need to rethink the
definition of gauge field. The critical point is that a gauge field
may not be defined globally, but only on patches, while field on
different patches are related by a suitable gauge transformation.

Moreover, from demanding consistency in AB phase, and a globally well
defined curvature (indeed we measure electric and magnetic fields and
don't see any singularity) naively we can have:
$
    integral.cont_(S) F = 0
$
But in fact this is too strong, we in fact only need to have a
quantization condition on the flux of the gauge field:
$
    integral.cont_(S) F in 2 pi ZZ
$
To have the theory well defined and the AB phase (or called Wilson
loop) as an observable. However, in the case that the flux is
non-trivial, an important phenomenon is that the gauge field is not
globally defined, but only on patches, and the transition function
between patches is non-trivial.

#note([
    In fact the non-trivial flux is physically interpreted as the
    integrating around the surface with magnetic charge inside.
    Experimentally, we haven't observed magnetic charge in the
    universe, but it is good to leave the possibility of their
    existence, which makes our life more interesting.
])

#note([
    Due to a non-globally defined gauge field the stokes theorem will
    not hold. However, we can also write:
    $
        integral_(S) F = integral.cont_(partial S) A
    $
    in the sense of being a phase, say:
    $
        exp(i integral_(S) F) = exp(i integral.cont_(partial S) A)
    $
])


- *A Gauge Transformation Parameter is not Globally Defined*

Moreover, gauge field admits gauge transformation:
$
    A arrow.r A + d Lambda
$
that doesn't change the physics. However, the gauge transformation
parameter $Lambda$ may not be globally defined, but only on patches.
The experiments and some deduction tells us that one can never tell
whether a solenoid has a magnetic flux $Phi$ or $Phi + Phi_0$, where
$Phi_0$ is the flux quantum. Thus, we should view that the
transformation of adding a flux quantum as a gauge transformation.
However, we may notice that such gauge transformation doesn't have a
globally well defined gauge transformation parameter, but only on
patches:
$
    Lambda = Phi_0 / (2 pi) phi.alt, quad phi.alt in [0, 2 pi),
$
where $phi.alt$ is the azimuthal angle around the solenoid. Indeed,
$
    d Lambda = Phi_0 / (2 pi) d phi.alt
$
is a globally well-defined closed 1-form, yet $Lambda$ itself jumps by
$Phi_0$ upon encircling the solenoid:
$
    Lambda(phi.alt = 2 pi) - Lambda(phi.alt = 0) = Phi_0,
$
so it is single-valued only on patches, not globally. The holonomy
picks up exactly one flux quantum,
$
    integral.cont d Lambda = Phi_0,
$
which shifts the Aharonov--Bohm phase by $q Phi_0 = 2 pi$ (for unit
charge), leaving all physical observables invariant. One should notice
that though $Lambda$ is note globally defined, $d Lambda$ is globally
defined, and the flux of $d Lambda$ is quantized.


=== Mathematical Characterization

A mathematical framework, namingly *fibre bundle* is developed to
characterize all these features of gauge field (which I wish to
introduce in another note). Now to make things simple, we try to
construct a gauge field step by steps:

- *Prepare Patches of Principle G Bundle*:

1. Given a manifold $M_d$ choose a set of open over ${U_i}$

2. On each patch $U_i$ we "choose a trivialization of the Pinciple
    G-bundle". This is kinds of equivalent to another fancy name,
    which is choosing a *section* of the bundle, which is a map from
    the base space to the total space of the bundle:
$
    s_i : U_i arrow.r P
$
well we can just understand as mapping each point in the patch to a
group element and its only defined locally. Physically this is
equivalent to choosing a gauge, as discussed before, we can't choose a
global gauge, thus we can only choose a local gauge on each patch.

3. On the overlap of two patches $U_i$ and $U_j$, we have a transition
    function:
$
    g_( i j) : U_i sect U_j arrow.r G
$
this relates the two trivialization on the two patches, and we have:
$
    s_i = g_( i j) s_j
$
4. On a triple overlap of three patches $U_i$, $U_j$ and $U_k$, we
    have a consistency condition:
$
    g_( i j) g_( j k) g_( k i) = 1
$


- *Construct Gauge Field*:

gauge field can be understood as a connection on the principle
G-bundle after a pullback by the section we choose. But we can just
understand it as a well defined Lie algebra valued one form on each
patch:
$
    A^((i)) in Omega^1(U_i) times.o frak(g)
$
and on the overlap of two patches, we have a gauge transformation:
$
    A^((j)) = g_(i j)^(-1) A^((i)) g_(i j) + g_(i j)^(-1) d g_(i j)
$

Two important objects of the principle bundle are the curvature and
the holonomy of the gauge field, which are defined as:
$
    F^((i)) = d A^((i)) + A^((i)) and A^((i))
$
$
    "Hol"(C) = exp (i integral.cont_(C) A)
$
physically, they correspond to the field strength and the AB phase of
U(1) gauge field.

- *Quantization of Flux*:

With suitable consistent mathematical construction of gauge field from
fibre bundles, we can see that quantized flux arises naturally from
mathematical properties of fibre bundles.

- Quantization of U(1) flux is related to the first Chern class of the
    U(1) bundle, which is an integer.

$
    c_1 = 1/(2 pi) integral.cont_(S) F in ZZ
$

- Quantization of SU(N) non-abelian flux is related to the second
    Chern class of the non-abelian bundle, which is also an integer.
$
    c_2 = 1/(8 pi^2) integral.cont_(S) "Tr"(F and F) in ZZ
$

=== Higher Form U(1) Gauge Field

This note we try to touch some generalization of symmetry to higher
form. Thus, we need to define what is a higher form gauge field. A
theorem shows that:
#theorem[Abelian Higher Form Symmetry][
    A higher form symmetry is always an abelian symmetry, thus the
    gauge field of a higher form symmetry is always an abelian gauge
    field.
]
To make life simple, we here just consider *U(1) higher form symmetry*
and *U(1) higher form gauge field*, which is a common case.

For a p-form symmetry, the current is a (p+1)-form $j$, thus it should
couple to a (p+1)-form U(1) gauge field $A$ as:
$
    S = integral_(M_d) A and *j
$
where $A$ is a (p+1)-form gauge field, and the gauge transformation
(no matter large or small) is:
$
    A arrow.r A + d Lambda_p
$
And here $Lambda_p$ is a *p-form Gauge Field* itself!!! For $A$ as a
(p+1)-form gauge field, the field strength is a (p+2)-form, that are
quantized under the following condition:
$
    F = d A ,quad integral.cont_(S_(p+2)) F in 2 pi ZZ
$
it is quantized for any p+2 dimensional closed manifold $S_(p+2)$.
Moreover, we should notice that the gauge transformation is also a
gauge field. Thus there is a "gauge transformation of gauge
transformation", which is a (p-1)-form gauge field $Lambda_(p-1)$:
$
    Lambda_p arrow.r Lambda_p + d Lambda_(p-1)
$
and the gauge transformation have a quantized flux condition as well:
$
    integral.cont_(S_(p+1)) d Lambda_p in 2 pi ZZ
$
Notice that just like the 1-form case $Lambda_p$ may not be globally
defined, but $d Lambda_p$ is globally defined.




== How to Couple to a Gauge Field?

Now we start with the true topic, Gauging. By gauging a symmetry, we
mean coupling the theory to a gauge field and make it dynamical. This
section is to point out an observation. Namely, coupling to a gauge
field is equivalent to inserting the symmetry generator properly.

In the section @sec:qsg, we have notice this fact, inserting the
symmetry generator along time direction gives us the coupling to a
background gauge field. This should be a point to help us generalize
gauging to discrete symmetries, since we don't really have a gauge
field or a current, but we have a symmetry generator in discrete case.

Now we first understand this fact in the continuous case. Say consider
a U(1) 0-form symmetry, we can insert the symmetry generator as:
$
    U_alpha (M_(d-1)) = exp (i alpha integral_(M_(d-1)) * j)
$
We can see that this object is exactly the same as coupling to a
background gauge field $A$ with:
$
    A = alpha omega_(M_(d-1))
$
where $omega_(M_(d-1))$ is a delta function one form localized on the
manifold $M_(d-1)$, which is the Poincare dual of $M_(d-1)$. We can
rewrite the symmetry generator as:
$
    U_alpha (M_(d-1)) = exp (i integral_(M_(d)) A and * j)
$
Thus, we can see a general fact that:

- Coupling to a background gauge field is equivalent to inserting the
    symmetry generator in a proper way. In literature, this is also
    said that coupling to background gauge field is a *fine mesh of
    topological defects*.


#remark([
    The calculation here is classical, but we can understand it as
    quantum by plugging it into the path integral.
])


Also for gauge invariant operators in background gauge field, we can
understand its correlation function as a theory without background
gauge field but with some symmetry generator inserted.

For example, consider a gauge invariant local operator in U(1)
symmetry theory coupling to a background gauge field $A$. If the local
operator transform non-trivially under the U(1) symmetry, say:
$
    cal(O)_q arrow.r e^(i q alpha) cal(O)_q
$
Then it is not a gauge invariant operator, consider a 2 point function
correlation function:
$
    angle.l cal(O)_q (x) cal(O)_(-q)(y) angle.r
$
it is no longer gauge invariant under a gauge transformation
$A arrow.r A + d alpha$, since the local operator transform
non-trivially. However, we can insert a Wilson line connecting the two
local operators, which is defined as:
$
    W_(q) (gamma) = exp (i q integral_(gamma) A)
$
Then the correlation function:
$
    angle.l cal(O)_q (x) W_(q) (gamma) cal(O)_(-q)(y) angle.r
$
is gauge invariant. Then, if we consider one operator move around, the
Wilson line should also move with it, thus the gauge invariant
correlation function become:
$
    cal(O)_q (x) arrow.r exp (i q integral_(gamma) A ) cal(O)_q (x)
$
In the case of gauge field of:
$
    A = alpha omega_(M_(d-1))
$
we can see that the gauge invariant correlation function behaves as:
$
    cal(O)_q (x) arrow.r exp (i q alpha) cal(O)_q (x)
$
which is exactly the bahavior of the local operator going through a
symmetry generator.

== Anomaly

For a system with a lagrangian description, we may expect a symmetry
of the lagrangian may not be a symmetry of the QFT, say, the
corresponding Ward identity is not satisfied. This is what we call an
*anomaly*.

=== Definition and Classification

Due to the discussion of symmetry and background gauge field, we can
give a definition from the perspective of gauging.
#definition[Anomaly][
    We say a p-form symmetry has an anomaly if we couple the theory to
    a background gauge field (which is of course a (p+1)-form gauge
    field):
    $
        Z [ A_( p + 1 ) ] = integral cal(D) phi.alt^( a ) e^( i S [ phi.alt^( a ), A_( p + 1 ) ] ).
    $
    and find that the theory is not gauge invariant:
    $
        Z [ A_( p + 1 ) + d lambda_( p ) ] = e^( - i integral cal(A) [ A_( p + 1 ), lambda_( p ) ] ) times Z [ A_( p + 1 ) ].
    $
]
There are some classification and nouns for anomalies.

- *'t Hooft Anomaly*: the anomaly vanishes when the gauge field we
    couple to is turned off.

- *Gauge Anomaly*: no matter the gauge field is on or off, the
    symmetry is always broken.

There is also something called a *mixed 't Hooft anomaly*, which is
when the theory have 2 symmetries, and if we couple one of them to a
background gauge field, then if we want to couple the other one to a
background gauge field, it won't be gauge invariant.

There are two examples of anomalies:

- In QED, there is a gauge anomaly, know as the ABJ anomaly.
$
    cal(L) = ( 1 ) / ( 4 e^( 2 ) ) f_( mu nu ) f^( mu nu ) + i overline(Psi) ( diff_( mu ) - i a_( mu ) ) gamma^( mu ) Psi.
$
The axial U(1) symmetry is broken by the ABJ anomaly, Ward identity is
not satisfied, and becomes:
$
    d * j^( A ) = ( 1 ) / ( 4 pi^( 2 ) ) f and f
$

- In pure 4D Maxwell theory, there is a mixed 't Hooft anomaly between
    the electric and magnetic 1-form symmetries:
$
    j^( E ) = ( 1 ) / ( e^( 2 ) ) f, wide j^( M ) = ( 1 ) / ( 2 pi ) * f.
$

=== Anomaly Inflow

One trick to control the anomaly is to introduce a theory with an
extra dimension, and have the original theory living on the boundary
of the extra dimension manifold.

Consider a theory with anomaly that coupled to a background gauge
field, living on the manifold $cal(M)_d$:
$
    Z[A_(p+1)] = integral cal(D) phi.alt^( a ) e^( i S [ phi.alt^( a ), A_( p + 1 ) ] )
$
We can view the anomalous partition function not as a number, but as
section of a complex line bundle or a vector in an one dimensional
Hilbert space without a canonical choice of basis:
$
    Z[A_(p+1)] in cal(H)_(cal(M)_d)
$
Then we can think of this one dimensional Hilbert space as the Hilbert
space of some d+1 dimensional QFT with the boundary $cal(M)_d$. We can
use the d+1 dimensional model to characterize the anomaly of the
original theory, and this is what we call *anomaly inflow*.

- *Example Construction*

There is one explicit construction of the d+1 dimensional theory. We
introduce a theory living on a manifold $cal(N)_(d+1)$ with the
boundary:
$
    cal(M)_d = partial cal(N)_(d+1)
$
The theory should have the following properties:

- The Hilbert space of the theory on $cal(M)_(d+1)$ is one
    dimensional.

- The action of the theory, say: $hat(A)[A_(p+1)]$ should satisfy:
$
    d cal(A) [ A_( p + 1 ), lambda_( p ) ] = delta_( lambda_( p ) ) hat(A) [ A_( p + 1 ) ],
$

Then if we consider a theory of:
$
    hat(Z) [ A_( p + 1 ) ] = Z [ A_( p + 1 ) ] times e^( i integral_( N_( d + 1 ) ) hat(A) [ A_( p + 1 ) ] ),
$
Then it is invariant under gauge transformation of the background
gauge field and we see that the anomaly is "controlled" by the d+1
dimensional theory.
