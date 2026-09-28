#import "../env/lib.typ": *

= Conformal Transformations

These notes collect the conformal Killing equation, the conformal algebra, its action on local operators, and the resulting constraints on correlation functions. Ambiguous handwritten powers have been rewritten in standard, explicit notation.

// == RG recap
//
// Near a fixed point, scaling variables obey
//
// $
// u'_i = b^(y_i) u_i,
// qquad
// Delta_i = d-y_i.
// $
//
// Directions with $y_i > 0$, $y_i < 0$, and $y_i = 0$ are relevant, irrelevant, and marginal. A universality class is the basin of attraction of a fixed point after its relevant couplings have been tuned.
//
// For example, in a scalar theory
//
// $
// cal(L) = 1/2 (partial phi)^2 + 1/2 m^2 phi^2
//   + lambda/(4!) phi^4 + u/(6!) phi^6,
// $
//
// tuning $m^2$ can lead to the Ising CFT, whereas tuning both $m^2$ and $lambda$ can lead to the tricritical Ising CFT.
//

== The conformal Killing equation

A conformal transformation is a coordinate transformation $x -> x'$ for which

$
g'_(mu nu)(x') = Omega(x) g_(mu nu)(x).
$

For an infinitesimal map

$
x'^mu = x^mu + epsilon^mu (x),
$

the Jacobian and its inverse are

