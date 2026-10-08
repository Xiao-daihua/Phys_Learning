#import "../env/lib.typ": *

= Radial Quantization

In the last discussion, we focus on a general notation that is better
suited for lorentzian signature. In the Euclidean theory (especially
in Radial quantization we will discuss), the Unitarity of the
operators is not satisfied. A corresponding concept is the reflection
positivity, one can see more on this discussion in Simmons-Duffin's
lecture. A brief reason is that we want the wick rotation to be
consistent, and the Lorentzian theory is unitary, the Euclidean theory
will be reflection positive yet the Euclidean transformation is not
unitarily represented.

However, we still want in the certain Hilbert space the time
generators is Hermitian. Thus, we conventionally define the generators
in another exponential map:
$
    O = e^(- i omega_a G_a) = e^(omega_a G_a^E),
$

$
    tensor(P, -mu)^E = - i P_mu,
    quad
    tensor(K, -mu)^E = - i K_mu,
    quad
    tensor(M, -mu, -nu)^E = - i M_(mu nu),
    quad
    D^E = -i D.
$
correspondingly, the generators $O$ will be:
$
    omega_a G^E_a = a_mu tensor(P, -mu)^E + b_mu tensor(K, -mu)^E
    + 1/2 theta_(mu nu) tensor(M, -mu, -nu)^E + lambda D^E.
$
We will see that the dilatation generators will be Hermitian in the
radial quantization Hilbert space. From now on we will drop the
superscript $E$ and use the new convention for the generators. And the
commutation relations between the generators and the local primaries
will be changed into:


$
    [D, tensor(phi, -alpha) (0)]
    &= Delta tensor(phi, -alpha) (0), quad
    [tensor(M, -mu, -nu), tensor(phi, -alpha) (0)]
    &= (tensor(S, -mu, -nu))_(alpha beta)
    tensor(phi, -beta) (0), quad
    [tensor(K, -mu), tensor(phi, -alpha) (0)]
    &= 0.
$

The action of the conformal generators at a general spacetime point
can be derived using translations:
$
    [tensor(P, -mu), tensor(phi, -alpha) (x)]
    &= tensor(partial, -mu)
    tensor(phi, -alpha) (x), \
    [D, tensor(phi, -alpha) (x)]
    &= (
        Delta
        + tensor(x, +mu) tensor(partial, -mu)
    )
    tensor(phi, -alpha) (x), \
    [tensor(M, -mu, -nu), tensor(phi, -alpha) (x)]
    &= -(
        tensor(x, -mu) tensor(partial, -nu)
        - tensor(x, -nu) tensor(partial, -mu)
    )
    tensor(phi, -alpha) (x)
    + (tensor(S, -mu, -nu))_(alpha beta)
    tensor(phi, -beta) (x), \
    [tensor(K, -mu), tensor(phi, -alpha) (x)]
    &= 2 tensor(x, -mu) Delta
    tensor(phi, -alpha) (x)
    + (
        2 tensor(x, -mu)
        tensor(x, +nu) tensor(partial, -nu)
        - x^2 tensor(partial, -mu)
    )
    tensor(phi, -alpha) (x)
    + 2 tensor(x, +rho)
    (tensor(S, -mu, -nu))_(alpha beta)
    tensor(phi, -beta) (x).
$

