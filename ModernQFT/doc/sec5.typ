#import "../env/lib.typ": *

= Minimal Models

== Virasoro algebra

Define the modes of the stress tensors by
$
    L_n = frac(1, 2 pi i)
    integral.cont upright(d)z z^(n+1) T(z),
    quad
    overline(L)_n = frac(1, 2 pi i)
    integral.cont upright(d)overline(z)
    overline(z)^(n+1) overline(T)(overline(z)).
$

Then
$
    T(z) = sum_(n in ZZ) z^(-n-2) L_n.
$

For an infinitesimal transformation
$
    epsilon(z) = sum_n epsilon_n z^(n+1),
$
its charge is
$
    Q_epsilon = sum_n epsilon_n L_n.
$

Let us compute $[L_n,L_m]$. Using two independent contours, we bring
the $z$ contour to a small circle $C_w$ around $w$. Only the singular
terms in the $T(z)T(w)$ OPE contribute:
$
    [L_n,L_m]
    = frac(1, (2 pi i)^2)
    integral.cont upright(d)w w^(m+1)
    integral.cont_(C_w) upright(d)z z^(n+1)
    lr(
        frac(c, 2(z-w)^4)
        + frac(2T(w), (z-w)^2)
        + frac(partial T(w), z-w)
    ).
$

Taking the $z$ residues gives
$
    [L_n,L_m]
    = frac(1, 2 pi i)
    integral.cont upright(d)w w^(m+1)
    lr(
        frac(c, 12)(n+1)n(n-1)w^(n-2)
        + 2(n+1)w^n T(w)
        + w^(n+1) partial T(w)
    ).
$

The first two terms yield
$
    frac(c, 12)n(n^2-1)delta_(n+m,0)
    + 2(n+1)L_(n+m).
$

For the last term, integration by parts gives
$
    frac(1, 2 pi i)
    integral.cont upright(d)w w^(m+n+2) partial T(w)
    = -(m+n+2)L_(n+m).
$

Therefore
$
    [L_n,L_m]
    = (n-m)L_(n+m)
    + frac(c, 12)n(n^2-1)delta_(n+m,0).
$

This is the *Virasoro algebra*: the Witt algebra with a central
extension. The central term commutes with all generators and is
related to quantum effects, such as arbitrary phases in wave
functions.

Also one may check the commutation relation with primary fields:
$
    [L_n,phi(w)]
    = frac(1, 2 pi i)
    integral.cont_(C_w) upright(d)z z^(n+1)
    T(z)phi(w)
    = lr(
        h(n+1)w^n
        + w^(n+1)partial
    )phi(w).
$

//
// The antiholomorphic modes obey
// $
//   [overline(L)_n,overline(L)_m]
//   = (n-m)overline(L)_(n+m)
//     + frac(c, 12)n(n^2-1)delta_(n+m,0),
//   quad
//   [L_n,overline(L)_m] = 0.
// $

== Hilbert space of CFT

We question what is a universal behavior of a CFT Hilbert space. A CFT
should form a representation (may not be unitary) of the Virasoro
algebra. A general structure can be constructed as follows. We define
*Virasoro primary* state obeys
$
    L_n|phi⟩ = 0
    quad "for" n >= 1,
    quad quad
    overline(L)_n|phi⟩ = 0
    quad "for" n >= 1,
$
and
$
    L_0|phi⟩ = h|phi⟩,
    quad quad
    overline(L)_0|phi⟩
    = overline(h)|phi⟩.
$

Acting with negative modes produces its Virasoro descendants. The
resulting Virasoro multiplet is called a *Verma module*. For example,
$
    |h⟩,
    quad
    L_(-1)|h⟩,
    quad
    L_(-1)^2|h⟩,
    quad
    L_(-2)|h⟩,
$
and at the next level,
$
    L_(-1)^3|h⟩,
    quad
    L_(-1)L_(-2)|h⟩,
    quad
    L_(-3)|h⟩.
$

