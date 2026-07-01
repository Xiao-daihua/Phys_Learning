#import "../env/lib.typ": *

= Ising CFT and Majorana CFT Dual

#YL([
  This note is quite instant and poorly illustrated.
])

== Background Gauge Field Language

The bosonization of Ising and Majorana CFT can be understood through
gauging discrete symmetry. Here we give a brief, non rigorous
introduction.

=== $ZZ_2$ Gauge Field

Boundary conditions and defect insertion can be understood in a
unified way using the language of coupling to a $ZZ_2$ gauge theory.
We introduce a background gauge field
$
    A in H^1(Sigma_g, ZZ_2).
$
This object admits several equivalent interpretations:
- as a cohomology group,
- as a flat $ZZ_2$ connection,
- as a homomorphism from the fundamental group,
    $A in "Hom"(pi_1(Sigma_g), ZZ_2)$.

Concretely, $A$ assigns a $ZZ_2$ value to each non-contractible cycle.
Choosing a canonical homology basis $\{a_1, b_1, dots, a_g, b_g\}$, we
write
$
    A(a_i) = alpha_i in ZZ_2, quad A(b_i) = beta_i in ZZ_2,
$
so the gauge field is completely specified by
$
    A = (alpha_1, beta_1, dots, alpha_g, beta_g) in (ZZ_2)^(2g).
$

Given two $ZZ_2$ gauge fields $A, B in H^1(Sigma_g, ZZ_2)$, their cup
product is an element
$
    A union B in H^2(Sigma_g, ZZ_2) tilde.eq ZZ_2.
$
On a closed Riemann surface this evaluates to a number:
$
    integral_(Sigma_g) A union B in ZZ_2.
$
In terms of the cycle basis, writing $A = (alpha_i, beta_i)$ and
$B = (alpha'_i, beta'_i)$,
$
    integral_(Sigma_g) A union B = sum_(i=1)^g (alpha_i beta'_i - beta_i alpha'_i) quad mod 2.
$
Since $-1 equiv 1$ in $ZZ_2$, this simplifies to
$
    integral_(Sigma_g) A union B = sum_(i=1)^g (alpha_i beta'_i + beta_i alpha'_i) quad mod 2.
$

For the torus $T^2$ the cup product table is:

#figure(
    table(
        columns: 5,
        stroke: none,
        inset: (x: 4pt, y: 8pt),
        align: center,
        table.hline(stroke: 1.2pt),
        table.header(
            [$integral_(TT^2) A union B$],
            [$A_0=(0,0)$],
            [$A_1=(1,0)$],
            [$A_2=(0,1)$],
            [$A_3=(1,1)$],
        ),
        table.hline(stroke: 0.6pt),
        $A_0=(0,0)$, $0$, $0$, $0$, $0$,
        $A_1=(1,0)$, $0$, $0$, $1$, $1$,
        $A_2=(0,1)$, $0$, $1$, $0$, $1$,
        $A_3=(1,1)$, $0$, $1$, $1$, $0$,
        table.hline(stroke: 1.2pt),
    ),
    caption: [Cup product integral on $TT^2$ for the four $ZZ_2$ gauge
        fields, computed modulo~2.],
)



Partition functions with different boundary conditions of a bosonic
theory (or a $ZZ_2$ defect-twisted theory) can be understood as
coupling to different background $ZZ_2$ gauge fields:
$
    Z[A], quad A in H^1(Sigma_g, ZZ_2),
$
where $A$ specifies the twisting of fields along non-contractible
cycles. The conventions are:
- $0$ for Periodic Boundary Condition (did not cross a defect),
- $1$ for Anti-Periodic Boundary Condition (crossed a defect).

For example, on the torus $Sigma_1 = T^2$ with cycles $(a, b)$ we
write $A = (alpha, beta) in ZZ_2 times ZZ_2$, and the four boundary
conditions are
$
    Z_(P,P) = Z[(0,0)], quad
    Z_(P,"AP") = Z[(0,1)], quad
    Z_("AP",P) = Z[(1,0)], quad
    Z_("AP","AP") = Z[(1,1)].
$

=== Spin Structure

*Definition*: Mathematically, a spin structure can be defined via the
quadratic refinement of a $ZZ_2$ gauge field,
$
    rho : H^1(Sigma_g, ZZ_2) -> ZZ_2.