In this convention, the Euclidean conformal algebra is
$
    [D, tensor(P, -mu)]
    &= tensor(P, -mu),
    qquad
    [D, tensor(K, -mu)]
    = -tensor(K, -mu), \
    [tensor(K, -mu), tensor(P, -nu)]
    &= 2(
        tensor(delta, -mu, -nu) D
        - tensor(M, -mu, -nu)
    ), quad
    [tensor(M, -mu, -nu), tensor(P, -rho)]
    = -(
        tensor(delta, -mu, -rho) tensor(P, -nu)
        - tensor(delta, -nu, -rho) tensor(P, -mu)
    ), \
    [tensor(M, -mu, -nu), tensor(K, -rho)]
    &= -(
        tensor(delta, -mu, -rho) tensor(K, -nu)
        - tensor(delta, -nu, -rho) tensor(K, -mu)
    ), \
    [tensor(M, -mu, -nu), tensor(M, -rho, -sigma)]
    &= -tensor(delta, -mu, -rho)
    tensor(M, -nu, -sigma)
    + tensor(delta, -mu, -sigma)
    tensor(M, -nu, -rho)
    + tensor(delta, -nu, -rho)
    tensor(M, -mu, -sigma)
    - tensor(delta, -nu, -sigma)
    tensor(M, -mu, -rho), \
    [tensor(P, -mu), tensor(P, -nu)]
    &= 0,
    qquad
    [tensor(K, -mu), tensor(K, -nu)]
    = 0, qquad
    [D, D]
    = 0,
    qquad
    [D, tensor(M, -mu, -nu)]
    = 0.
$

Translations reconstruct an operator away from the origin is given by:
$
    cal(O) (x)
    = e^(tensor(x, +mu) tensor(P, -mu))
    cal(O) (0)
    e^(-tensor(x, +mu) tensor(P, -mu)).
$
In this convention the descendants are defined as:
$
    tensor(P, -mu_1) ... tensor(P, -mu_n)
    phi_alpha (0).
$


== Radial Quantization

=== Lorentzian Theory in Cylinder Coordinate

Write a point in $RR^d$ as the following coordinates $(tau,n)$:
$
    tensor(x, +mu) = r tensor(n, +mu),
    quad
    r=e^tau,
    quad
    tensor(n, +mu) tensor(n, -mu)=1.
$
One can verify that this is indeed a conformal transformation. For a
*scalar primary* of dimension $Delta$, we define its form on the
cylinder coordinates as:

$
    cal(O)_("cyl") (tau,n)
    = e^(tau Delta)
    cal(O)_("flat") (e^tau, n).
$
The origin of the plane corresponds to $tau arrow.r -infinity$, while
spatial infinity corresponds to $tau arrow.r +infinity$. From this
relation, we can see how the conformal generators act on the cylinder
coordinates. The commutation relations between the conformal
generators and the cylinder coordinate primaries are given by:
$
    tensor(nabla, -mu)^("S")
    := (
        tensor(delta, -mu, +nu)
        - tensor(n, -mu) tensor(n, +nu)
    )
    frac(partial, partial tensor(n, +nu)).
$

The conformal generators act on the cylinder operator as
$
    [D, cal(O)_("cyl")(tau, n)]
    &= tensor(partial, -tau) cal(O)_("cyl")(tau, n), \
    [tensor(M, -mu, -nu), cal(O)_("cyl")(tau, n)]
    &= -(
        tensor(n, -mu) tensor(nabla, -nu)^("S")
        - tensor(n, -nu) tensor(nabla, -mu)^("S")
    ) cal(O)_("cyl")(tau, n), \
    [tensor(P, -mu), cal(O)_("cyl")(tau, n)]
    &= e^(-tau) (
        tensor(n, -mu) (tensor(partial, tau) - Delta)
        + tensor(nabla, -mu)^("S")
    ) cal(O)_("cyl")(tau, n), \
    [tensor(K, -mu), cal(O)_("cyl")(tau, n)]
    &= e^tau (
        tensor(n, -mu) (tensor(partial, tau) + Delta)
        - tensor(nabla, -mu)^("S")
    ) cal(O)_("cyl")(tau, n).
$
We care about the cylinder coordinate because for a CFT in canonical
formalism, we usually consider a Lorentzian CFT on a cylinder, we do
the canonical quantization for lorentzian theory to get the Hilbert
space. By wick rotation and coordinate symmetry transformation, we can
investigate this theory in Euclidean cylinder, and with a coordinate
transformation above we can have a theory on the plane.
#remark([Notice that we only do quantization in the lorentzian theory,
    and the Hilbert space sstays the same no matter what we do to the
    cooridnate transformation, its just symmetry transformations on
    the same Hilbert space.])