A mode $L_(-n)$ raises the $L_0$ eigenvalue by $n$:
$
    [L_0,L_(-n)] = n L_(-n).
$

// In the diagram of the Verma module, the circled descendants are quasiprimaries.

For special values of $c$ and $h$, a linear combination $|chi⟩$ of
descendants can itself satisfy the highest-weight conditions
$
    L_n|chi⟩ = 0
    quad "for every" n >= 1.
$

=== Realization of Hilbert Space

In the above discussion, we only abstractly defined the Hilbert space
of a CFT. We need a realization for the Verma module. We may find out
that we only need to assume the existence of a EM tensor, a series of
primary operators. Then the Hilbert space will be grouped into the
Verma modules.

First it should have a conformal invariant unique vaccum. We assume a
vaccum that satisfies:
$
    L_n|0⟩ = 0
    quad "for" n >= -1.
$
#remark([
    This condition in fact follows from the assumption that the EM
    tensor act on vaccum is well defined at 0 point.
])
This includes the global generators $L_(-1),L_0,L_1$. In general,
$
    L_(-2)|0⟩ != 0.
$
In fact, $L_(-2)|0⟩$ is exactly the state $T(0)|0⟩$.

We define primary state by acting primary operator on vaccum:
$
    |phi⟩ = phi(0)|0⟩.
$
Then the descendant states are defined by acting the negative modes of
Virasoro algebra on the primary state:
$
    L_(-n_1)dots L_(-n_k)|phi⟩
$
One may notice that the descendant states can also be defined by
acting some operators on the vaccum state. They will be combination of
the EM tensor and the primary operators.we define them as *descendent
operator*:
$
    phi^(-n)(w) = (L_(-n)phi)(w) = frac(1, 2 pi i)
    integral.cont_(C_w) upright(d)z (z-w)^(n-1) T(z)phi(w).
$
One may realize by definition we have:
$
    L_(-n)|phi⟩ = phi^(-n)(0)|0⟩.
$
We now see that we not only realized the Verma module, but also
realized an operator for each state in the Verma module. This is the
state-operator correspondence.

#remark([
    I think one shouldn't think of state-operator correspondence some
    incredible property but just some result of construction by hand,
    cause we realize the Hilbert space by acting operators on vaccum,
    there must be such a correspondence.
])


=== Complex Conjugation

In radial quantisation, conjugation relates a field at $z$ to one at
the inverted point $1/overline(z)$; for a primary of weights
$(h,overline(h))$,
$
    phi^dagger(z, overline(z))
    = frac(1, z^(2h) overline(z)^(2overline(h)))
    phi (
        frac(1, overline(z)),
        frac(1, z)
    ).
$
#remark([
    This is similar to the highier dimensional case. We choose such
    conjugation to make it a Unitary CFT on a cylinder.
])

In particular, one may find out
$
    L_n^dagger = L_(-n).
$
Consequently,
$
    ⟨h|L_n = 0
    quad "for" n <= -1.
$

== CFT Correlators

=== Correlators of descendants


Its correlators can be evaluated by inserting a contour integral:
$
    ⟨phi^(-n)(w)
        phi_1(w_1) dots phi_N(w_N)⟩
    =
    frac(1, 2 pi i)
    integral.cont_(C_w)
    frac(upright(d)z, (z-w)^(n-1))
    ⟨T(z)phi(w)phi_1(w_1)dots phi_N(w_N)⟩.
$

Deform the contour and use the conformal Ward identity. This gives
$
    ⟨phi^(-n)(w)
        phi_1(w_1) dots phi_N(w_N)⟩
    =
    cal(L)_(-n)
    ⟨phi(w)phi_1(w_1)dots phi_N(w_N)⟩,
$
where
$
    cal(L)_(-n)
    =
    sum_(i=1)^N
    lr(
        frac((n-1)h_i, (w_i-w)^n)
        - frac(1, (w_i-w)^(n-1))partial_(w_i)
    ).
$

