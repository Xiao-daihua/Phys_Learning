#import "../env/lib.typ": *

= Ising/Majorana CFT Fermionization Duality

The Ising CFT and Majorana CFT are related by a web of dualities. We
use the torus partition function as an illustrative example; the
dualities are claimed to hold on general closed Riemann surfaces.

Here is a diagram illustrating the dualities:

#figure(
    image("../assets/webduality.png", width: 90%),
    caption: [Duality web relating Ising CFT and Majorana CFT. ],
) <fig-webduality>

== Partition Function Data

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
            strong[Partition Function],
            strong[Spin Structure],
            strong[Characters],
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
            strong[Partition Function],
            strong[BG Gauge Field],
            strong[Characters],
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
== Ising $=$ Ising$slash ZZ_2$ (Kramers-Wannier Duality)

=== The Orbifold

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

=== Background Gauge Field Formulation

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

== Majorana $= ($Ising $times.circle$ Arf$slash ZZ_2$ (Fermionization)

#theorem[Majorana $=$Ising $times.circle$ Arf$slash ZZ_2$][
    $
        Z_"Majorana" [A + rho]
        = frac(1, 2^g) (-1)^("Arf"[rho])
        sum_(a in H^1(Sigma_g, ZZ_2))
        Z_"Ising" [a] (-1)^("Arf"[a + rho] + integral a union A).
    $
]

*Example.* Take $A = 0$ and fix the spin structure $rho = (0,0)$ (two
NS boundary conditions). Since $"Arf"[(0,0)] = 0$, the sign
$(-1)^("Arf"[a + rho]}$ equals $-1$ only for $a = (1,1)$. Therefore:
$
    Z_M [(0,0)]
    &= frac(1, 2) (Z[(0,0)] + Z[(1,0)] + Z[(0,1)] - Z[(1,1)]) \
    &= |chi_0|^2 + |chi_(1\/2)|^2 + overline(chi)_0 chi_(1\/2) + overline(chi)_(1\/2) chi_0.
$
This matches the expected result from the Majorana partition function
table exactly.

== Ising $=$ Majorana$slash ZZ_2$ (Bosonization)

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

== Majorana$' =$ Arf $times.circle$ Majorana

=== Two Dual Majorana CFTs

One can define a dual theory when considering the Ramond sector of
Majorana CFT. When computing the partition function in the Ramond
sector, there is a freedom in choosing the fermion parity assignment
for the two degenerate ground states $|sigma angle.r$ and
$|mu angle.r$:

- $(-1)^F |sigma angle.r = +|sigma angle.r$ and
    $(-1)^F |mu angle.r = -|mu angle.r$,
- $(-1)^F |sigma angle.r = -|sigma angle.r$ and
    $(-1)^F |mu angle.r = +|mu angle.r$.

In principle these two choices define two different theories, yet they
share the same torus partition function since it does not matter which
state is labeled even or odd.

=== Relation via the Arf Invariant

The two theories are related by the Arf invariant partition function
(also called the Kitaev chain @kitaevUnpairedMajoranaFermions2001a).

#theorem[Majorana$' =$ Arf $times.circle$ Majorana][
    $
        Z_("Majorana'")[A + rho] = (-1)^("Arf"[A + rho]) Z_"Majorana" [A + rho].
    $
]

This relation is trivially consistent: changing the fermion parity
does not change the partition function of Majorana CFT. Indeed, the
only nonzero Arf invariant on $T^2$ occurs for spin structure $(1,1)$,
where the partition function is already zero.

=== Chiral Symmetry and Anomaly

One can show that the two theories are related by a chiral
transformation. Although chiral symmetry is a classical symmetry, it
carries an anomaly that produces exactly:
$
    Z[rho] quad -> quad Z[rho] times (-1)^("Arf"[rho]).
$
See @karchWeb2dDualities2019 for a detailed explanation.

== Majorana$'$ and Ising$slash ZZ_2$

From the relations above together with mathematical properties of the
Arf invariant and the cup product integral, one can prove that
Majorana$'$ and Ising$slash ZZ_2$ satisfy the same duality of
partition functions as Ising CFT and Majorana CFT. One can see this
using the above dualities and the properties of the Arf invariant and
cup product integral.



=== Chiral anomaly and Kramers-Wannier duality

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


== Final Comments

All the results above are established in @karchWeb2dDualities2019.
They follow from a "seed duality" which is not proved in that paper
but appears to be a long-known result; the proof seems to appear in a
mathematical literature.

#YL([I have no idea why the Arf invariant is identical to the Kitaev
    chain. Moreover, I don't quite understand the dual symmetry
    generated after gauging a symmetry, nor how gauging the dual
    symmetry returns one to the original theory. These are all very
    interesting topics but I'm not talking about them here.])
