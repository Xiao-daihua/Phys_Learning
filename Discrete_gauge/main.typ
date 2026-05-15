#import "env/piece.typ": *
#import "env/lib.typ": *

#show: piecetemp.with(
    title: [How to Gauge a Discrete Symmetry?],
    topic: [Symmetry],
    abstract: [
        This note is about gauging a discrete symmetry. We will first
        review what gauging is in a continuous case and then try to
        define a counterpart for a discrete symmetry. Finally, we will
        introduce concrete example in Virasoro Minimal Models. For
        generalized symmetry part we mainly follow
        @kaidiIntroductionGeneralizedSymmetries2026, for CFT part one
        can learn about the modular invariant minimal model in
        @difrancescoConformalFieldTheory1997.
    ],
)
Gauging is the case when we couple a QFT to a gauge field (often
dynamical, but some people may also call background gauge field as
gauging). Apart from its importance of studying interaction between
QFTs, gauging is also a powerful tool to study the symmetry of a QFT.
The core idea is that it may serve as a test to probe whether the
symmetry really exist or there's an anomaly.

= How to Gauge a Continuous Symmetry?

First we review some basics of coupling a QFT to a gauge field. Of
course, we can just do the minimal coupling and be happy with it.
However, to make it more general, we should not assume we always have
a conserved current or even a classical lagrangian description.

== Symmetry Characterized by Generators

To characterize a symmetry in QFT, we can use the conserved current or
the conserved charge. However, these are objects unique to the
continuous symmetry and expects the theory to have a classical
counterpart. A seemingly general object to characterize a quantum
symmetry is the Ward Identity.
#note([
    A quite general way of thinking about symmetry is Ward identities.
    The correlation function satisfying some non-trivial constraints
    may signal a symmetry, which may not be invertible and permitted
    in the group structure.
])
However, it is not a "object like stuff" which are good to consider.
To make thing general, we should think about another object *the
symmetry generator*.

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


=== Quantum Interpretation

Now we generalize the classical object we define above to a quantum
one.
#note([
    Notice that the world is NOT classical, it is definitely true that
    we can have some quantum object without classical counterparts.
    Namely can't be derived from quantizing some classical object.

    Thus, we don't derive a quantum theory from a classical one, but
    use some quantization scheme and results to guess what properties
    should a quantum symmetry generator have.
])
The properties of *quantum symmetry generators* (and justifications)
are:

1. They are *Topological Operators*. This can be justified by the
    classical conservation equation, plugging them into a path
    integral won't change this fact. Moreover, as a quantum theory, in
    the canonical picture if we want to define these symmetry
    generators as line operators, they have to commute with the
    Energy-Momentum tensor, which generates the spacetime translation.


2. If inserted in a time slice, they act as an operators on the
    Hilbert space in the canonical formalism. This can be justified by
    analoging the ordinary symmetry charge defined on a time slice.


3. If inserted in vetically in the path integral, they behave as a
    defect, which twisted the Hilbert Space. This can't be justified
    straightforwardly, but a few lines of calculation in the path
    integral formalism:

#YL([finish this part later])


(2 and 3 properties are called the operator/defect principles)

4. When going through local operators, they act as a symmetry
    transformation on the local operators. This can be justified by
    the Ward identity.

#YL([finish this part later])


=== A Slogan for Symmetry

At this point it is now wise to introduce a slogan to characterize
symmetry beyond the current/charge picture, which limits in continous
symmetry with a classical lagrangian description.

#definition[Symmetry-Defect Slogan][
    A symmetry should be characterized by the existing of a
    topological operator (Symmetry Generators), having above
    properties and many many constraints.
]
This is a powerful generalization of the notion of symmetry, which
eventually we will see that it can be applied to continuous
symmetries, discrete symmetries, and even symmetries without a
inverse, called non-invertible symmetries.

However, in this note we try to make use of group symmetry and assume
0-form symmetry. However, the language we use can be easily
generalized to higher form symmetries and non-invertible symmetries,
which we will discuss in another note.

== What is a Gauge Field?

Now we have a grasp of what is a symmetry, we turn to the other
question of gauging: what is a gauge field?

Naively, we define a gauge field as a Lie algebra valued one form
field:
$
    A = A_mu d x^mu "where" A_mu in frak(g)
$
However, this is generally not the case. A gauge field may not be
globally defined.

A classical and experimental example is the AB effect of U(1) gauge
field, where we know that:
$
    exp (i integral.cont_(C) A dif l)
$
and is exactly an experimental observable. Thus we need to rethink the
definition of gauge field. The critical point is that a gauge field
may not be defined globally, but only on patches, while field on
different patches are related by a suitable gauge transformation.

