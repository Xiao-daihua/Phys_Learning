#import "../env/lib.typ": *

= QED and Non-Abelian Gauge Theories


== Quantum electrodynamics

=== Vector Field

A relativistic quantum field theory containing a massless spin-one
particle can be described using a vector field $A_mu$ with the
redundancy

$
    A_mu (x)
    arrow.r
    A_mu (x) + partial_mu alpha(x),
    quad
    alpha(x) in RR.
$
The basic gauge-invariant local object is the field strength
$
    F_(mu nu)
    = partial_mu A_nu - partial_nu A_mu,
    quad
    F_(mu nu) = -F_(nu mu).
$

The unique parity-even gauge-invariant kinetic term with two
derivatives is

$
    cal(L)_("Maxwell")
    = -1/4 F_(mu nu) F^(mu nu).
$

In four spacetime dimensions,

$
    [A_mu] = 1,
    quad
    [F_(mu nu)] = 2,
    quad
    [psi] = 3/2.
$

A possible dimension-six contraction of three field strengths
vanishes:

$
    tensor(F, -mu, +nu)
    tensor(F, -nu, +rho)
    tensor(F, -rho, +mu)
    = 0.
$

The leading pure-photon corrections therefore occur at dimension
eight. For example,

$
    Delta cal(L)
    = c_1/Lambda^4
    (F_(mu nu) F^(mu nu))^2
    + c_2/Lambda^4
    (F_(mu nu) tilde(F)^(mu nu))^2
    + dots,
$
where
$
    tilde(F)^(mu nu)
    = 1/2
    epsilon^(mu nu rho sigma)
    F_(rho sigma).
$

Operators of dimension greater than four are irrelevant in the
infrared. Restricting temporarily to operators of dimension at most
four gives the free Maxwell theory. Such a theory is conventionally
called renormalizable, although higher-dimensional operators are
perfectly meaningful within effective field theory.

=== Coupling photons to matter

Electrons are described by a spin-$1/2$ Dirac field. A manifestly
gauge-invariant photon-matter operator is the dipole interaction

$
    Delta cal(L)_("dipole")
    = c/Lambda
    overline(psi)
    tensor(sigma, +mu, +nu)
    psi
    F_(mu nu),
$

with

$
    tensor(sigma, +mu, +nu)
    = i/2 [gamma^mu, gamma^nu].
$

This operator has dimension five and is therefore irrelevant. The
renormalizable interaction instead couples the vector potential
directly to a current:

$
    S_("int")
    = -integral
    dd(x, 4)
    A_mu (x) J^mu (x).
$

Under

$
    delta A_mu = partial_mu alpha,
$

the interaction changes by

$
    delta S_("int")
    = -integral
    dd(x, 4)
    (partial_mu alpha) J^mu
    = integral
    dd(x, 4)
    alpha partial_mu J^mu,
$

where a boundary term was discarded. Gauge invariance therefore
requires

$
    partial_mu J^mu = 0.
$

This conservation law is automatic when $A_mu$ enters only through the
field strength. Indeed, for an antisymmetric tensor $O^(mu nu)$,

$
    F_(mu nu) O^(mu nu)
    = 2 (partial_mu A_nu) O^(mu nu)
    arrow.r
    -2 A_nu partial_mu O^(mu nu),
$

where the arrow means equality inside the action up to a boundary
term. The corresponding current is

$
    J^nu = 2 partial_mu O^(mu nu),
$

and hence

$
    partial_nu J^nu
    = 2 partial_nu partial_mu O^(mu nu)
    = 0
$

identically. When $A_mu$ appears directly in the action, however,
current conservation becomes a genuine constraint on the matter
theory.

The free Dirac Lagrangian is

$
    cal(L)_("matter")
    = i overline(psi) gamma^mu partial_mu psi
    - m overline(psi) psi.
$

It is invariant under the global transformation

$
    psi(x)
    arrow.r
    e^(-i e alpha) psi(x),
    quad
    overline(psi) (x)
    arrow.r
    overline(psi) (x) e^(i e alpha),
$

The associated Noether current is

$
    j^mu
    = -i
    pdv(
        cal(L)_("matter"),
        partial_mu psi,
    )
    psi
    = overline(psi) gamma^mu psi,
$
Coupling this current to the photon field gives the interaction term
and if we promote the symmetry to local one, then it is invariant
under gauge transformations.


We use the mutually consistent transformations
$
    A_mu (x)
    arrow.r
    A_mu (x) + partial_mu alpha(x),
