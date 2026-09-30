#import "../env/lib.typ": *

= 2D Conformal Field Theory

// == Recap
//
// Scaling operators are divided into primaries and descendants. Correlators of descendants follow from derivatives of correlators of primaries.
//
// For scalar primaries, with $x_(i j) = |x_i - x_j|$,
// $ ⟨O_i (x_1) O_j (x_2)⟩ = frac(delta_(i j), x_12^(2 Delta_i)). $
//
// The three-point function is fixed up to a coefficient:
// $ ⟨O_i (x_1) O_j (x_2) O_k (x_3)⟩ = frac(lambda_(i j k), x_12^(Delta_i + Delta_j - Delta_k) x_13^(Delta_i + Delta_k - Delta_j) x_23^(Delta_j + Delta_k - Delta_i)). $
//
// For four identical scalar primaries,
// $ ⟨O (x_1) O (x_2) O (x_3) O (x_4)⟩ = frac(G(u, v), x_12^(2 Delta) x_34^(2 Delta)). $
//
// These statements still hold in $d = 2$, but there is much more structure.

== 2D Conformal Algebra

Recall the conformal Killing equation for
$x'^mu = x^mu + epsilon^mu (x)$:
$
    partial_mu epsilon_nu + partial_nu epsilon_mu = frac(2, d) (partial_rho epsilon^rho) eta_(mu nu).
$

In two Euclidean dimensions this gives
$
    partial_0 epsilon_0 = partial_1 epsilon_1, quad partial_0 epsilon_1 = -partial_1 epsilon_0.
$

Let
$ z = x^0 + i x^1, quad overline(z) = x^0 - i x^1, $
$
    partial = partial_z = frac(1, 2) (partial_0 - i partial_1), quad overline(partial) = partial_(overline(z)) = frac(1, 2) (partial_0 + i partial_1).
$

The nonzero metric components are
$
    g_(z overline(z)) = g_(overline(z) z) = frac(1, 2), quad g^(z overline(z)) = g^(overline(z) z) = 2.
$

Writing $epsilon = epsilon^0 + i epsilon^1$ and
$overline(epsilon) = epsilon^0 - i epsilon^1$, we obtain
$ overline(partial) epsilon = 0, quad partial overline(epsilon) = 0. $

Hence $epsilon = epsilon(z)$ is holomorphic and
$overline(epsilon) = overline(epsilon)(overline(z))$ is
antiholomorphic. Finite conformal coordinate transformations have the
form
$ z' = f(z), quad overline(z)' = overline(f)(overline(z)). $

Expand the infinitesimal transformation as
$
    epsilon(z) = sum_n c_n z^(n+1), quad overline(epsilon)(overline(z)) = sum_n overline(c)_n overline(z)^(n+1).
$

For a scalar function, the induced variation at fixed coordinates is
$
    delta_epsilon F(z, overline(z)) = F(z - epsilon(z), overline(z) - overline(epsilon)(overline(z))) - F(z, overline(z)) = -epsilon(z) partial F - overline(epsilon)(overline(z)) overline(partial) F.
$

Thus we introduce the generators
$
    ell_n = -z^(n+1) partial, quad overline(ell)_n = -overline(z)^(n+1) overline(partial).
$

They form two commuting copies of the Witt algebra:
$
    [ell_m, ell_n] = (m - n) ell_(m+n), quad [overline(ell)_m, overline(ell)_n] = (m - n) overline(ell)_(m+n), quad [ell_m, overline(ell)_n] = 0.
$

Consider the Riemann sphere $S^2$, with coordinate charts $z$ and
$z' = -frac(1, z)$. The vector field $ell_n$ is regular at $z = 0$
only if $n >= -1$, and regular at $z' = 0$ only if $n <= 1$. Hence the
globally defined holomorphic generators are $ell_(-1), ell_0, ell_1$,
together with their antiholomorphic counterparts. They form the global
conformal algebra. The combination $ell_0 + overline(ell)_0$ generates
dilatations, while $i(ell_0 - overline(ell)_0)$ generates rotations.

