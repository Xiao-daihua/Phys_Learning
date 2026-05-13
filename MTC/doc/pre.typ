#import "../env/lib.typ": *

= Algebras and Representations

This section we introduce some concepts in Algebra and Representation
Theory. We will see that these concepts are very useful in
characterizing structures in CFT and they naturally forms a category
structure, which is the main topic of the next section.


== Intertwiner and Representation

Let $G$ be a group and let $(V, rho)$, $(W, sigma)$ be two
representations of $G$. A *intertwiner* (or *morphism of
representations*) is a linear map

$
    phi : V -> W
$

such that for all $g in G$,

$
    phi compose rho(g) = sigma(g) compose phi,
$

i.e., the following diagram commutes:

$
    V -->^(rho(g)) V \
    phi arrow.b quad quad arrow.b phi \
    W -->_(sigma(g)) W
$

The set of all intertwiners from $(V, rho)$ to $(W, sigma)$ is denoted
$"Hom"_G (V, W)$. If $phi$ is an isomorphism, the two representations
are said to be *equivalent* (or *isomorphic*), written
$(V, rho) tilde.eq (W, sigma)$.

#theorem("Schur's Lemma")[
    Let $(V, rho)$ and $(W, sigma)$ be irreducible representations of
    $G$, and let $phi in "Hom"_G (V, W)$.
    + If $(V, rho) tilde.equiv.not (W, sigma)$, then $phi = 0$.
    + If $V = W$ and $G$ acts over $CC$, then $phi = lambda "id"_V$
        for some $lambda in CC$.
]
This is a version of Shur's Lemma using the language of intertwiners.

=== Intertwiners of Lie Algebras

Now let $frak(g)$ be a Lie algebra and let $(V, rho)$, $(W, sigma)$ be
representations of $frak(g)$, i.e., Lie algebra homomorphisms

$
    rho : frak(g) -> frak(g l)(V), quad sigma : frak(g) -> frak(g l)(W).
$

A *intertwiner of Lie algebra representations* is a linear map
$phi : V -> W$ satisfying

$
    phi compose rho(X) = sigma(X) compose phi, quad forall X in frak(g).
$

Equivalently, $phi$ intertwines the $frak(g)$-actions:

$
    phi(X dot v) = X dot phi(v), quad forall X in frak(g),, v in V,
$<eq:liealgebraintertwiner>
where $X dot v := rho(X)(v)$.

The category of representations of $frak(g)$ with intertwiners as
morphisms is denoted $"Rep"(frak(g))$.

#example[
    Let $frak(g) = frak(s l)_2(CC)$ with standard generators $e, f, h$
    satisfying $[h, e] = 2e$, $[h, f] = -2f$, $[e, f] = h$. The
    inite-dimensional irreducible representations $V_n$ ($n in NN$)
    have basis ${v_0, v_1, dots, v_n}$ with
    $
        h dot v_k = (n - 2k) v_k, quad e dot v_k = (n - k + 1) v_(k-1), quad f dot v_k = (k+1) v_(k+1).
    $
    By Schur's Lemma, $"Hom"_(frak(s l)_2)(V_m, V_n) = 0$ for
    $m eq.not n$, and $"End"_(frak(s l)_2)(V_n) tilde.eq CC$.
]


=== CVO as Intertwiners

The Chiral Vertex Operators constructed in Moore and Seiberg's work
can be understood as king of a generalization of the concept of
intertwiners of representation of Virasoro Algebra (in fact any Chiral
Algebra(eg. Kac Moody Algebra) can be used here).

See @Moore:1989vd for a constructive definition of CVOs. In the
constructive definition, we are made believe that the CVOs are defined
to compute the BPZ conformal blocks of RCFT (at least for ones on a
plane and on a torus).

There is also an axiomatic definition of CVOs as a intertwining object
between:
$
    mat(i; j k)(z) : cal(A) times.o cal(A) -> cal(A)
$
where $cal(A)$ is a representation of the chiral algebra of CFT, eg.
Virasoro Algebra. However, instead of following
@eq:liealgebraintertwiner as a normal lie algebra, it satisfy a more
complicated intertwining relation:

We frist define a "co-product" of the chiral algebra representation:
$
    & Delta_z : cal(A) -> cal(A) times.o cal(A),\
    & Delta_( z ) ( L_( n ) ) = 1 times.circle L_( n ) + sum_( k = 0 )^( oo ) binom(n + 1, k) z^( n + 1 - k ) L_( k - 1 ) times.circle 1.
$
This kinds of bizzare co-product in fact follows directly from Cauchy
theorem of complec integral on with 3 point instertion of the virasoro
generators.

Then we define CVO of intertwining objects satisfying:

+ *Intetwining* compatible to the co-product:
$
    (L_n) mat(i; j k)(z) (beta times.o gamma) & = mat(i; j k)(z) (Delta_z (L_n) (beta times.o gamma))\
    &= mat(i; j k)(z)[ (beta times.o L_n gamma) + sum_( k = 0 )^( oo ) binom(n + 1, k) z^( n + 1 - k ) (L_( k - 1 ) beta times.o gamma)]
$

+ *Position dependence*:
$
    partial_z mat(i; j k)(z) (beta times.o gamma) = mat(i; j k)(z) (L_(-1) beta times.o gamma)
$

This abstract definition of CVO is equivalent to the constructive
definition;
$
    mat(i; j k)(z) (beta times.o * ) = Phi_(i k)^(j , beta)(z)
$
where we view $Phi_(i k)^(j , beta)(z)$ as kinds of a chiral primary
field with insertion at point $z$ with a field in $j$ representation
and labeled by $beta$.

To understand the mathematical structure of CFT, we commonly say call
the space of CVOs with fixed $i,j,k$ representation as $V_(j k)^i$ and
this is in fact by this definition:

- Mathematically, $V_(j k)^i$ is the space of intertwiners of
    representations of chiral algebra with the above intertwining
    relation.

- Semiphysically, $V_(j k)^i$ is the space of chiral primary fields
    with fixed representation $i,j,k$ and the above position
    dependence and conformal transformation property.

- Physically, $V_(j k)^i$ is the space of all possible conformal
    blocks with fixed representation $i,j,k$ and position
    $0,z,infinity$.

Naively, we may think that the space $V_(j k)^i$ is a 1 dimensional
vector space due to the fact that the 3 point blocks is fully fixed by
conformal symmetry. This is true for Virasoro Minimal Models, yet for
general Kac Moody Theory, this space may be of higher dimension.

We often notation $N_(j k)^i := dim V_(j k)^i$ as the fusion rule of
the CFT, which counts the number of independent conformal blocks with
fixed representation $i,j,k$ and position $0,z,infinity$.


== Vertex Operator Algebras

We know that a CFT should have a chiral algebra, well at least the
Virasoro Algebra. You do can add extra symmetries and have more, like
Kac Moody Algebra ... And we know that the Hilbert Space of the CFT
should form a direct sum of unitary representation of the chiral
algebra:
$
    cal(H) = plus.o.big_i cal(H)_i, quad cal(H)_i = V_i times.o overline(V)_i,
$
where $V_i$ is the representation of the chiral algebra. In simple
cases like the Virasoro Minimal Models, the representation of Virasoro
Algebra may quite uniquely describe the CFT.

However, in more general and complicated cases, a same Virasoro
Algebra (with definite central charge) may have many different CFT
theories. A fundamental example is the $c = 1$ Virasoro Algebra, which
can give rise to tons of models.

Thus, one may want to have a more delicate and precise
characterization of the theory, this is where the Vertex Operator
Algebra comes in. However, for our understanding one may imagine it as
the Virasoro Algebra and its representation as the representation of
the Virasoro Algebra, as Moore and Seiberg originally did in their
work.


=== Module and Intertwiner

For CFT what is important is the representation and the intertwiners
of VOA. One may analogue it as a generalization:

- Representation of Chiral Algebra (Virasoro, Kac Moody, ...) $tilde$
    Representation of VOA (often called a module of VOA)

- Chiral Vertex Operator $tilde$ Intertwiner of VOA modules

With these preparation we can see that there is a natural mathematical
structure:

- We can view Representations as kinds of *objects*

- And we view the intertwiners as kinds of *morphisms* between these
    objects.

This is how a Modular Tensor Category is born in CFT and which will be
the main topic of the next section.