In particular, translation invariance gives
$
    cal(L)_(-1)
    = -sum_(i=1)^N partial_(w_i)
    = partial_w.
$

Thus correlators of descendants are fixed by correlators of the
corresponding primaries.

=== OPE and Conformal Blocks

// #YL([This section deserves a rewrite])

We now consider the OPE of two primaries. Their OPE act on vaccum
should give us a state in the Hilbert space grouped into Verma
modules. Therefore, we can write the OPE structure universally as a
sum:
$
    phi_1(z,overline(z))phi_2(0,0)
    =
    sum_p
    sum_(ell,overline(ell))
    C_12^(p,ell,overline(ell))
    z^(h_p+|ell|-h_1-h_2)
    overline(z)^(
    overline(h)_p+|overline(ell)|
    -overline(h)_1-overline(h)_2
    )
    phi_p^(ell,overline(ell))(0,0).
$

Conformal Ward identities fix the relative contributions of the
descendants once the intermediate primary and its OPE coefficient are
specified. In particular, the descendant coefficients have the form
$
    C_12^(p,ell,overline(ell))
    =
    lambda_(12p)
    beta_12^(p,ell)
    overline(beta)_12^(p,overline(ell)).
$

The coefficients $beta$ depend on the conformal weights and the
central charge only, its exact number can be determined by the
conformal Ward identities.

One can therefore write the OPE as a sum over primary families:
$
    phi_1(z,overline(z))phi_2(0,0)
    =
    sum_p
    frac(
        lambda_(12p),
        z^(h_1+h_2-h_p)
        overline(z)^(
        overline(h)_1+overline(h)_2-overline(h)_p
        )
    )
    [Psi_p (z,overline(z),0,0)].
$
where the form of $[Psi_p]$ is determined by conformal symmetry fully:
$
    [Psi_p (z,overline(z),0,0)]
    =
    sum_(ell,overline(ell))
    beta_12^(p,ell)
    overline(beta)_12^(p,overline(ell))
    z^(|ell|)
    overline(z)^(|overline(ell)|)
    phi_p^(ell,overline(ell))(0,0).
$
One may refer to sec. 6.6.3 to understand how we fix all the
coefficient $beta$ in the OPE.
---

Now we consider a four-point function of primary fields.
$
    ⟨phi_1(z_1,overline(z)_1)
        phi_2(z_2,overline(z)_2)
        phi_3(z_3,overline(z)_3)
        phi_4(z_4,overline(z)_4)⟩.
$
The four-point function depends on the cross ratios
$
    x = (z_12 z_34) / (z_13 z_24),
    quad
    overline(x) =
    (overline(z)_12 overline(z)_34) /
    (overline(z)_13 overline(z)_24),
$
where $z_(i j) = z_i - z_j$. A global conformal transformation allows
us to place the operators at $z_1 = infinity$, $z_2 = 1$, $z_3 = x$,
and $z_4 = 0$. Therefore we only need to study a four-point function
of the form
$
    G_(34)^(21)(x, overline(x))
    =
    ⟨phi_1(infinity, infinity)
        phi_2(1, 1)
        phi_3(x, overline(x))
        phi_4(0, 0)⟩.
$
#remark([The order of 1,2 3,4 is important, they notes which operator
    is at which position.])
note that $phi_1 (infinity, infinity)$ means the limit of
$z_1^(2h_1) overline(z)_1^(2overline(h)_1) phi_1(z_1, overline(z)_1)$
as $z_1 -> infinity$.
#remark([
    The explicit relation between the four-point function at any point
    and $G$ is given as follows:
    $
        ⟨product_(i=1)^4 phi_i(z_i, overline(z)_i)⟩
        = P_h(z_i) P_(overline(h))(overline(z)_i)
        G_(34)^(21)(x, overline(x)),
    $
    where
    $
        P_h (z_i)
        = (frac(z_24, z_12 z_14))^(h_1)
        (frac(z_14, z_12 z_24))^(h_2)
        (frac(z_12 z_14, z_13^2 z_24))^(h_3)
        (frac(z_12, z_14 z_24))^(h_4).
    $
    The factor $P_(overline(h)) (overline(z)_i)$ is obtained by
    replacing $z_(i j)$ and $h_i$ with $overline(z)_(i j)$ and
    $overline(h)_i$.
])

