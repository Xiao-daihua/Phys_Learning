#import "../env/lib.typ": *

= Lecture 1: Massless Representations of the Poincaré Group

We have classified the Unitary Irreducible Representations (UIRs) of
the Poincaré group into two classes: massive representations and
massless representations. In this lecture, we will focus on the
massless representations.

== Recap of UIR Construction

To construct a UIR of Poicare group we need to construct it for both
translation and Lorentz transformation, represented as:
$
    U(a) = e^(i a_mu P^mu), quad U(Lambda) = e^(-i/2 omega_(mu nu) J^(mu nu))
$
To do this we assume a UIR space with basis $|p,sigma angle.r$, which
diagonalizes the operator $P^mu$. Then we can construct the UIR of
translation by:

- For Translation:
    $U(a) |p,sigma angle.r = e^(i a_mu p^mu) |p,sigma angle.r$.

- For Lorentrz transformation we need to use *Wigner's Little Group*

    - Step 1: define a "Standard Boost" and assume it satisfy:
        $U(Lambda_p) |k , sigma angle.r = |p, sigma angle.r$

    - Step 2: for a general lorentz transformation is given by a
        combination of wigner little group and the standard boost. We
        only need to consider a representation of the wigner little
        group, which is given by:
        $W(Lambda, p) = Lambda^(-1)_(Lambda p) Lambda Lambda_p$.

We know that the generator of Wigner's little group is exactly given
by the *Pauli-Lubanski* vector. Thus, long as we use a irreducable
representation of the Wigner's little group, we can get a UIR of the
Lorentz transformation.
$
    U(Lambda) |p, sigma angle.r & = H(Lambda_p) U(W(Lambda, p)) |k,sigma angle.r\
    &= sum_(sigma') D_(sigma' sigma)(W(Lambda, p)) |Lambda p, sigma' angle.r
$<eq:lorentzirrep>

=== Helicity Basis

Different Basis corresponds to different "standard boost". For
helicity basis, we choos the standard boost to be:
$
    Lambda^h_p = R(hat(p)) e^(i K_3 eta_p), quad eta_p = op("arctanh")((|arrow(p)|)/p^0)
$
which is:

- first boost to the speed of $p$ along the $z$-axis, and then

- rotate to the direction of $p$.

Note that here $K_3$ is in the defining representation of Lorentz
group.

== Massless Representations

=== Wigner Little Group

For a massless representation, we take the standard momentum to be
$k^mu = (k ,0,0, k)$. We can directly get the Wigner's Little group by
calculating the Pauli-Lubanski vector, which is given by:
$
    W^0 = -k J^3, quad W^1 = k (K^2 - J^i), quad W^2 = k (-J^2 - K^1), quad W^3 = -k J^3
$
We can see that the Wigner's Little group only have 3 generators
satisfying the commutation relation of:
$
    [J^3, W^1] = i W^2, quad [J^3, W^2] = -i W^1, quad [W^1, W^2] = 0
$
This is the algebra of ISO(2) group.

=== Representation of Wigner's Little Group

We now try to find a representation for this algebra. We can reconbine
the generators as:
$
    W^plus.minus = W^1 plus.minus i W^2
$
Then the commutation relation becomes:
$
    [J^3, W^plus] = W^plus, quad [J^3, W^minus] = -W^minus, quad [W^plus, W^minus] = 0
$
We can see that $W^plus.minus$ behaves like the raising and lowering
operator, but the noncommutative nature tells us that state generated
by $W^plus.minus$ are not normalizable. We can further see this from
below

To construct a representation for this algebra we can have
$|k, lambda angle.r$ as the basis of the representation space which is
an eigenstate of $J^3$ with eigenvalue $lambda$. Then we can see that:
$
    J^3 W^plus |k, lambda angle.r = (lambda + 1) W^plus |k, lambda angle.r, quad J^3 W^minus |k, lambda angle.r = (lambda - 1) W^minus |k, lambda angle.r
$
And the Casimir of the algebra is given by:
$
    W^2 = - W^plus W^minus
$
For an irreducable representation, the Casimir should be proportional
to the identity operator, which means that $W^plus W^minus= - c II$.
Moreover, we note that by definition and the restriction of
representation to be unitary, we have: $W^- = (W^+)^dagger$. Thus we
can see that $c$ should be non-negative, and we can have two cases:

- $c>0$: then we have $(W^-)^dagger W^- prop 1$, which means that the
    lowering operator of the algebra is a unitary operator. Thus the
    representation space is infinite dimensional, which is not
    physical.

- $c = 0$: then we have $W^+ = W^- = 0$ and the representation space
    is one dimensional, which is physical. Thus this is the case we
    are interested in。

In this case, the representation of the Wigner's Little group is one
dimensional and labelled by $lambda$. The representation is given by:
$
    W^mu |k, lambda angle.r = - lambda k^mu |k, lambda angle.r