Finite global transformations are Möbius maps:
$ z -> frac(a z + b, c z + d), quad a d - b c = 1. $
Their group is
$P S L(2, CC) = frac(S L(2, CC), {+1, -1}) ≅ S O^+(3, 1)$.

Define a two-dimensional conformal primary by its transformation under
every local conformal map:
#definition[Primary Field][
    A primary field $phi(z, overline(z))$ of weights
    $(h, overline(h))$ transforms as:
    $
        phi'(z', overline(z)') = (frac(partial z', partial z))^(-h) (frac(partial overline(z)', partial overline(z)))^(-overline(h)) phi(z, overline(z)).
    $
]

A quasiprimary obeys this law under global conformal transformations
only. Its scaling dimension and spin are defined as:
$ Delta = h + overline(h), quad s = h - overline(h). $
#remark([
    Notice that here we are not only dealing with scalar primaries,
    but also fields with spin. Due to we are working in 2D, spin are
    only represented by a single number and U(1) phase. In general the
    spin is only integer or half-integer.
])

For a primary field, the infinitesimal transformation law is:
$
    delta_(epsilon, overline(epsilon)) phi(z, overline(z)) = -(h partial epsilon + epsilon partial) phi(z, overline(z)) - (overline(h) overline(partial) overline(epsilon) + overline(epsilon) overline(partial)) phi(z, overline(z)).
$
Sometimes we separate the holomorphic and antiholomorphic parts, and
give the notation of:
$
    delta_epsilon phi(z, overline(z)) = -(h partial epsilon + epsilon partial) phi(z, overline(z)), quad delta_overline(epsilon) phi(z, overline(z)) = -(overline(h) overline(partial) overline(epsilon) + overline(epsilon) overline(partial)) phi(z, overline(z)).
$
However, one should remember that only the sum of the two variations
is the actual infinitesimal conformal transformation of the field. For
quasi-primary we have the same transformation under global conformal
transformations, but not under local ones.

== Holomorphic stress tensor

Symmetry and tracelessness imply
$
    g^(mu nu) T_(mu nu) = 2(T_(z overline(z)) + T_(overline(z) z)) = 0,
$
so $T_(z overline(z)) = 0$. Conservation then gives
$
    partial^mu T_(mu nu) = 0 quad => quad overline(partial) T_(z z) = 0, quad partial T_(overline(z) overline(z)) = 0.
$

Define the holomorphic and antiholomorphic components by
$
    T(z) = -2 pi T_(z z), quad overline(T)(overline(z)) = -2 pi T_(overline(z) overline(z)).
$

== Conformal correlators

#YL([stopped here.])

These formulas also hold for quasiprimaries. For primaries of weights
$(h_i, overline(h)_i)$,
$
    ⟨phi_i (z_1, overline(z)_1) phi_j (z_2, overline(z)_2)⟩ = frac(C_(i j), z_12^(2 h_i) overline(z)_12^(2 overline(h)_i)).
$

The coefficient can be nonzero only when the weights match. The
three-point function is
$
    ⟨phi_i (z_1, overline(z)_1) phi_j (z_2, overline(z)_2) phi_k (z_3, overline(z)_3)⟩ \
    = frac(lambda_(i j k), z_12^(h_i + h_j - h_k) z_13^(h_i + h_k - h_j) z_23^(h_j + h_k - h_i) overline(z)_12^(overline(h)_i + overline(h)_j - overline(h)_k) overline(z)_13^(overline(h)_i + overline(h)_k - overline(h)_j) overline(z)_23^(overline(h)_j + overline(h)_k - overline(h)_i)).
$

Four-point functions are more complicated. For identical holomorphic
fields, their coordinate dependence is a fixed prefactor times a
function of the cross ratio
$ eta = frac(z_12 z_34, z_13 z_24). $
A general form of the 4 point function is:
$
    chevron.l phi(z_1, overline(z)_1)
    phi(z_2, overline(z)_2)
    phi(z_3, overline(z)_3)
    phi(z_4, overline(z)_4) chevron.r
    =
    frac(
        G(eta, overline(eta)),
        z_12^(2 h) z_34^(2 h)
        overline(z)_12^(2 overline(h))
        overline(z)_34^(2 overline(h))
    ).