From this procedure, the canonical Hamiltonian of the lorentzian
theory (which is definitely a Hermite operator in the Hilbert space)
which we quantized on will be something like:
$
    U(t) = e^(- i t H), quad H^dagger = H. quad
    phi(t, x) = U(t)^dagger phi(0, x) U (t).
$
under the wick rotation, we have $t arrow.r -i tau$, and the Euclidean
time evolution operator will be:
$
    U(tau) = e^(- tau H), quad H^dagger = H. quad phi(tau, x) = e^(tau H) phi(0, x) e^(- tau H).
$
Notice that here the Hamiltonian is still Hermitian in the Hilbert
space, but the Eculidean time evolution operator is not unitary.
Taking a derivative on both side, this gives the commutation relation
between the Hamiltonian and the local operators:
$
    [H, phi(tau, x)]
    = tensor(partial, -tau) phi(tau, x).
$
One may notice that this is exactly what we called the dilatation
operator $D$. Thus, we identify the dilatation operator (which is a
abstract generator) with the Hamiltonian of the lorentzian theory on
the cylinder, which is a Hermitian operator on the Hilbert space.

The rotation on the equal time slice in the original lorentzian theory
will be generated by:
$
    U(R) = e^(- i 1/2 theta M^C_(mu nu)), quad (M_(mu nu)^C)^dagger = M_(mu nu)^C.
$
However in our convention, the generator of the rotation is given by :
$
    U(R) = e^( 1/2 theta M_(mu nu)), quad M_(mu nu)^dagger = -M_(mu nu).
$
Thus, one may identify that
$
    M_(mu nu) = - i M^C_(mu nu).
$
However, due to we insist that the lorentzian theory is Unitary, the
rotation generator is anti-Hermite in the Hilbert space.


=== Radial Quantization

Now we are convinced that it is consistent to define a canonical
formalism of the CFT on the Euclidean plane as the one that quantized
on the lorentzian theory on the Cylinder (which is well defined in
ordinary QFT courses). However, it is too complicated to first do a
quantization on a cylinder in lorentzian signature and then wick
rotate to the Euclidean plane. Thus, what we do is that we develop a
formalism purely on the plane but gives the exactly same Hilbert space
as the Unitary lorentzian theory on the cylinder. This approach is
called the *radial quantization*.

#remark([
    One may wonder doesn't that mean that the analytical continuation
    to a lorentzian CFT is uniquely fixed by the Euclidean time
    choice? Indeed, different choice of a Euclidean time in fact is
    correlated with different analytical continuation to a lorentzian
    CFT. Radial quantization is correspond to the analytical
    continuation of the cylinder coordinate. In one naively try to do
    an analytical continuation of the $x^0$ coordinate, the result
    won't be unitary therefore won't be a consistent CFT.

    This note only focus on the radial quantization and the
    consequently Euclidean theory. And we will not discuss lorentzian
    CFT.
])

Currently, I would understand the radial quantization is a canonical
formalism of CFT that gives a Unitary theory in the cylinder
coordinate in lorentzian time.


// A unitary CFT is one for which radial quantization produces a Hilbert
// space with a positive-definite inner product and a self-adjoint
// dilatation operator $D$ bounded from below. In Euclidean language this
// condition is reflection positivity.

We take the following conditions for a Unitary Hilbert space:

- $D$ is a Hermite Operator in the Hilbert space and is bounded from
    below.

- We exist a vacuum state $|0⟩$ which is invariant under the conformal
    group.
//
// - We assume that there are local operators $cal(O)_alpha$ that group
//     in primaries and descendants. And the operators acting on the
//     vaccum certainly gives the Hilbert space.
//
// Thus, the Hilbert space is labeled by the eigenvalues of $D$ and
// transform covariantly under $M_(mu nu)$. Where $cal(O)_alpha$ is a
// local operator with dimension $Delta$ and spin transformation
// $S_(mu nu)$, then we can get the Hilbert space group as:
// $
//     D |cal(O)_alpha⟩ = Delta |cal(O)_alpha⟩, quad
//     tensor(M, -mu, -nu) |cal(O)⟩
//     = (tensor(S, -mu, -nu))_(alpha beta)
//     |cal(O)_beta⟩.
// $
//

