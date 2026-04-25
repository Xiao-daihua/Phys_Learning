#import "../env/lib.typ": *

= Modular Tensor Categories

== Category Basics

A Category $cal(C)$ is a mathematical structure with 2 typse of data:

- Objects: $"Obj"(cal(C))$, for example, $U,V in "Obj"(cal(C))$.

- Morphisms: for any two objects $U,V in "Obj"(cal(C))$, there is a
    set of morphisms $"Hom"(U,V)$, for example, $f in "Hom" (U,V)$.

We have much to say about some basic properties we assume:

+ *Composition* of morphisms: for any $f in "Hom"(U,V)$ and
    $g in "Hom"(V,W)$, there is a morphism
    $g compose f in "Hom"(U,W)$.

+ *Identity Exist*: for any $U in "Obj"(cal(C))$, there is a special
    morphism $"id"_U in "Hom"(U,U)$, called the *identity morphism* of
    $U$, it satisfies:
$
    "id"_V compose f = f = f compose "id"_U, quad forall f in "Hom"(U,V).
$
+ *Completeness* The set $"Obj"(cal(C))$ is complete under direct sum,
    i.e., for any $U,V in "Obj"(cal(C))$, there is an object
    $U plus.o V in "Obj"(cal(C))$.

Under this general definition for a quite general Category, we now can
introduce more and more structures on it to finally construct a
Modular Tensor Category, which is extensively used in the study of
Conformal Field Theory and Topological Quantum Field Theory.

== Modular Tensor Category

=== Abelian Category

An *Abelian Category* means:
+ There is a 0 Object $0 in "Obj"(cal(C))$;

+ Morphisms possess many properties as follows:

- Every morphism set $"Hom"(A, B)$ is an *abelian group*, that means
    that every morphism have structure of:
    - addition: for any $f, g in "Hom"(A, B)$, there is a morphism
        $f + g in "Hom"(A, B)$;
    - zero morphism: there is a morphism $0 in "Hom"(A, B)$ such that
        $f + 0 = f$ for all $f in "Hom"(A, B)$;
    - additive inverse: for any $f in "Hom"(A, B)$, there is a
        morphism $-f in "Hom"(A, B)$ such that $f + (-f) = 0$.
    - Abelian property: for any $f, g, h in "Hom"(A, B)$, we have
        $f + (g + h) = (f + g) + h$ and $f + g = g + f$.

- composition of morphisms is bilinear;
$
    f compose (g + h) = f compose g + f compose h, quad (f + g) compose h = f compose h + g compose h, \ forall f,g in "Hom"(B,C), forall h in "Hom"(A,B).
$
- Every morphism has a *kernel* and a *cokernel*

#note[Kernel and Cokernel][

    Given a morphism $f : A -> B$ in $cal(C)$:
    - The *kernel* of $f$ is an object $K$ together with a morphism
        $iota : K -> A$ :
    $
        "ker"(f) = (K, iota)
    $
    such that $f compose iota = 0$ (0 is assume by the abelian
    structure), and which is universal with this property: for any $Z$
    and any $phi : Z -> A$ with $f compose phi = 0$, there exists a
    unique morphism $u : Z -> K$ with $iota compose u = phi$.
    - The *cokernel* of $f$ is an object $Q$ together with a morphism
        $pi : B -> Q$:
    $
        "coker"(f) = (Q, pi)
    $
    such that $pi compose f = 0$, and which is universal: for any $Z$
    and any $psi : B -> Z$ with $psi compose f = 0$, there exists a
    unique $v : Q -> Z$ with $v compose pi = psi$.

]
- Every monomorphism is the (morphism part of) kernel of its cokernel,
    and every epimorphism is the cokernel of its kernel:
$
    h = ker("coker"(h)) quad g = "coker"(ker(g))
$
This means monomorphisms and epimorphisms are "as well-behaved as
injections and surjections of vector spaces."

#note[Monomorphisms and Epimorphisms][
    A morphism $h : A -> B$ is a *monomorphism* if
    $h compose alpha = h compose beta$ implies $alpha = beta$
    (left-cancellable), and an *epimorphism* if
    $alpha compose h = beta compose h$ implies $alpha = beta$
    (right-cancellable).
]
- Every morphism $f$ admits a factorization $f = h compose g$, where
    $h$ is a monomorphism and $g$ is an epimorphism.

The above are tedious and boring mathematical construction, for
physicist is better to understand as:

- Morphisms are sort of "Linear maps" between objects, and the
    composition is just the composition of linear maps.


=== Tensor Category

A tensor category means that there is a tensor product $times.o$ on the
category defined both for objects and morphisms, such that:

-