In terms of in and out states we can also write:
$
    G_(34)^(21)(x, overline(x))
    =
    ⟨h_1, overline(h)_1|
        phi_2(1, 1) phi_3(x, overline(x))
        |h_4, overline(h)_4⟩.
$

Applying the OPE to $phi_3(x, overline(x)) phi_4(0, 0)$ we may find
that:
$
    G_(34)^(21)(x, overline(x))
    =
    sum_p
    frac(
        lambda_(34p),
        x^(h_3+h_4-h_p)
        overline(x)^(
        overline(h)_3+overline(h)_4-overline(h)_p
        )
    )
    ⟨h_1, overline(h)_1|
        phi_2(1, 1)
        [Psi_p (x, overline(x),0,0)]|0⟩.
$
One can introduce a function:
$
    cal(A)_(34)^(21)(p|x)
    = lambda_(1 2 p)^(-1)
    x^(h_p-h_3-h_4) overline(x)^(overline(h)_p-overline(h)_3-overline(h)_4)
    ⟨h_1, overline(h)_1|
        phi_2(1,1)
        [Psi_p (x,overline(x),0,0)]|0⟩.
$
and we have:
$
    G_(34)^(21)(x, overline(x))
    =
    sum_p lambda_(12p) lambda_(34p)
    cal(A)_(34)^(21)(p|x).
$
we recognize that this function is constructed from some 3 point
function involving descendants and some holomorphic and
antiholomorphic factors. We know that in 2D the holomorphic and
antiholomorphic part of 3 point function can be factorized. Therefore
the 4 point function itself can be factorized into holomorphic and
antiholomorphic part. We can write:
$
    G_(34)^(21)(x, overline(x))
    =
    sum_p lambda_(12p) lambda_(34p)
    cal(F)_(34)^(21)(p|x)
    overline(cal(F))_(34)^(21)(p|overline(x)). quad "where" quad
    cal(A)_(34)^(21)(p|x)
    =
    cal(F)_(34)^(21)(p|x)
    overline(cal(F))_(34)^(21)(p|overline(x)).
$
We define the holomorphic function $cal(F)_(34)^(21)(p|x)$ as the
*holomorphic conformal block*. It is a fixed function constraint by
the conformal ward identity and taking out the OPE coefficient of
primary fields fixes its normalization. Therefore it is a fully fixed
function. The explicit form is given below, The holomorphic conformal
block includes the intermediate primary $|h_p⟩$ and all its Virasoro
descendants. If $I$ labels a descendant and $|I|$ is its level, it can
be written as
$
    cal(F)_(34)^(21)(p|x)
    =
    x^(h_p - h_3 - h_4)
    sum_I beta_34^(p, I) x^(|I|)
    frac(
        ⟨h_1|phi_2(1)L_(-I) |h_p⟩,
        ⟨h_1|phi_2(1)|h_p⟩
    ).
$
The denominator is just the three-point function of the primary fields
by definition.
#remark([Here the overlap means we take only the holomorphic part of
    the full overlap])
It is generally hard to compute the conformal blocks in a close form.
However, we can do an expansion and fix the coefficient of each order.
Its expansion begins as
$
    cal(F)_(34)^(21)(p|x)
    =
    x^(h_p - h_3 - h_4)
    (1 + F_1 x + F_2 x^2 + dots),
    quad
    F_1 =
    frac(
        (h_p + h_2 - h_1)(h_p + h_3 - h_4),
        2h_p
    ).
$

Once the external and intermediate conformal weights and the central
charge $c$ are fixed, Virasoro symmetry determines the conformal
block. The spectrum of intermediate primaries and the three-point
coefficients $lambda$ are additional data of the CFT.