$
where $G(eta, overline(eta))$ is some function that only depends on
the cross ratio.

== Radial quantisation and the OPE

One may find that the conformal transformations are generated by the
following charges. In our conventions,
$
    Q = frac(1, 2 pi i) integral.cont (upright(d)z epsilon(z) T(z) + upright(d)overline(z) overline(epsilon)(overline(z)) overline(T)(overline(z))).
$
#remark([
    In the yellow book, we prove the conformal ward identity in the
    path integral formalism and this relation can be derived from it
    and the correspondence between the path integral and operator
    formalism. Here we understand as just stating a consistent result.
])

For a holomorphic variation, one may find that:
$
    delta_epsilon psi(w) = -frac(1, 2 pi i)[ integral.cont_(C) upright(d)z epsilon(z) T(z), psi(w)],
$
The countour should be a equal time circle.

where the commutator
implements radial ordering. This is analogous to time ordering in
Lorentzian QFT. In radial quantisation,
$
    ⟨phi(z_1, overline(z)_1) dots phi(z_n, overline(z)_n)⟩ = ⟨0|R[phi(z_1, overline(z)_1) dots phi(z_n, overline(z)_n)]|0⟩.
$

If $|w_1| < dots < |w_n|$, radial ordering places the operator at
$w_n$ furthest to the left and the operator at $w_1$ furthest to the
right.

For holomorphic $a(z)$ and another field $b(w)$, a contour just
outside $|w|$ minus one just inside $|w|$ gives
$
    integral.cont_(C_w) upright(d)z R[a(z) b(w)] = integral.cont_(C_+) upright(d)z a(z) b(w) - integral.cont_(C_-) upright(d)z b(w) a(z) = [integral.cont_(|z| = |w|) upright(d)z a(z), b(w)].
$

The infinitesimal transformation law of a primary is
$
    delta_(epsilon, overline(epsilon)) phi(z, overline(z)) = -(h partial epsilon + epsilon partial) phi(z, overline(z)) - (overline(h) overline(partial) overline(epsilon) + overline(epsilon) overline(partial)) phi(z, overline(z)).
$

Focus on the holomorphic part and write the singular expansion
$ R[T(z) psi(w)] ∼ sum_n (z - w)^n A_n (w). $

Inserting it into the contour integral gives
$
    frac(1, 2 pi i) integral.cont_(C_w) upright(d)z epsilon(z) R[T(z) psi(w)] = frac(epsilon''(w) A_(-3) (w), 2) + epsilon'(w) A_(-2) (w) + epsilon(w) A_(-1) (w) + dots.
$

Matching the primary transformation law, we find
$ A_(-3) = 0, quad A_(-2) = h psi, quad A_(-1) = partial psi. $

Therefore the singular OPE is
$
    T(z) psi(w) ∼ frac(h psi(w), (z - w)^2) + frac(partial psi(w), z - w).
$

More generally, an OPE can include local operators and their
descendants. If $O_k$ is a primary appearing in $O_1 O_2$, its leading
term has powers
$
    O_1 (z, overline(z)) O_2 (w, overline(w)) ∼ sum_k C_(12)^k (z - w)^(h_k - h_1 - h_2) (overline(z) - overline(w))^(overline(h)_k - overline(h)_1 - overline(h)_2) O_k (w, overline(w)) + dots.
$

== 4.5 Example: free scalar

Consider the free scalar action
$
    S = frac(g, 2) integral upright(d)^2 x partial_mu phi(x) partial^mu phi(x).
$

Its propagator in $d = 2$ is logarithmic:
$ ⟨phi(x) phi(y)⟩ = -frac(1, 4 pi g) ln (x - y)^2 + "const." $