$

$
    psi(x)
    arrow.r
    psi'(x)
    = e^(-i e alpha(x)) psi(x),
$

$
    overline(psi) (x)
    arrow.r
    overline(psi)' (x)
    = overline(psi) (x) e^(i e alpha(x)).
$

An ordinary derivative does not transform covariantly. Define the
covariant derivative by

$
    D_mu = partial_mu + i e A_mu.
$

Under the joint transformation,

$
    D'_mu psi'(x)
    = (
        partial_mu
        + i e (A_mu + partial_mu alpha)
    )
    e^(-i e alpha) psi.
$

Expanding the derivative gives

$
    D'_mu psi'(x)
    = e^(-i e alpha)
    (
        partial_mu
        - i e partial_mu alpha
        + i e A_mu
        + i e partial_mu alpha
    )
    psi
$

$
    = e^(-i e alpha) D_mu psi.
$

Thus $D_mu psi$ transforms in exactly the same way as $psi$.

=== The QED Lagrangian

The gauge-invariant QED Lagrangian is

$
    cal(L)_("QED")
    = -1/4 F_(mu nu) F^(mu nu)
    + i overline(psi) gamma^mu D_mu psi
    - m overline(psi) psi.
$

Expanding the covariant derivative gives

$
    cal(L)_("QED")
    = -1/4 F_(mu nu) F^(mu nu)
    + i overline(psi) gamma^mu partial_mu psi
    - m overline(psi) psi
    - e A_mu overline(psi) gamma^mu psi.
$

- This is an Abelian gauge theory with gauge group $U(1)$.

- Gauge invariance forbids a photon mass term

    $
        1/2 m_A^2 A_mu A^mu.
    $

- The replacement

    $
        partial_mu arrow.r D_mu
    $

    produces the minimal photon-matter interaction.

- The Abelian field strength is linear in $A_mu$, so the
    renormalizable Maxwell term contains no photon self-interactions.

Varying the action with respect to $A_mu$ gives

$
    partial_nu F^(nu mu) = J^mu,
    quad
    J^mu
    = e overline(psi) gamma^mu psi.
$

These are the inhomogeneous Maxwell equations. Taking the divergence
implies current conservation:

$
    partial_mu J^mu
    = partial_mu partial_nu F^(nu mu)
    = 0.
$

The homogeneous Maxwell equations follow from the Bianchi identity

$
    partial_lambda F_(mu nu)
    + partial_mu F_(nu lambda)
    + partial_nu F_(lambda mu)
    = 0,
$

or equivalently

$
    epsilon^(mu nu rho sigma)
    partial_nu F_(rho sigma)
    = 0.
$

Finally, the interaction term

$
    cal(L)_("int")
    = -e A_mu
    overline(psi)
    gamma^mu
    psi
$

gives the electron-photon vertex

$
    -i e gamma^mu.
$

== Non-Abelian gauge theories

=== Motivation

When QED is restricted to operators of dimension at most four, the photon has no self-interactions. Yang-Mills theory generalizes the Abelian gauge principle and describes interacting massless spin-one fields.

The simplest example is based on the group SU(2). Let the matter field transform as a doublet,

$
  psi(x)
  = vec(
      psi_1 (x),
      psi_2 (x),
    ).
$

The generators in the fundamental representation are

$
  T^a = sigma^a/2,
  quad
  [T^a, T^b]
  = i epsilon^(a b c) T^c,
  quad
  "tr"(T^a T^b)
  = 1/2 delta^(a b).
$

For a general compact Lie group $G$, we write

$
  [T^a, T^b]
  = i f^(a b c) T^c.
$

The structure constants of SU(2) are

$
  f^(a b c) = epsilon^(a b c).
$

=== From a global symmetry to a local symmetry

The free matter Lagrangian is

$
  cal(L)_0
  = i overline(psi) gamma^mu partial_mu psi
  - m overline(psi) psi.
$

It is invariant under a global transformation

$
  psi(x)
  arrow.r
  psi'(x)
  = U psi(x),
$

$
  overline(psi) (x)
  arrow.r
  overline(psi)' (x)
  = overline(psi) (x) U^(-1),
$

where

$
  U = e^(-i g alpha^a T^a),
  quad
  partial_mu U = 0.
$

If $U=U(x)$ is local, the ordinary derivative produces an extra term:

$
  overline(psi)'
  gamma^mu
  partial_mu psi'
  =
  overline(psi)
  gamma^mu
  partial_mu psi
  +
  overline(psi)
  gamma^mu
  U^(-1)
  (partial_mu U)
  psi.