For a state $|psi⟩$ in the Hilbert space, we can act n times with
$K_mu$ on it and due to $D$ is bounded from below, we will eventually
get a series of state $|psi_0⟩$ which is annihilated by all $K_mu$.
Thus the Hilbert space should be spanned by the states of the form:
$
    tensor(P, -mu_1) ... tensor(P, -mu_n)|psi_0⟩.
$
We then can conclude the Hilbert space should be spanned by a series
of primary states and its descendants. The primary states satisfies
the following conditions:
$
    tensor(K, -mu)|psi_alpha⟩ = 0, quad
    D|psi_alpha⟩ = Delta|psi_alpha⟩, quad
    tensor(M, -mu, -nu)|psi_alpha⟩
    = (tensor(S, -mu, -nu))_(alpha beta)
    |psi_beta⟩.
$

we then define a primary operator in this Hilbert space as:
#definition[Primary Operator][
    A primary operator correpsond to the state $ket(O_i)$ is defined
    as a local operator $O_i$ such that:
    $
        O_i (0)|0⟩ = |O_i⟩,
    $
]
#remark([This relation is more of a axiom that such operator always
    exists not merely if it exist we can do such identification.])

Then one can find that these operator indeed have the correct
commutation relation with the conformal generators as the ordinary
conformal primary fields acting on the vaccum state at least (A
natural generalization can be the commutation holds everywhere). More
importantly, this construction tells us that a CFT can have a
one-to-one correspondence between the primary operators and the
primary states in the Hilbert space. This is called the
*state-operator correspondence*.

#remark([
    One may encounter the statement that "state lives on a equal time
    slice". However, I don't think this statement is precise enough. I
    think what is truly means is that the Hilbert space is dependent
    on the choice of time coordinate. Different choice of time will
    lead to different inner product and all sort of structures.
])

#YL([The discussion here should not be understand as a prove or
    something, but an argument of universal structure. A rigourous
    treatment should be done in axiomatic CFTs.])


=== Correlation Functions

Before we only define the correlation function in the path integral
formalism. Now with a canonical formalism, we need to find an
equivalent way to compute the same object. We find out that the
correlation function can be computed in the Hilbert space as:
$
    ⟨cal(O)_1 (x_1) ... cal(O)_n (x_n)⟩
    = ⟨0|cal(R) cal(O)_1 (x_1) ... cal(O)_n (x_n)|0⟩.
$
The LHS is the correlation function defined in the path integral
formalism, and the RHS is a correlator in the Hilbert space. (Of
course, they should consistent with the same action $S$)

#YL([This certainly needs proof. However, one can convince themselves
    this is true.])

From now on, we will always use the simple notation of
$
    ⟨cal(O)_1 (x_1) ... cal(O)_n (x_n)⟩
$
for the correlation function. However, the formalism we use may
interchange between the path integral formalism and the canonical
formalism due to the above equivalence.

=== What is "time" dependent

#YL([Discussion here is personal, I believe it needs further
    clarification.])

- Path Integral Formalism

In the path integral formalism, in Euclidean formalism, nothing is
time dependent. The Euclidean path integral and correlation functions
are only theory dependent unique object.

If we want to get a lorentzian theory from the Euclidean theory. We
need to specify an analytical continuation. The choice of analytical
continuation should depend on what we call "time" direction.

- Canonical Formalism

In the canonical formalism, in Euclidean formalism. The Hilbert space
depends on what we called an Euclidean time direction. However, all
choice of time should give us the exact same correlation functions
that matches the path integral formalism.

If we want to get a lorentzian theory from a Euclidean theory, we only
get the one that the Euclidean time specified us for.

=== Radial Conjugation