Moreover, from demanding consistency in AB phase and a globally well
defined curvature (indeed we measure electric and magnetic fields and
don't see any singularity), we need to have a quantization condition
on the flux of the gauge field:
$
    integral.cont_(S) F in 2 pi ZZ
$

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

=== Quantization of Flux

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

=== Higher Form Gauge Field

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
is:
$
    A arrow.r A + d Lambda_p
$
And here $Lambda_p$ is a *p-form Gauge Field* : Remember the gauge
transformation is a gauge field!!!

For $A$ as a (p+1)-form gauge field, the field strength is a
(p+2)-form, that are quantized under the following condition:
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
This is nothing strange to us, consider the ordinary U(1) gauge field,
the gauge transformation is:
$
    A arrow.r A + d Lambda_0
$
and if we integrate the gauge transformation over a closed loop, we
have:
$
    integral.cont_(S_1) d Lambda_0 in 2 pi ZZ
$
This is due the fact if we integrate through patches, we can have a
$2 pi ZZ$ shift, by the above construction.

#YL([In fact I really don't think I understand this, this should be
    taught in a cohomology language naturally, which I don't
    understand.])


== How to Couple to a Gauge Field?

Now we start with the true topic, Gauging. By gauging a symmetry, we
mean coupling the theory to a gauge field and make it dynamical. This
section is to point out an observation. Namely, coupling to a gauge
field is equivalent to inserting the symmetry generator properly.

=== BG Gauge Field Insertion of Symmetry Generator


=== AB phase as going through Symmetry Generator

Now we consider local operators in the theory. Notice that the local
charged operators are no longer gauge invariant observables but rather
operators with Wilson line attached.


== Anomaly

For a system with a lagrangian description, we may expect a symmetry
of the lagrangian may not be a symmetry of the QFT. By symmetry of
QFT, we mean that the Ward Identity is not satisfied.

=== Definition and Classification

Traditionally, we define an anomaly as the Ward identity is not
satisfied. Now due to the discussion of symmetry and background gauge
field, we can give a definition from the perspective of gauging.


=== Anomaly inflow and Invertible Theory



#pagebreak()
= How to Gauge a Discrete Symmetry?

Now we turn to the main topic of this note, gauging a discrete
symmetry. To do this we may first define what we mean by a discrete
gauge field, and a discrete symmetry of a QFT.

== Discrete Symmetry

=== Traditional Chracterization

Wigner Theorem tells us that a Quantum theory has a symmetry is given
by a Unitary or Anti-Unitary operator, forming a representation of the
symmetry group on the Hilbert space. We can characterize the symmetry
with these operators.

A discrete symmetry is a symmetry whose symmetry group is a discrete
group, which can be finite or infinite. The Hilbert space forms a
Unitary or Anti-Unitary representation of the symmetry group, and
those operator

- *Group Structure*:
$
    U(g_1) U(g_2) = U(g_1 g_2)
$
- *Conserved*:
$
    U(g) H U(g)^(-1) = H
$
- *Generate transformation*:
$
    U(g) O(x) U(g)^(-1) = R(g) O(x)
$
- *Ward Identity*: they also have some Ward identities, which can be
    used to constrain the correlation function. A simple example is
    the $ZZ_2$ symmetry of free scalar field theory, which acts as
    $phi(x) arrow.r -phi(x)$, and the Ward identity tells us that the
    correlation function of odd number of $phi$ must vanish.
- ...

=== Modern Characterization

Remember the slogan we introduced before, we can generalize to think
about symmetry generators not only as operators but also defects that
insert topologically in the Euclidean picture. A problem is that we
don't have a local current something to make the generalization smooth
as the continuous case. However, imposing consistency conditions and
observing the relation with Ward identities, we can still define the
symmetry generators and identify them with symmetries.

As far as I know, in 2D QFT these generalized symmetries can be
described by Topological Defect Lines systematically
@changTopologicalDefectLines2019a, satisfying a series of
characteristic properties. It turns out that these symmetries doesn't
have a group structure, but rather a structure of fusion category. For
higher dimensional QFT, the story is more complicated and general.


== Discrete Gauge Field

Another problem is what is a discrete gauge field and what
mathematical language characterize these objects.

For discrete symmetry we don't have a Lie algebra, the Lie algebra of
a discrete group is 0 thus:
$
    A = 0 ,quad F = 0
$
Naively we only have trivial objects that are meaningless. However, we
remember that a gauge field may not be globally defined, but only on
patches. Though we have 0 for the gauge field locally, we may have
non-trivial holonomy when going through patches:
$
    "Hol"(C) = exp (i integral.cont_(C) A) = g in G
$
In fact to characterize this data, we don't need to introduce the
gauge field but the transition function between patches:
$
    g_(i j) : U_i sect U_j arrow.r G
$



#pagebreak()
= Dual Symmetry



#pagebreak()
#bibliography("references.bib")