$

To compensate for this term, introduce a Lie-algebra-valued gauge field

$
  A_mu
  equiv
  tensor(A, -mu, +a) T^a
$

and define the covariant derivative

$
  D_mu
  = partial_mu - i g A_mu
  = partial_mu
    - i g tensor(A, -mu, +a) T^a.
$

We demand that it transform covariantly:

$
  D'_mu psi'(x)
  = U(x) D_mu psi(x).
$

=== Gauge-field transformation

Using $psi'=U psi$, covariance requires

$
  (
    partial_mu
    - i g A'_mu
  )
  U psi
  =
  U
  (
    partial_mu
    - i g A_mu
  )
  psi.
$

Therefore,

$
  A'_mu
  =
  U A_mu U^(-1)
  -
  i/g
  (partial_mu U)
  U^(-1).
$

This is the finite transformation law of a non-Abelian connection. It contains both a homogeneous rotation and an inhomogeneous derivative term.

For an infinitesimal transformation,

$
  U(x)
  =
  1
  - i g alpha^a(x) T^a
  + O(alpha^2),
$

so that

$
  tensor(A', -mu, +a)
  =
  tensor(A, -mu, +a)
  - partial_mu alpha^a
  + g f^(a b c)
    alpha^b
    tensor(A, -mu, +c).
$

The homogeneous part shows that the gauge fields transform in the adjoint representation. Unlike the photon, the non-Abelian gauge bosons therefore carry gauge charge.

With the convention used here, the Abelian limit is

$
  A_mu
  arrow.r
  A_mu - partial_mu alpha.
$

Replacing $alpha arrow.r -alpha$ gives the alternative QED convention.

=== Field strength from the covariant derivative

The non-Abelian field strength is defined by

$
  [D_mu, D_nu]
  = -i g F_(mu nu).
$

Using $D_mu=partial_mu-i g A_mu$ gives

$
  F_(mu nu)
  =
  partial_mu A_nu
  - partial_nu A_mu
  - i g [A_mu, A_nu].
$

In components,

$
  tensor(F, -mu, -nu, +a)
  =
  partial_mu tensor(A, -nu, +a)
  -
  partial_nu tensor(A, -mu, +a)
  +
  g f^(a b c)
  tensor(A, -mu, +b)
  tensor(A, -nu, +c).
$

Because

$
  D'_mu
  = U D_mu U^(-1),
$

the field strength transforms homogeneously:

$
  F'_(mu nu)
  =
  U F_(mu nu) U^(-1).
$

Infinitesimally,

$
  tensor(F', -mu, -nu, +a)
  =
  tensor(F, -mu, -nu, +a)
  +
  g f^(a b c)
  alpha^b
  tensor(F, -mu, -nu, +c).
$

Thus the field strength transforms in the adjoint representation. It is gauge covariant rather than gauge invariant.

=== The Yang-Mills Lagrangian

The gauge-invariant kinetic term is obtained by tracing over the gauge indices:

$
  cal(L)_("YM")
  =
  -1/2
  "tr"(
    F_(mu nu) F^(mu nu)
  ).
$

For the normalization

$
  "tr"(T^a T^b)
  =
  1/2 delta^(a b),
$

this becomes

$
  cal(L)_("YM")
  =
  -1/4
  tensor(F, -mu, -nu, +a)
  tensor(F, +mu, +nu, +a).
$

Gauge invariance follows from cyclicity of the trace:

$
  "tr"(
    F'_(mu nu) F'^(mu nu)
  )
  =
  "tr"(
    U F_(mu nu) U^(-1)
    U F^(mu nu) U^(-1)
  )
$

$
  =
  "tr"(
    F_(mu nu) F^(mu nu)
  ).
$

Adding Dirac matter in a representation $R$ gives

$
  cal(L)
  =
  -1/4
  tensor(F, -mu, -nu, +a)
  tensor(F, +mu, +nu, +a)
  +
  i overline(psi) gamma^mu D_mu psi
  -
  m overline(psi) psi,
$

with

$
  D_mu
  =
  partial_mu
  -
  i g
  tensor(A, -mu, +a)
  T_R^a,
$

and

$
  [T_R^a, T_R^b]
  =
  i f^(a b c) T_R^c.
$

The same coupling $g$ controls both the coupling to matter and the self-interactions of the gauge fields. Gauge invariance does not allow these couplings to be chosen independently.

=== Gauge-boson self-interactions

Define the linearized field strength

$
  tensor(f, -mu, -nu, +a)
  =
  partial_mu tensor(A, -nu, +a)
  -
  partial_nu tensor(A, -mu, +a).
$

Then

$
  tensor(F, -mu, -nu, +a)
  =
  tensor(f, -mu, -nu, +a)
  +
  g f^(a b c)
  tensor(A, -mu, +b)
  tensor(A, -nu, +c).
$

Expanding the Yang-Mills kinetic term gives quadratic, cubic, and quartic terms:

$
  cal(L)_("YM")
  =
  -1/4
  tensor(f, -mu, -nu, +a)
  tensor(f, +mu, +nu, +a)
$

$
  -
  g/2
  f^(a b c)
  tensor(f, -mu, -nu, +a)
  tensor(A, +mu, +b)
  tensor(A, +nu, +c)
$

$
  -
  g^2/4
  f^(a b c)
  f^(a d e)
  tensor(A, -mu, +b)
  tensor(A, -nu, +c)
  tensor(A, +mu, +d)
  tensor(A, +nu, +e).
$

The cubic and quartic terms describe three- and four-gauge-boson interactions. Since $f^(a b c)$ is antisymmetric, there is no self-coupling involving only one gauge component, but distinct gauge components interact with one another.

=== General compact gauge groups

For a representation $R$, the invariant quadratic form is

$
  "tr"_R (T_R^a T_R^b)
  =
  T(R) delta^(a b).
$

A positive-definite gauge kinetic energy requires a positive invariant inner product on the Lie algebra. This naturally leads to compact gauge groups represented by unitary matrices,

$
  U^dagger U = 1.
$

Important compact possibilities include

- $"SU"(N)$,
- $"SO"(N)$,
- $"Sp"(N)$,
- the exceptional groups $G_2$, $F_4$, $E_6$, $E_7$, and $E_8$,
- products of these groups together with Abelian $U(1)$ factors.

For a general group, the SU(2) replacements are

$
  T^a arrow.r T_R^a,
  quad
  epsilon^(a b c)
  arrow.r
  f^(a b c).
$

=== Tree-level Feynman rules

The following rules use the convention

$
  D_mu = partial_mu - i g A_mu
$

and Feynman gauge. The gauge-fixing term is

$
  cal(L)_("gf")
  =
  -1/2
  (
    partial_mu
    tensor(A, +mu, +a)
  )^2.
$

The matter-gauge-boson vertex is

$
  i g
  tensor(gamma, +mu, +alpha, -beta)
  tensor(T^a, +i, -j).
$

The gauge-boson propagator is

$
  frac(
    -i
    tensor(eta, +mu, +nu)
    tensor(delta, +a, +b),
    p^2 + i epsilon,
  ).
$

The fermion propagator is

$
  frac(
    i
    tensor(
      (gamma^rho p_rho + m),
      +alpha,
      -beta,
    ),
    p^2 - m^2 + i epsilon,
  ).
$

For the three-gauge-boson vertex, take all momenta incoming and impose

$
  p_1 + p_2 + p_3 = 0.
$

For external legs $(a,mu)$, $(b,nu)$, and $(c,rho)$, the vertex is

$
  V_3
  =
  g f^(a b c)
  [
    eta^(mu nu)
    (p_2 - p_1)^rho
    +
    eta^(nu rho)
    (p_3 - p_2)^mu
    +
    eta^(rho mu)
    (p_1 - p_3)^nu
  ].
$

For the four-gauge-boson vertex with external legs
$(a,mu)$, $(b,nu)$, $(c,rho)$, and $(d,sigma)$, write

$
  V_4
  =
  -i g^2
  (C_1 + C_2 + C_3),
$

where

$
  C_1
  =
  f^(a b e)
  f^(c d e)
  (
    eta^(mu rho) eta^(nu sigma)
    -
    eta^(mu sigma) eta^(nu rho)
  ),
$

$
  C_2
  =
  f^(a c e)
  f^(b d e)
  (
    eta^(mu nu) eta^(rho sigma)
    -
    eta^(mu sigma) eta^(nu rho)
  ),
$

$
  C_3
  =
  f^(a d e)
  f^(b c e)
  (
    eta^(mu nu) eta^(rho sigma)
    -
    eta^(mu rho) eta^(nu sigma)
  ).
$

These rules are sufficient for tree-level calculations involving physical external polarizations. At loop level, a consistent gauge-fixed quantization also requires the Faddeev-Popov ghost sector.