// ---
//
// For a four-point function, we have found that the correlator can be
// trasnformed into a four point function below by conformal
// transformation:
// $
//     G^()(z,overline(z))
//     =
//     lim_(z_4 -> infinity)
//     z_4^(2h_4)
//     overline(z)_4^(2overline(h)_4)
//     ⟨phi_4(z_4,overline(z)_4)
//         phi_1(1,1)
//         phi_2(z,overline(z))
//         phi_3(0,0)⟩.
// $
//
// If we plug in the OPE between 2 and 3 field. With some derivation we
// can find out that the four-point function can be decomposition into
// intermediate primary families as
// $
//     G(z,overline(z))
//     =
//     sum_p lambda_(12p)^2
//     cal(F)_(h_p)(p|z)
//     overline(cal(F))_(overline(h)_p)(p|overline(z)).
// $
// #YL([Here are some mistakes!! copy yellow book please.])
// The functions $cal(F)_(h_p)$ are *Virasoro conformal blocks*. One can
// show that it takes the exact form, that is fully determined by
// conformal symmetry as:
// $
//     cal(F)_h (p|z)
//     = z^(h_p - 2h)
//     sum_({k})
//     beta^(p, {k})
//     z^(|k|)
//     frac(
//         ⟨h|phi(1) L_(-k_1) ⋯ L_(-k_n)|h_p⟩,
//         ⟨h|phi(1) |h⟩
//     )
// $
//
// // Schematically, a holomorphic block sums the contributions of all descendants of $p$:
// // $
// //   cal(F)_(h_p)(p|z)
// //   =
// //   z^(h_p-2h)
// //   sum_(ell,ell')
// //   beta^(p,ell,ell')
// //   z^(|ell|)
// //   frac(
// //     ⟨h_4|phi(1)L_(-ell)L_(-ell')|h_p⟩,
// //     ⟨h_4|phi(1)|h_p⟩
// //   ).
// // $
// //
// These are complicated functions; in particular, they depend on $c$.
// And one may find that they are fully determined by the external
// primary index and the intermidiate primary index, the conformal
// symmetry will tell us the explicit form of this function.

== Minimal models

Conformal field theories have considerable structure, yet only a few
examples follow directly from free-field methods. This motivates the
*conformal bootstrap*: combine conformal symmetry, OPE relations,
unitarity and other assumptions to constrain or determine a CFT.

A CFT is specified by its spectrum and correlation data, including
$
    { (Delta_i,ell_i), lambda_(i j k) }.
$

In two dimensions, the minimal models provide special, highly
constrained solutions.

=== Constraints from unitarity

With $⟨h|h⟩=1$, the norm of a level-one descendant is
$
    ⟨h|L_1L_(-1)|h⟩ = 2h >= 0,
$
so
$
    h >= 0.
$
To make such calculation easier, we can define the Gram matrix for the
descendants. At level $k$, the descendants are labelled by partitions
$I = (n_1, dots, n_m)$ with $n_1 + dots + n_m = k$. We write
$|s_I⟩ = L_(-n_1) dots L_(-n_m)|h⟩$. Assuming $⟨h|h⟩ = 1$ and
$L_n^dagger = L_(-n)$, the *Gram matrix* is the matrix of inner
products
$
    M^(k)_(I J)(c, h) = ⟨s_I|s_J⟩.
$
Its size is $p(k) times p(k)$, where $p(k)$ is the number of
partitions of $k$. The *Kac determinant* is the determinant of this
matrix. Up to a nonzero normalization factor $A_k$, it takes the form
$
    det M^(k)(c, h)
    = A_k product_(r,s >= 1, r s <= k)
    (h - h_(r,s)(c))^(p(k - r s)) gt.eq 0
$
Here $h_(r,s)(c)$ are the conformal weights at which a Virasoro module
develops a null descendant. Thus, when the Kac determinant vanishes,
the Gram matrix is degenerate: some nonzero linear combination of
level-$k$ descendants is orthogonal to every state at that level. The
factors in the product identify the values of $h$ and $c$ at which
this happens.