$
Physically, we simply understand it as specifying the boundary
conditions of fermions along the non-contractible cycles. As with the
$ZZ_2$ gauge field, we assign a label to each cycle:
- $1$ for Periodic Boundary Condition (Ramond, R),
- $0$ for Anti-Periodic Boundary Condition (Neveu-Schwarz, NS).

#remark[This convention is *opposite* to the bosonic case: there, $0$
    denotes periodic.]

On the torus $T^2$, a spin structure determines whether the fermion is
periodic or antiperiodic along each cycle:
$
    rho = ("a-cycle", "b-cycle") in {"AP", "P"}^2.
$
Two spin structures are related by a background $ZZ_2$ gauge field
$A in H^1(Sigma_g, ZZ_2)$ via
$
    rho + A = (rho_a + A_a quad mod 2, quad rho_b + A_b quad mod 2),
$
which physically corresponds to flipping the fermion boundary
condition along cycles where $A$ is nonzero.

*Arf Invariant*: The Arf invariant is a $ZZ_2$-valued number depending
only on the spin structure; it distinguishes "even" from "odd" spin
structures. Mathematically it is defined using quadratic refinements
acting on basis elements.

On $T^2$ with standard cycles $(a, b)$ we label spin structures with
$0$ (AP) and $1$ (P). The four spin structures and their Arf
invariants are:

#figure(
    table(
        columns: 4,
        stroke: none,
        inset: (x: 8pt, y: 6pt),
        align: center,
        table.hline(stroke: 1.2pt),
        table.header(
            strong[Spin structure $(rho_a, rho_b)$],
            strong[$a$-cycle],
            strong[$b$-cycle],
            strong[$"Arf"(rho)$],
        ),
        table.hline(stroke: 0.6pt),
        $(0,0)$, $0$, $0$, $0$,
        $(1,0)$, $1$, $0$, $0$,
        $(0,1)$, $0$, $1$, $0$,
        $(1,1)$, $1$, $1$, $1$,
        table.hline(stroke: 1.2pt),
    ),
    caption: [Arf invariants of the four spin structures on $T^2$.],
)

*Useful Calculational Result*: Now list out some usedful calculational
result of Background $ZZ_2$ gauge field and spin structure:

Cup product calculation, For all $ZZ_2$ gauge fields
$s in H^1(Sigma_g, ZZ_2)$:
$
    frac(1, 2^g) sum_s (-1)^(integral s union t) =
    cases(2^g & "if" t = 0, 0 & "otherwise.")
$
Arf Invariant of spin structure and background gauge field
interacting:
$
    "Arf"[a + b + rho] = "Arf"[a + rho] + "Arf"[b + rho] + "Arf"[rho] + integral a union b.
$
Arf invariant and spin structure sum:
$
    frac(1, 2^g) sum_S (-1)^("Arf"(s + rho) + "Arf"[rho] + integral s union t)
    = (-1)^("Arf"[t + rho]).
$

== Ising/Majorana CFT Duality

The Ising CFT and Majorana CFT are related by a web of dualities. We
use the torus partition function as an illustrative example; the
dualities are claimed to hold on general closed Riemann surfaces. Here
is a diagram illustrating the dualities:

#figure(
    image("../assets/webduality.png", width: 90%),
    caption: [Duality web relating Ising CFT and Majorana CFT. ],
) <fig-webduality>

=== Partition Function Data

We collect the partition functions with explicit spin structure
(fermionic theory) or background gauge field (bosonic theory) together
with their character expansions.

#figure(
    table(
        columns: 3,
        stroke: none,
        inset: (x: 8pt, y: 8pt),
        align: (center, center, left),
        table.hline(stroke: 1.2pt),
        table.header(
            [Partition Function], [Spin Structure], [Characters]
        ),
        table.hline(stroke: 0.6pt),
        $Z_("AP","AP")$, $Z[(0,0)]$,
        $|chi_0|^2 + |chi_(1\/2)|^2 + overline(chi)_0 chi_(1\/2) + overline(chi)_(1\/2) chi_0$,
        $Z_("AP",P)$, $Z[(0,1)]$,
        $|chi_0|^2 + |chi_(1\/2)|^2 - overline(chi)_0 chi_(1\/2) - overline(chi)_(1\/2) chi_0$,
        $Z_(P,"AP")$, $Z[(1,0)]$,
        $2|chi_(1\/16)|^2$,
        $Z_(P,P)$, $Z[(1,1)]$,
        $0$,
        table.hline(stroke: 1.2pt),
    ),
    caption: [Partition functions and characters for Majorana CFT.],
)