$
We can generalize this result to a general $p$ by using the
commutation relation of $W^\mu$ and Lorentz Generators. The results
is:
#theorem[Massless Representation of Wigner's Little Group][
    For a massless representation of the Poincaré group, the
    representation of Wigner's Little group is one dimensional and
    labelled by $lambda$. The representation of generators are given
    by:
    $
        W^mu |p, lambda angle.r = - lambda p^mu |p, lambda angle.r, quad W^mu = - lambda P^mu
    $
]
we can prove this by:
$
    H(p) W^mu H(p)^dagger H(p) |k, lambda angle.r = H(p) W^mu |k, lambda angle.r = - lambda H(p) k^mu |p,lambda angle.r
$<eq:helicity>
and we have the commutation relation:
$
    H(p) W^mu H(p)^dagger = W^nu Lambda_(p nu)^(mu)
$

=== Interpretation of $lambda$

We can give $lambda$ a physical interpretation. We choose the standard
boost as:
$
    Lambda^h_p = R(hat(p)) e^(i K_3 eta_p), quad eta_p = op("arctanh")((|arrow(p)|)/p^0)
$
We know from @eq:helicity that the state $|p, lambda angle.r$ is an
eigenstate of $H(p) J^3 H(p)^dagger$ eigenvector with eigenvalue
$lambda$. In the helicity basis, we plug in the form of $H(p)$ we
have:
$
    H(p) J^3 H(p)^dagger = R(hat(p)) e^(i K_3 eta_p) J^3 e^(-i K_3 eta_p) R(hat(p))^dagger = R(hat(p)) J^3 R(hat(p))^dagger = J dot hat(p)
$
We thus see that the basis vector $|p, lambda angle.r$ in the helicity
basis is an eigenvector of the operator:
$
    J dot hat(p) |p, lambda angle.r = lambda |p, lambda angle.r
$
Thus we interpret $lambda$ as the helicity of the state, which is the
projection of the spin along the direction of motion.

In fact, the form of $H(p) W^mu H(p)^dagger$ is independent of the
choice of explicit form of $H(p)$ for *massless representation*. Yet,
helicity basis is good for directly showing this result.


=== Helicity Basis UIR

We explicitly write down the "standard boost" for the helicity basis:
$
    Lambda^h_p = R(hat(p)) e^(i K_3 eta_p)
$
where
$
    e^(i K_3 eta_p) = mat(
        cosh(eta_p), 0, 0, sinh(eta_p);
        0, 1, 0, 0;
        0, 0, 1, 0;
        sinh(eta_p), 0, 0, cosh(eta_p)
    ), quad eta_p = op("arctanh")((|arrow(p)|)/p^0)
$
and $R(hat(p))$ is standard rotation. If we now assume that
$H(p) = U(Lambda_p^h)$ that gives us:
$
    H(p) |k,lambda angle.r = |p, lambda angle.r
$
as the LT that doesn't change the $lambda$ index. Now we construct the
full UIR in Helicity basis, as @eq:lorentzirrep, we have in Helicity
basis:
$
    U(Lambda)|p, lambda angle.r = H(Lambda p) U(W(Lambda, p)) |k, lambda angle.r
$
and we know that $U(W(Lambda,p))$ is generated by only one non-zero
generator $J^3$ for the $c=0$ case, thus, we assume the lie parameter
is given by $theta(Lambda, p)$ which can be explicitly calculated from
the definition:
$
    W(Lambda, p) = Lambda^(h -1)_(Lambda p) Lambda Lambda_p^h = e^(i theta(Lambda, p) J^3)
$
(in the defining representation of lorentz group) Then we have:
$
    U(Lambda) |p, lambda angle.r = e^(i theta(Lambda, p) lambda) |Lambda p, lambda angle.r
$
This is the representation of the Lorentz transformation for massless
representation in the helicity basis.
#theorem[Massless Representation of Poincare group in Helicity Basis][
    For a massless representation of the Poincaré group, the
    representation of the Lorentz transformation in the helicity basis
    is given by:
    $
        U(Lambda)|p, lambda angle.r = e^(i theta(Lambda, p) lambda) |Lambda p, lambda angle.r
    $
    the representation of the translation is given by:
    $
        U(a)|p, lambda angle.r = e^(i a_mu p^mu) |p, lambda angle.r
    $
]

=== Values of $lambda$

Just as the label of massive representation the spin $j$ can only take
integer or half-integer values, the helicity $lambda$ of massless
representation also have restrictions. The restriction is from the
global topology of the lorentz group:

- Any $4 pi$ rotation must give back the identity element.

Thus we have:
$
    e^(i 4 pi lambda) = 1, quad lambda in Z/2
$
Moreover, we want the state not only to be representation of *Poincare
group* but also form a representation of *CPT* transformation. This
shows that a single $lambda$ representation is not enough, we need to
have both $lambda$ and $-lambda$ representation to form a
representation of CPT transformation.

Thus we have the final result that the helicity $lambda$ can only take
integer or half-integer values, and for each $lambda$ we also need to
have a $-lambda$ representation.

For example, for photon, we have $lambda = 1$ and $lambda = -1$ representation.