At level two, consider the Gram matrix for $L_(-1)^2|h⟩$ and
$L_(-2)|h⟩$:
$
    M^(2)
    =
    mat(
        4h(2h+1), 6h;
        6h, 4h+ c slash 2
    )
    >= 0.
$

The trace must be nonnegative:
$
    "Tr" M^(2)
    = 8h(h+1)+frac(c, 2) >= 0.
$

Its determinant factorises as
$
    det M^(2)
    =
    32h(h-h_(1,1))(h-h_(1,2))(h-h_(2,1))
    >= 0,
$
where
$
    h_(1,1)=0,
    quad quad
    h_(1,2),h_(2,1)
    =
    frac(1, 16)
    (
        5-c ± sqrt((1-c)(25-c))
    ).
$

The level-two condition excludes a region in the $(c,h)$ plane. At
higher levels, the Kac determinant gives further constraints.
#remark([
    The theories with $c>1$ are always unitary. To find more
    interesting results we here consider the case $c<1$.
])


Higher levels impose further conditions. The Kac determinant at level
$k$ has the form
$
    det M^(k)
    =
    "const."
    product_(r,s>=1; r s<=k)
    (h-h_(r,s))^(P(k-r s)),
$
where $P(n)$ counts the integer partitions of $n$, and the roots of
the Kac determinant and its relation with the central charge is given
by the following form:
$
    h_(r,s)
    =
    frac(
        ((m+1)r-m s)^2-1,
        4m(m+1)
    ),
    quad quad
    c = 1-frac(6, m(m+1)).
$
In diagram of the $(c,h)$ plane, the region in shaded area is excluded
by the Kac determinant. #figure(
    image("../assets/kacdeterminant.png", width: 80%),
    caption: [Kac Determinant],
) <fig-kacdeterminant>

=== Virasoro Minimal Models

For $c<1$, one can prove that positivity at every level leaves
isolated solutions, such solutions when combined together will give us
the minimal models:
$
    cal(M)_(m+1,m),
    quad quad
    m=2,3,4,dots.
$
The conformal weights and central charge amazingly conincide with the
root of the Kac determinant:
$
    h_(r,s)
    =
    frac(
        ((m+1)r-m s)^2-1,
        4m(m+1)
    ),
    quad quad
    c = 1-frac(6, m(m+1)),\
    m = 2,3,4,dots quad r = 1,2,dots,m-1, quad s = 1,2,dots,r.
$

Their allowed primary weights are entries of the Kac table,
$
    h=h_(r,s),
$
notice that there is an identification of the weights in the Kac
table, they should be understand as the same primary:
$
    h_(r,s)=h_(m-r,m+1-s).
$

A state $|h⟩$ in one of these representations has a null descendant at
some level $k$.

=== Null State and Fusion Rules

For example, the primary $|h_(1,2)⟩$ has a level-two null state
$
    |chi⟩
    =
    lr(
        L_(-2)
        - frac(3, 2(2h+1))L_(-1)^2
    )|h_(1,2)⟩.
$
The corresponding null field is:
$
    chi(z)
    =
    lr(
        phi^(-2)(z)
        - frac(3, 2(2h+1)) partial^2 phi(z)
    ).
$
One can prove that a correlator containing the corresponding null
field vanishes:
$
    ⟨chi(z)phi_1(z_1)dots phi_N (z_N)⟩=0.
$

Using the differential operators from above, and by the result of
correlation function of descendants one can find that:
$
    (
        cal(L)_(-2)
        - frac(3, 2(2h+1))cal(L)_(-1)^2
    )
    ⟨phi(z)phi_1(z_1)dots phi_N(z_N)⟩
    =0.
$

