
#import "../env/lib.typ": *

= Preliminaries

This section we introduce some concepts in Algebra and Representation
that may help us understand category as a more general mathematical
structure.

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
Virasoro Algebra.

However, instead of following @eq:liealgebraintertwiner as a normal lie algebra, it satisfy a more complicated intertwining relation:

- We frist define a "co-product" of the chiral algebra representation:
$ 
Delta_z : cal(A) -> cal(A) times.o cal(A),\ 
Delta
$