The equation of motion is
$
    partial^mu partial_mu phi = 0 quad => quad 4 partial overline(partial) phi = 0.
$

Locally, one can write
$phi(z, overline(z)) = phi(z) + overline(phi)(overline(z))$. The
holomorphic correlator is
$ ⟨phi(z) phi(w)⟩ = -frac(1, 4 pi g) ln(z - w). $

The logarithm means that $phi$ itself is not an ordinary scaling
primary, whereas
$
    ⟨partial phi(z) partial phi(w)⟩ = partial_z partial_w (-frac(1, 4 pi g) ln(z - w)) = -frac(1, 4 pi g (z - w)^2).
$

Thus $partial phi$ is a candidate primary with weights
$(h, overline(h)) = (1, 0)$. Check its OPE with $T(z)$. The canonical
stress tensor is
$
    T_(mu nu) = g(partial_mu phi partial_nu phi - frac(1, 2) eta_(mu nu) partial_rho phi partial^rho phi).
$

Since $eta_(z z) = 0$,
$ T(z) = -2 pi T_(z z) = -2 pi g :partial phi(z) partial phi(z):. $

Normal ordering defines the coincident-point product in the path
integral formalism (the following equality should be understood within
the correlator):
$
    T(z) = -2 pi g lim_(w -> z) (partial phi(z) partial phi(w) + frac(1, 4 pi g (z - w)^2)).
$
and in canonical formalism, an equivalent definition is putting the
annihilation operators to the right of the creation operators.

Using Wick contractions and re-expanding around $w$ gives
$
    T(z) partial phi(w) ∼ frac(partial phi(w), (z - w)^2) + frac(partial^2 phi(w), z - w).
$

The double-pole coefficient is one, confirming $h = 1$.

== 4.6 Conformal Ward identity

Let $C$ enclose all insertions. Deform it into small contours around
the fields:
$
    ⟨frac(1, 2 pi i) integral.cont_C upright(d)z epsilon(z) T(z) phi_1 (w_1, overline(w)_1) dots phi_n (w_n, overline(w)_n)⟩ \
    = sum_(j=1)^n ⟨phi_1 dots frac(1, 2 pi i) integral.cont_(C_(w_j)) upright(d)z epsilon(z) T(z) phi_j (w_j, overline(w)_j) dots phi_n⟩.
$

The OPE at $w_j$ yields
$
    (h_j epsilon'(w_j) + epsilon(w_j) partial_(w_j)) ⟨phi_1 (w_1, overline(w)_1) dots phi_n (w_n, overline(w)_n)⟩.
$

With the variation convention above, this contribution equals
$-delta_epsilon phi_j$ inside the correlator. Since the contour
relation holds for suitable $epsilon(z)$, the conformal Ward identity
is
$
    ⟨T(z) product_(i=1)^n phi_i (w_i, overline(w)_i)⟩ = sum_(j=1)^n (frac(h_j, (z - w_j)^2) + frac(1, z - w_j) partial_(w_j)) ⟨product_(i=1)^n phi_i (w_i, overline(w)_i)⟩.
$

Regular OPE terms give zero on each small contour. The formula assumes
the usual behaviour of $T(z)$ at infinity.

== 4.7 Transformation of $T(z)$

Is $T(z)$ a primary? No. It is a quasiprimary with weights
$(h, overline(h)) = (2, 0)$. Its self-OPE is
$
    T(z) T(w) ∼ frac(c, 2 (z - w)^4) + frac(2 T(w), (z - w)^2) + frac(partial T(w), z - w).
$

Under a finite holomorphic change of coordinates $z' = f(z)$,
$
    T'(z') = frac(partial f, partial z)^(-2) (T(z) - frac(c, 12) {f, z}),
$
where the Schwarzian derivative is
$
    {f, z} = frac(f'''(z), f'(z)) - frac(3, 2) (frac(f''(z), f'(z)))^2.
$

The central charge $c$ represents a quantum effect and depends on the
CFT. For a free boson, $c = 1$.