// An operator inserted at the origin prepares a state:
//
// $
//     |cal(O)⟩ = cal(O) (0)|0⟩.
// $
//
// Conversely, shrinking a sphere surrounding a state to zero defines a
// local operator. This is the state-operator correspondence.
//
// Because $D$ is bounded below and $tensor(K, -mu)$ lowers the
// dimension, every conformal multiplet contains a lowest-weight state
// annihilated by all $tensor(K, -mu)$. This lowest-weight state is the
// state created by a primary operator.

For a scalar primary, a consistent radial conjugation (The complex
conjugation of radial quantization) acts as inversion:
$
    (cal(O) (x))^dagger
    = frac(1, abs(x)^(2Delta))
    cal(O) (frac(x, x^2)).
$

The bra corresponding to $|cal(O)⟩$ is therefore

$
    ⟨cal(O)|
    = lim_(abs(x) arrow.r infinity)
    abs(x)^(2Delta) ⟨0|cal(O) (x).
$

If the two-point function is normalized by
$
    ⟨cal(O) (x) cal(O) (0)⟩
    = frac(1, abs(x)^(2Delta)),
$
then
$
    ⟨cal(O)|cal(O)⟩
    = lim_(abs(x) arrow.r infinity)
    abs(x)^(2Delta)
    ⟨cal(O) (x)cal(O) (0)⟩
    = 1.
$

The adjoint relations between conformal generators within this Hermite
conjugation are:
$
    D^dagger=D,
    quad
    tensor(P, -mu)^dagger=tensor(K, -mu) quad D^dagger = D, quad M_(mu nu)^dagger = -M_(mu nu).
$
These relations are the key input in the derivation of the unitarity
bounds below.

== Operator product expansion

Consider two local operators $phi_1$ and $phi_2$ inserted at points
$x$ and $0$. In radial quantization, the state created by these two
operators is:
$
    phi_1 (x) phi_2 (0)|0⟩.
$

Expanding this state in a complete basis of dilatation eigenstates
gives a convergent sum over conformal multiplets:

$
    phi_1 (x) phi_2 (0)|0⟩
    = sum_i C_i (x,partial)
    cal(O)_i (0)|0⟩.
$

Equivalently, inside correlation functions, we can formally write a
relation:

$
    phi_1 (x)phi_2 (0)
    = sum_(cal(O))
    lambda_(12 cal(O))
    C_cal(O) (x,partial)
    cal(O) (0).
$

The sum runs over primary operators; the differential operator
$C_cal(O) (x,partial)$ generates the complete tower of descendants.
Conformal symmetry fixes this differential operator in terms of the
dimensions and spins, up to the theory-dependent OPE coefficient
$lambda_(12 cal(O))$.

#remark([
    In fact, a general OPE should be defined within the Radial
    ordering of the operators.
    $
        cal(R) phi_1 (x) phi_2 (y)
        = sum_(cal(O))
        lambda_(12 cal(O))
        C_cal(O) (x,y,partial)
        cal(O) (y).
    $
    Here it is implicit cause we choose $x$ and 0 points. Field at
    different radius can't generally assumed to commute, as we care
    mostly on correlators, we defined OPE by the radial ordering,
    whose action on the vaccum directly give the correlator.
])
Due to the identification of correlation functions in the path
integral formalism and the canonical formalism, we can also define OPE
equivalently in the path integral formalism:
$
    phi_1 (x)phi_2 (0)
    = sum_(cal(O))
    lambda_(12 cal(O))
    C_cal(O) (x,partial)
    cal(O) (0).
$
here we don't have operators and states (and of course radial
ordering). This expansion make sense only insider the correlation
function.


// The OPE converges whenever a spVhere can be drawn around the expanded
// operators without enclosing any other insertion. It is therefore a
// genuine convergent Hilbert-space expansion, rather than merely an
// asymptotic short-distance series.

=== Leading terms and the first descendant

For a scalar primary $cal(O)$ of dimension $Delta$ appearing in the
OPE of scalar primaries $phi_1$ and $phi_2$, the leading terms are