#figure(
    table(
        columns: 3,
        stroke: none,
        inset: (x: 8pt, y: 8pt),
        align: (center, center, left),
        table.hline(stroke: 1.2pt),
        table.header(
            [Partition Function], [BG Gauge Field], [Characters]
        ),
        table.hline(stroke: 0.6pt),
        $Z_(P,P)$, $Z[(0,0)]$,
        $|chi_0|^2 + |chi_(1\/2)|^2 + |chi_(1\/16)|^2$,
        $Z_(P,"AP")$, $Z[(0,1)]$,
        $|chi_0|^2 + |chi_(1\/2)|^2 - |chi_(1\/16)|^2$,
        $Z_("AP",P)$, $Z[(1,0)]$,
        $overline(chi)_0 chi_(1\/2) + overline(chi)_(1\/2) chi_0 + |chi_(1\/16)|^2$,
        $Z_("AP","AP")$, $Z[(1,1)]$,
        $-overline(chi)_0 chi_(1\/2) - overline(chi)_(1\/2) chi_0 + |chi_(1\/16)|^2$,
        table.hline(stroke: 1.2pt),
    ),
    caption: [Partition functions and characters for Ising CFT.],
)
This calculation data is given by many old school CFT textbooks. For
example, the yellow book and Ginsbarg's lecture notes. Now let's use
the above data to verify the dualities in the web.


=== Ising $=$ Ising$slash ZZ_2$ (Kramers-Wannier Duality)

This duality is a $ZZ_2$ orbifold exchanging the A-series and D-series
in the minimal model classification. For the Ising CFT it corresponds
to the Kramers-Wannier duality, which relates the partition function
of the low-temperature phase to that of the high-temperature phase.
Since the A-series and D-series are isomorphic for the Ising model,
the orbifold gives a transformation between two isomorphic theories.

The traditional perspective proceeds in two steps:

1. *Project* the theory onto the $ZZ_2$-even Hilbert space:
$
    Z quad -> quad frac(1, 2) (Z_(P,P) + Z_(P,"AP")).
$

2. *Restore* modular invariance by adding the $ZZ_2$-twisted sector
    Hilbert space:
$
    + frac(1, 2) (Z_("AP",P) + Z_("AP","AP")).
$

This gives the same partition function as the Ising CFT with PP
boundary conditions:
$
    Z_"orb" = frac(1, 2) (Z_(P,P) + Z_(P,"AP") + Z_("AP",P) + Z_("AP","AP")) = Z_(P,P).
$

Now we use the background gauge field language to give a more general
discussion of this gauging process.

#theorem[Ising $=$ Ising$slash ZZ_2$][
    Coupling to a background gauge field $A$, the partition functions
    of the two theories are related by
    $
        Z_("Ising"\/ ZZ_2)[A] = sum_(a in H^1(Sigma_g, ZZ_2)) Z_"Ising" [a] (-1)^(integral a union A).
    $
]

*Example.* For $A = (0,0)$:
$
    Z_("Ising"\/ ZZ_2)[(0,0)] = frac(1, 2) sum_(a in H^1(Sigma_g, ZZ_2)) Z_"Ising" [a] = Z_"Ising" [(0,0)].
$

For $A = (0,1)$:
$
    Z_("Ising"\/ ZZ_2)[(0,1)]
    &= frac(1, 2) (Z_"Ising" [(0,0)] + Z_"Ising" [(0,1)] - Z_"Ising" [(1,0)] - Z_"Ising" [(1,1)]) \
    &= Z_"Ising" [(0,1)].
$
One can verify from these calculations that the two theories are
isomorphic.

#YL([In fact, this story have more to tell, the dual model have a SM
    realization and it can be seen in SM theory, moreover, we can also
    see this and inverse process in CFTs, by gauging a dual symmety.
    But I'm not familiar with these thus not talking about them
    here.])

=== Majorana $= ($ Ising $times.o$ Arf$slash ZZ_2$ (Fermionization)

#theorem[Majorana $=$Ising $times.o$ Arf$slash ZZ_2$][
    $
        Z_"Majorana" [A + rho]
        = frac(1, 2^g) (-1)^("Arf"[rho])
        sum_(a in H^1(Sigma_g, ZZ_2))
        Z_"Ising" [a] (-1)^("Arf"[a + rho] + integral a union A).
    $
]