For a three-point function
$
    ⟨phi(z)phi_(h_1)(z_1)phi_(h_2)(z_2)⟩
    =
    frac(
        lambda_(phi,h_1,h_2),
        (z-z_1)^(h+h_1-h_2)
        (z-z_2)^(h+h_2-h_1)
        (z_1-z_2)^(h_1+h_2-h)
    ),
$
the null-state equation implies
$
    lambda_(phi,h_1,h_2)=0
$
unless
$
    2(2h+1)(h+2h_2-h_1)
    =
    3(h-h_1+h_2)(h-h_1+h_2+1).
$

These selection rules give out an restriction on what primary fields
can appear in the RHS of the OPE of two primary fields. We can denote
such relation as a fusion product. If $h_1=h_(r,s)$, this condition
allows
$
    h_2=h_(r,s-1)
    quad "or" quad
    h_2=h_(r,s+1).
$
the fusion product or the fusion rule is:
$
    phi_(1,2) times phi_(r,s)
    =
    phi_(r,s-1)+phi_(r,s+1),
$
This discussion can be generalized to other chiral primaries. The
result is that we can derive the full fusion rules for the minimal
models primaries.

=== Example: the two-dimensional Ising CFT

The Ising model is $cal(M)_(4,3)$. Its primary fields are
$
    sigma:
    (h,overline(h))
    =
    (frac(1, 16), frac(1, 16)),
    quad
    epsilon:
    (h,overline(h))
    =
    (frac(1, 2), frac(1, 2)),
    quad
    II:(h,overline(h))=(0,0).
$

Their fusion rules are
$
    sigma times sigma = II+epsilon,
    quad
    sigma times epsilon = sigma,
    quad
    epsilon times epsilon = II.
$

The null-state equation also constrains the four-spin correlator. We
first focus on the holomorphic part of the correlation function:
$
    0
    =
    (
        sum_(i=2)^4
        (
            frac(h, (z_1-z_i)^2)
            + frac(1, z_1-z_i)partial_(z_i)
        )
        - frac(3, 2(2h+1))partial_(z_1)^2
    )
    ⟨sigma(z_1)dots sigma(z_4)⟩.
$

Introduce the cross ratio
$
    eta
    =
    frac(z_12 z_34, z_13 z_24)
$
and write the holomorphic correlator as
$
    ⟨sigma(z_1)dots sigma(z_4)⟩
    =
    frac(g(eta), z_12^(2h)z_34^(2h)).
$

The resulting equation is
$
    g''(eta)
    + frac(2-8h+4eta(h-1), 3eta(1-eta))g'(eta)
    - frac(2h(2h+1), 3(1-eta)^2)g(eta)
    =0,
    quad quad h=frac(1, 16).
$

It has two independent solutions:
$
    g_±(eta)
    =
    frac(sqrt(1 ± sqrt(eta)), (1-eta)^(1/8)).
$
#remark([
    We can only consider the holomorphic part is due to the fact the
    constraints constrain the holomorphic and antiholomorphic parts
    separately.
])

For the full correlator, it should be a combination of the holomorphic
and antiholomorphic parts. A general correlation function of four
primary fields can be written as:
$
    ⟨sigma(z_1, overline(z)_1)dots
        sigma(z_4, overline(z)_4)⟩
    =
    frac(
        G(eta,overline(eta)),
        |z_12|^(4h)|z_34|^(4h)
    ).
$

The most general combination of the two holomorphic and two
antiholomorphic solutions is
$
    G(eta,overline(eta))
    =
    C_(++)g_+(eta)g_+(overline(eta))
    + C_(+-)g_+(eta)g_-(overline(eta))
    + C_(-+)g_-(eta)g_+(overline(eta))
    + C_(--)g_-(eta)g_-(overline(eta)).
$
The full correlator must also obey:

- Single-valuedness under monodromy around $eta=0$ and $eta=1$.
- Crossing symmetry.
- Consistency with the OPE.

In this example, single-valuedness fixes the combination, up to an
overall real constant $A$:
$
    G(eta,overline(eta))
    =
    A frac(
        |1+sqrt(eta)|+|1-sqrt(eta)|,
        2|1+eta|^(1/4)
    ).