$
    phi_1 (x)phi_2 (0)
    supset.eq
    frac(
        lambda_(12 cal(O)),
        abs(x)^(k)
    )
    ( cal(O) (0)
        + alpha tensor(x, +mu) partial_mu cal(O) (0)
        + dots ).
$
We can match the coefficients by the following approach. We compare
the action of $D, K_mu$ on the OPE. However, one way is that we first
do an OPE expand to the RHS and then act with the generators. The
other way is that we first act with the generators on the LHS and then
do an OPE expand to the RHS. The two results should be the same.
Comparing the terms should fix the coefficients.

Acting with $D$ fixes the power of $abs(x)$:

$
    k = Delta_1+Delta_2-Delta.
$

Acting with the special conformal generator fixes the relative
coefficient of the first descendant. For a scalar primary,

$
    [tensor(K, -mu),cal(O) (x)]
    = (2Delta tensor(x, -mu)
        +2tensor(x, -mu)tensor(x, +nu)partial_nu
        -x^2 partial_mu)
    cal(O) (x).
$

The result is

$
    alpha
    = frac(Delta_1+Delta-Delta_2, 2Delta).
$

In particular, the numerator contains $Delta_1-Delta_2$, not
$Delta_1+Delta_2$. The identity contribution $Delta=0$ must be treated
separately and has no descendants.

The same coefficient can be obtained directly by inserting the OPE
into a three-point function. Conformal invariance fixes

$
    ⟨phi_1 (x_1)phi_2 (x_2)cal(O) (x_3)⟩
    = frac(
        lambda_(12 cal(O)),
        abs(x_(12))^(Delta_1+Delta_2-Delta)
        abs(x_(23))^(Delta_2+Delta-Delta_1)
        abs(x_(13))^(Delta_1+Delta-Delta_2)
    ).
$
And pluging in the OPE ansatz into the 3 point correlation function
for the first two fields and then use the equivalent of the canonical
and path integral formalism tells us that :
$
    ⟨phi_1 (x)phi_2 (0)cal(O) (x_3)⟩ &= bra(0) cal(R) phi_1 (x)phi_2 (0)cal(O) (x_3)ket(0)\
    &= sum_cal(O)
    lambda_(12 cal(O))
    C_cal(O) (x_(12),partial_(x_2))
    ⟨cal(O) (x_2)cal(O) (x_3)⟩|_(x_2 = 0).
$
// For a spinning exchanged primary,
//
// $
//     tensor(cal(O), -mu_1, -dots, -mu_ell) (0),
// $
//
// the same logic applies, but the OPE also contains the tensor
// structures allowed by rotation symmetry.

== Unitarity bounds

In radial quantization, positivity of descendant norms constrains the
possible scaling dimensions. For a scalar primary state $|cal(O)⟩$,

$
    ⟨cal(O)|tensor(K, -mu)tensor(P, -nu)|cal(O)⟩
    = 2Delta tensor(delta, -mu, -nu)
    ⟨cal(O)|cal(O)⟩.
$

Thus positivity at level one implies $Delta >= 0$. The stronger scalar
bound comes from the level-two descendant

$
    tensor(P, +mu)tensor(P, -mu)|cal(O)⟩.
$

Its norm is

$
    norm(tensor(P, +mu)tensor(P, -mu)|cal(O)⟩)^2
    = 8d Delta
    (Delta-frac(d-2, 2))
    norm(|cal(O)⟩)^2.
$

Therefore a scalar primary in a unitary CFT satisfies

$
    Delta=0
    quad "for the identity," quad
    "or" quad
    Delta >= frac(d-2, 2).
$

// When the nontrivial bound is saturated, the level-two descendant is
// null:
//
// $
//     tensor(P, +mu)tensor(P, -mu)|cal(O)⟩=0.
// $
//
// In position space this is the free equation of motion
//
// $
//     partial^2 cal(O) (x)=0.
// $

For a symmetric traceless primary of spin $ell>=1$,

$
    tensor(cal(O), -mu_1, -dots, -mu_ell) (x),