*Example.* Take $A = 0$ and fix the spin structure $rho = (0,0)$ (two
NS boundary conditions). Since $"Arf"[(0,0)] = 0$, the sign
$(-1)^("Arf"[a + rho])$ equals $-1$ only for $a = (1,1)$. Therefore:
$
    Z_M [(0,0)]
    &= frac(1, 2) (Z[(0,0)] + Z[(1,0)] + Z[(0,1)] - Z[(1,1)]) \
    &= |chi_0|^2 + |chi_(1\/2)|^2 + overline(chi)_0 chi_(1\/2) + overline(chi)_(1\/2) chi_0.
$
This matches the expected result from the Majorana partition function
table exactly.

=== Ising $=$ Majorana$slash ZZ_2$ (Bosonization)

#theorem[Ising $=$ Majorana$slash ZZ_2$][
    $
        Z_"Ising" [A]
        = frac(1, 2^g) (-1)^("Arf"[A + rho] + "Arf"[rho])
        sum_(a in H^1(Sigma_g, ZZ_2))
        Z_"Majorana" [a + rho] (-1)^(integral a union A).
    $
]

*Example.* Take $A = (0,0)$:
$
    Z_I [(0,0)]
    &= frac(1, 2) (Z_M [(0,0)] + Z_M [(1,0)] + Z_M [(0,1)] + Z_M [(1,1)]) \
    &= |chi_0|^2 + |chi_(1\/2)|^2 + |chi_(1\/16)|^2.
$

=== Majorana$' =$ Arf $times.o$ Majorana

One can define a dual theory when considering the Ramond sector of
Majorana CFT. When computing the partition function in the Ramond
sector, there is a freedom in choosing the fermion parity assignment
for the two degenerate ground states $|sigma angle.right$ and
$|mu angle.right$:

- $(-1)^F |sigma angle.right = +|sigma angle.right$ and
    $(-1)^F |mu angle.right = -|mu angle.right$,
- $(-1)^F |sigma angle.right = -|sigma angle.right$ and
    $(-1)^F |mu angle.right = +|mu angle.right$.

In principle these two choices define two different theories, yet they
share the same torus partition function since it does not matter which
state is labeled even or odd.


The two theories are related by the Arf invariant partition function
(also called the Kitaev chain @kitaevUnpairedMajoranaFermions2001a).

#theorem[Majorana$' =$ Arf $times.o$ Majorana][
    $
        Z_("Majorana'")[A + rho] = (-1)^("Arf"[A + rho]) Z_"Majorana" [A + rho].
    $
]

This relation is trivially consistent: changing the fermion parity
does not change the partition function of Majorana CFT. Indeed, the
only nonzero Arf invariant on $T^2$ occurs for spin structure $(1,1)$,
where the partition function is already zero.


One can show that the two theories are related by a chiral
transformation. Although chiral symmetry is a classical symmetry, it
carries an anomaly that produces exactly:
$
    Z[rho] quad -> quad Z[rho] times (-1)^("Arf"[rho]).
$
See @karchWeb2dDualities2019 for a detailed explanation.

=== Majorana$'$ and Ising$slash ZZ_2$

From the relations above together with mathematical properties of the
Arf invariant and the cup product integral, one can prove that
Majorana$'$ and Ising$slash ZZ_2$ satisfy the same duality of
partition functions as Ising CFT and Majorana CFT. One can see this
using the above dualities and the properties of the Arf invariant and
cup product integral.


There is an important result from this duality, is that the
Majorana$'$ theory in fact is related to the original Majorana CFT by
a chiral transformation. The partition function is different due to
the chiral anomaly.

And this means that after gauging the $ZZ_2$ symmetry in the Majorana
CFT and the Majorana$'$ theory, we get Ising CFT and the orbifolded
theory, this means that the Kramers-Wannier duality is in fact a
consequence of the chiral anomaly of Majorana CFT.

This is further developed in the language of non-invertible
symmetries. The Kramers-Wannier duality is a non-invertible symmetry
of the Ising CFT, and it can be seen as a consequence of the chiral
anomaly of the Majorana CFT @shao2024whatsundonetasilectures.


=== Final Comments

All the results above are established in @karchWeb2dDualities2019.
They follow from a "seed duality" which is not proved in that paper
but appears to be a long-known result; the proof seems to appear in a
mathematical literature.

#YL([I have no idea why the Arf invariant is identical to the Kitaev
    chain. Moreover, I don't quite understand the dual symmetry
    generated after gauging a symmetry, nor how gauging the dual
    symmetry returns one to the original theory. These are all very
    interesting topics but I'm not talking about them here.])