$
(partial x'^mu)/(partial x^alpha)
  = delta^mu_alpha + partial_alpha epsilon^mu,
qquad
(partial x^mu)/(partial x'^alpha)
  = delta^mu_alpha - partial_alpha epsilon^mu.
$

To first order,

$
g'_(mu nu)
= g_(mu nu) - partial_mu epsilon_nu - partial_nu epsilon_mu.
$

Writing $Omega = 1-f$, one obtains the conformal Killing equation

$
partial_mu epsilon_nu + partial_nu epsilon_mu
= f(x) g_(mu nu),
qquad
f(x) = 2/d partial_mu epsilon^mu.
$

In flat space, differentiating and permuting indices gives

$
2 partial_mu partial_nu epsilon_rho
= eta_(rho nu) partial_mu f
  + eta_(rho mu) partial_nu f
  - eta_(mu nu) partial_rho f.
$

Tracing and differentiating imply

$
2 partial^2 epsilon_rho = (2-d) partial_rho f,
$

$
(2-d) partial_mu partial_nu f
= eta_(mu nu) partial^2 f.
$

Hence

$
cases(
  "no local constraint on" f & d=1,
  partial^2 f = 0 & d=2,
  partial_mu partial_nu f = 0 & d>2.
)
$

For $d>2$, $f=A+B_mu x^mu$, and the general infinitesimal conformal transformation is

$
epsilon_mu(x)
= a_mu + omega_(mu nu) x^nu + alpha x_mu
  + 2(b dot x) x_mu - b_mu x^2,
qquad
omega_(mu nu) = -omega_(nu mu).
$

The four terms generate translations, rotations, dilatations, and special conformal transformations (SCTs), respectively.

== Finite conformal transformations

The corresponding finite transformations are

$
"translation:" &quad x'^mu = x^mu + a^mu, \
"rotation/Lorentz:" &quad x'^mu = M^mu_nu x^nu, \
"dilatation:" &quad x'^mu = lambda x^mu, \
"SCT:" &quad
x'^mu = (x^mu-b^mu x^2)/(1-2 b dot x+b^2 x^2).
$

An inversion is

$
I: quad x'^mu = x^mu/x^2,
$

and an SCT can be written as inversion--translation--inversion.

== Representation on functions

For a scalar function with zero intrinsic weight,

$
f'(x') = f(x),
qquad
f'(x) = e^(-i omega_a G_a) f(x).
$

If

$
x'^mu = x^mu + omega_a A_a^mu(x),
qquad
A_a^mu(x) = (partial x'^mu)/(partial omega_a) |_(omega=0),
$

then

$
i G_a f(x) = A_a^mu(x) partial_mu f(x).
$

Thus the differential generators are

$
P_mu &= -i partial_mu, \
L_(mu nu) &= i(x_mu partial_nu-x_nu partial_mu), \
D &= -i x^mu partial_mu, \
K_mu &= -i(2x_mu x^nu partial_nu-x^2 partial_mu).
$

For example, a finite dilatation gives

$
f'(r') = e^(-i alpha D) f(r')
= e^(-alpha r' partial_(r')) f(r')
= f(e^(-alpha)r') = f(r),
$

where $r'=e^alpha r$.

== Conformal algebra

With the conventions above,

$
[D,P_mu] &= i P_mu, \
[D,K_mu] &= -i K_mu, \
[K_mu,P_nu] &= 2i(eta_(mu nu)D-L_(mu nu)), \
[L_(mu nu),P_rho]
  &= -i(eta_(mu rho)P_nu-eta_(nu rho)P_mu), \
[L_(mu nu),K_rho]
  &= -i(eta_(mu rho)K_nu-eta_(nu rho)K_mu), \
[P_mu,P_nu] &= [K_mu,K_nu] = [D,D] = [D,L_(mu nu)] = 0,
$

and

$
[L_(mu nu),L_(rho sigma)]
= -i(
  eta_(mu rho)L_(nu sigma)
  - eta_(mu sigma)L_(nu rho)
  - eta_(nu rho)L_(mu sigma)
  + eta_(nu sigma)L_(mu rho)
).
$

Defining

$
J_(mu nu) &= L_(mu nu), \
J_(-1,mu) &= 1/2(P_mu-K_mu), \
J_(0,mu) &= 1/2(P_mu+K_mu), \
J_(-1,0) &= D,
$

one recognizes the algebra $"so"(d+1,1)$ in Euclidean signature.

== Action on local operators

For a quantum operator,

$
phi'(x) = U^dagger phi(x) U,
qquad
U = e^(-i omega_a hat(G)_a).
$

The infinitesimal action can contain both an orbital part and a finite-dimensional spin part:

$
[hat(G)_a, phi(x)]
= -G_a phi(x) + i R(G_a) phi(x).
$

Because $[D,L_(mu nu)]=0$, local operators at the origin can be chosen to have definite scaling dimension and spin:

$
[hat(D),phi_alpha(0)] &= i Delta phi_alpha(0), \
[hat(L)_(mu nu),phi_alpha(0)]
  &= i(S_(mu nu))_(alpha beta) phi_beta(0).
$

Translation away from the origin gives

$
phi(x) = e^(-i x dot hat(P)) phi(0) e^(i x dot hat(P)),
$

and the dilatation commutator becomes

$
[hat(D),phi(x)] = i(Delta+x^mu partial_mu)phi(x).
$

For a finite dilatation $x' = lambda x$,

$
phi'(lambda x) = lambda^(-Delta) phi(x).
$

For a scalar primary, conformal invariance is compatible with

$
chevron.l phi(x_1) phi(x_2) chevron.r
= 1/(x_12^2)^Delta,
qquad Delta >= 0.
$

== Primaries and descendants

At the origin,

$
[D,phi(0)] = i Delta phi(0).
$

The algebra shows that $P_mu$ raises the dimension by one, while $K_mu$ lowers it by one:

$
[D,P_mu phi(0)] &= i(Delta+1)P_mu phi(0), \
[D,K_mu phi(0)] &= i(Delta-1)K_mu phi(0).
$

In a unitary theory the spectrum of dimensions is bounded below. A conformal primary is therefore defined by

$
[K_mu,phi(0)] = 0.
$

Its descendants are obtained by acting with momenta:

$
[P_(mu_1) dots P_(mu_n),phi(0)]
tilde partial_(mu_1) dots partial_(mu_n) phi(0).
$

== Noether's theorem and the stress tensor

For an action

$
S = integral d^d x cal(L)(phi,partial_mu phi),
$

Noether's theorem associates a conserved current to every continuous symmetry. In a general infinitesimal transformation, one convenient form is

$
j_a^mu
= [ (partial cal(L))/(partial(partial_mu phi)) partial_nu phi
  - delta^mu_nu cal(L) ]
  (partial x^nu)/(partial omega_a)
  - (partial cal(L))/(partial(partial_mu phi))
  (partial tilde(F))/(partial omega_a),
qquad
partial_mu j_a^mu = 0.
$

The translation current is the canonical stress tensor,

$
T_"c"^(mu nu)
= -eta^(mu nu) cal(L)
  + (partial cal(L))/(partial(partial_mu phi)) partial^nu phi,
qquad
partial_mu T_"c"^(mu nu) = 0.
$

By an improvement one may choose a symmetric tensor $T^(mu nu)=T^(nu mu)$. Under a conformal coordinate variation $x'^mu=x^mu+epsilon^mu(x)$,

$
delta S
= -1/2 integral d^d x \, T^(mu nu)
  (partial_mu epsilon_nu+partial_nu epsilon_mu)
= -1/2 integral d^d x \, f(x) T^mu_mu.
$

Scale invariance alone permits

$
T^mu_mu = partial_mu V^mu,
$

with a virial current $V^mu$. Conformal invariance is compatible with an improved traceless tensor,

$
T^mu_mu = 0.
$

== Implications for correlation functions

=== Two-point functions

Translation and rotation invariance imply dependence only on $x_12=x_1-x_2$. Dilatations give

$
chevron.l cal(O)_1(x_1) cal(O)_2(x_2) chevron.r
= C_12/(abs(x_12))^(Delta_1+Delta_2).
$

Under an SCT,

$
x_12'^2 = x_12^2/(gamma_1 gamma_2),
qquad
gamma_i = 1-2b dot x_i+b^2 x_i^2.
$

SCT covariance requires $Delta_1=Delta_2$. In an orthonormal basis of scalar primaries,

$
chevron.l cal(O)_i(x_1) cal(O)_j(x_2) chevron.r
= (C_i delta_(i j))/(x_12^2)^(Delta_i).
$

=== Three-point functions

For scalar primaries, conformal symmetry fixes the position dependence completely:

$
chevron.l cal(O)_1(x_1) cal(O)_2(x_2) cal(O)_3(x_3) chevron.r
= lambda_123 / [
  (x_12^2)^((Delta_1+Delta_2-Delta_3)/2)
  (x_13^2)^((Delta_1+Delta_3-Delta_2)/2)
  (x_23^2)^((Delta_2+Delta_3-Delta_1)/2)
].
$

=== Four-point functions and cross-ratios

For four identical scalar primaries of dimension $Delta$,

$
chevron.l cal(O)(x_1) cal(O)(x_2) cal(O)(x_3) cal(O)(x_4) chevron.r
= 1/[(x_12^2)^Delta (x_34^2)^Delta] \, cal(G)(u,v),
$

where

$
u = (x_12^2 x_34^2)/(x_13^2 x_24^2) = z overline(z),
qquad
v = (x_14^2 x_23^2)/(x_13^2 x_24^2)
  = (1-z)(1-overline(z)).
$

In Euclidean signature $overline(z)=z^*$. In Lorentzian signature $z$ and $overline(z)$ are independent real variables in the standard kinematic region.

A standard Lorentzian configuration is

$
x_1=0,
qquad
x_2=(t,x,0,dots),
qquad
x_3=(0,1,0,dots),
qquad
x_4=infinity.
$

Then

$
u=x^2-t^2,
qquad
v=(1-x)^2-t^2,
qquad
z=x-t,
qquad
overline(z)=x+t.
$