$

positivity of the level-one divergence descendant gives

$
    Delta >= d-2+ell.
$

// At saturation the divergence descendant is null, so the operator is
// conserved:
//
// $
//     partial^mu
//     tensor(cal(O), -mu, -mu_2, -dots, -mu_ell) (x)
//     =0.
// $
//
// Important examples are
//
// $
//     ell=1:
//     quad
//     Delta>=d-1,
//     quad
//     partial^mu tensor(J, -mu) (x)=0
//     " at saturation",
// $
//
// $
//     ell=2:
//     quad
//     Delta>=d,
//     quad
//     partial^mu tensor(T, -mu, -nu) (x)=0
//     " at saturation".
// $
//
// The free scalar saturates the scalar bound, conserved global-symmetry
// currents saturate the spin-one bound, and the stress tensor saturates
// the spin-two bound.

== Conformal Blocks

For four identical scalar primaries of dimension $Delta_phi$,
conformal symmetry gives

$
    ⟨phi (x_1)phi (x_2)phi (x_3)phi (x_4)⟩
    = frac(
        cal(G) (u,v),
        abs(x_(12))^(2Delta_phi)
        abs(x_(34))^(2Delta_phi)
    ),
$

where the conformal cross-ratios are

$
    u
    = frac(
        x_(12)^2 x_(34)^2,
        x_(13)^2 x_(24)^2
    ),
    quad
    v
    = frac(
        x_(14)^2 x_(23)^2,
        x_(13)^2 x_(24)^2
    ).
$

Applying the OPE to the pairs $(12)$ and $(34)$ yields the
conformal-block decomposition

$
    cal(G) (u,v)
    = sum_cal(O)
    lambda_(phi phi cal(O))^2
    G_(Delta,ell) (u,v).
$
More explicitly, we have:
$
    lr(
        [C_Delta(x_12, partial_y) C_Delta(x_34, partial_z)
            ⟨phi_Delta (y) phi_Delta (z)⟩]
    )
    |_(y = frac(x_1 + x_2, 2), z = frac(x_3 + x_4, 2))
    = frac(
        G_(Delta, ell)(u, v),
        abs(x_12)^(2 Delta_E) abs(x_34)^(2 Delta_E)
    )
$

The conformal block $G_(Delta,ell) (u,v)$ contains the contribution of
one exchanged primary of dimension $Delta$ and spin $ell$, together
with all of its descendants. Once the external dimensions and the
quantum numbers $(Delta,ell)$ are specified, the block is fixed
entirely by conformal symmetry.It solves the Casimir differential
equation with appropriate boundary conditions.

// For nonidentical external scalars, the block also depends on the
// dimension differences $Delta_1-Delta_2$ and $Delta_3-Delta_4$.

// Conformal blocks are eigenfunctions of the quadratic conformal
// Casimir. The corresponding eigenvalue is
//
// $
//     C_2(Delta,ell)
//     = Delta(Delta-d)+ell(ell+d-2).
// $
//
// All local correlation functions can, in principle, be reconstructed
// from the CFT data
//
// $
//     { (Delta_i,R_i), lambda_(i j k) },
// $
//
// consisting of the dimensions and rotation representations of primary
// operators together with all allowed OPE coefficients.
//
// Different orders of applying the OPE must give the same correlator.
// For identical scalars, equality of the $(12)(34)$ and $(14)(23)$
// channels gives
//
// $
//     cal(G) (u,v)
//     = (frac(u, v))^(Delta_phi)
//     cal(G) (v,u),
// $
//
// or equivalently
//
// $
//     sum_cal(O)
//     lambda_(phi phi cal(O))^2
//     ( v^(Delta_phi) G_(Delta,ell) (u,v)
//         -u^(Delta_phi) G_(Delta,ell) (v,u) )
//     =0.
// $
//
// This crossing equation is the associativity condition of the OPE. The
// conformal-bootstrap program combines crossing symmetry with unitarity
// to constrain, or sometimes solve for, the allowed CFT data.
//
//