$

#remark([
    This constant can not be fixed by all above constraints. Cause
    such constraints are differential equations and the solution is
    always up to a constant.
])
We know that the correlation function at $0,1,x,infinity$ can be
expand in terms of the conformal blocks:
$
    G(eta,overline(eta)) |z_12|^(-4h) |z_34|^(-4h)
    =
    sum_(p)
    lambda_(sigma sigma p)^2
    cal(F)_p (eta)
    overline(cal(F))_p (overline(eta)).
$
with a normalization of $A=1$ we can read off the OPE coefficients
from the expansion of the conformal blocks:
$
    lambda_(sigma sigma II) = 1,
    quad
    lambda_(sigma sigma epsilon) = frac(1, 2).
$
#remark([The OPE coefficients are $A$ dependent. One may understand
    this as we have a freedom to rescale the primary fields. The
    conformal blocks are fixed functions, they are independent of the
    normalization of the primary fields.])



// The OPE near $eta=0$ gives
// $
//     G ∼ A (1+frac(1, 4)sqrt(eta overline(eta))+dots).
// $
// Normalising the identity contribution fixes $A=1$.
//
// The fusion rule tells us Virasoro conformal-block decomposition has
// two channels:
// $
//     G(eta,overline(eta))
//     =
//     sum_(p in {II,epsilon})
//     lambda_(sigma sigma p)^2
//     eta^(2h) overline(eta)^(2h)
//     cal(F)_p (eta)
//     overline(cal(F))_p (overline(eta)).
// $
// // #remark([The conformal blocks we used here is different from the one
// //     we defined above bya normalization factor, we drop the $z^(-2h)$
// //     to suit the combination to $G$ instead of the full correlator.])
//
// In terms of the normalised blocks,
// $
//     G(eta,overline(eta))
//     =
//     (eta overline(eta))^(2h)
//     (
//         lambda_(sigma sigma II)^2
//         |cal(F)_II (eta)|^2
//         + lambda_(sigma sigma epsilon)^2
//         |cal(F)_epsilon (eta)|^2
//     ).
// $
//
// Here
// $
//     eta^(2h)cal(F)_II (eta)
//     =
//     frac(
//         sqrt(1+sqrt(1-eta))
//         +sqrt(1-sqrt(1-eta)),
//         2(1-eta)^(1/8)
//     )
//     =
//     1+frac(eta^2, 64)+dots,
// $
// and
// $
//     eta^(2h)cal(F)_epsilon (eta)
//     =
//     frac(
//         sqrt(1+sqrt(1-eta))
//         -sqrt(1-sqrt(1-eta)),
//         2(1-eta)^(1/8)
//     )
//     =
//     sqrt(eta)
//     (1+frac(eta^2, 64)+dots).
// $
//
// Under certain normalization (we normalize
// $lambda_(sigma sigma II) = 1$) OPE coefficients can be read off by
// comparing the expansions of the conformal blocks with the expansion of
// $G(eta,overline(eta))$:
// $
//     lambda_(sigma sigma II)=1,
//     quad quad
//     lambda_(sigma sigma epsilon)=frac(1, 2),
// $

// Finally, exchanging insertions $1$ and $3$ sends
// $
//     eta -> 1-eta.
// $
// Crossing symmetry requires
// $
//     frac(
//         G(eta,overline(eta)),
//         |z_12|^(4h)|z_34|^(4h)
//     )
//     =
//     frac(
//         G(1-eta,1-overline(eta)),
//         |z_23|^(4h)|z_14|^(4h)
//     ),
// $
// or equivalently,
// $
//     G(eta,overline(eta))
//     =
//     |frac(eta, 1-eta)|^(4h)
//     G(1-eta,1-overline(eta)).
// $
//
// This crossing equation can also be used to determine
// $lambda_(sigma sigma epsilon)^2=frac(1, 4)$.
