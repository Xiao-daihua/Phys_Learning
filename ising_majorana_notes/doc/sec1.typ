#import "../env/lib.typ": *

= Background Gauge Field Language

The bosonization of Ising and Majorana CFT are commonly written in a background gauge field language. Here we give a brief, nonrigorous introduction.

== $ZZ_2$ Gauge Field

=== $ZZ_2$ Gauge Theory

Boundary conditions in the bosonic theory can be understood in a unified way using the language of a $ZZ_2$ gauge theory. We introduce a background gauge field
$
  A in H^1(Sigma_g, ZZ_2).
$
This object admits several equivalent interpretations:
- as a cohomology class,
- as a flat $ZZ_2$ connection,
- as a homomorphism from the fundamental group, $A in "Hom"(pi_1(Sigma_g), ZZ_2)$.

Concretely, $A$ assigns a $ZZ_2$ value to each non-contractible cycle. Choosing a canonical homology basis $\{a_1, b_1, dots, a_g, b_g\}$, we write
$
  A(a_i) = alpha_i in ZZ_2, quad A(b_i) = beta_i in ZZ_2,
$
so the gauge field is completely specified by
$
  A = (alpha_1, beta_1, dots, alpha_g, beta_g) in (ZZ_2)^(2g).
$

=== Cup Product

Given two $ZZ_2$ gauge fields $A, B in H^1(Sigma_g, ZZ_2)$, their cup product is an element
$
  A union B in H^2(Sigma_g, ZZ_2) tilde.eq ZZ_2.
$
On a closed Riemann surface this evaluates to a number:
$
  integral_(Sigma_g) A union B in ZZ_2.
$
In terms of the cycle basis, writing $A = (alpha_i, beta_i)$ and $B = (alpha'_i, beta'_i)$,
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
      strong[$integral_(T^2) A union B$],
      strong[$A_0=(0,0)$],
      strong[$A_1=(1,0)$],
      strong[$A_2=(0,1)$],
      strong[$A_3=(1,1)$],
    ),
    table.hline(stroke: 0.6pt),
    $A_0=(0,0)$, $0$, $0$, $0$, $0$,
    $A_1=(1,0)$, $0$, $0$, $1$, $1$,
    $A_2=(0,1)$, $0$, $1$, $0$, $1$,
    $A_3=(1,1)$, $0$, $1$, $1$, $0$,
    table.hline(stroke: 1.2pt),
  ),
  caption: [Cup product integral on $T^2$ for the four $ZZ_2$ gauge fields, computed modulo~2.],
)

=== Bosonic Partition Function Coupled to Background Field

Partition functions with different boundary conditions of a bosonic theory (or a $ZZ_2$ defect-twisted theory) can be understood as coupling to different background $ZZ_2$ gauge fields:
$
  Z[A], quad A in H^1(Sigma_g, ZZ_2),
$
where $A$ specifies the twisting of fields along non-contractible cycles. The conventions are:
- $0$ for Periodic Boundary Condition (did not cross a defect),
- $1$ for Anti-Periodic Boundary Condition (crossed a defect).

For example, on the torus $Sigma_1 = T^2$ with cycles $(a, b)$ we write $A = (alpha, beta) in ZZ_2 times ZZ_2$, and the four boundary conditions are
$
  Z_(P,P) = Z[(0,0)], quad
  Z_(P,"AP") = Z[(0,1)], quad
  Z_("AP",P) = Z[(1,0)], quad
  Z_("AP","AP") = Z[(1,1)].
$

#YL([In fact I don't understand why coupling to a gauge field is equal to inserting a Symmetry defect line; nevertheless, the calculational result is the same in partition functions.])

== Spin Structure

=== Definition

Mathematically, a spin structure can be defined via the quadratic refinement of a $ZZ_2$ gauge field,
$
  rho : H^1(Sigma_g, ZZ_2) -> ZZ_2.
$
Physically, we simply understand it as specifying the boundary conditions of fermions along the non-contractible cycles. As with the $ZZ_2$ gauge field, we assign a label to each cycle:
- $1$ for Periodic Boundary Condition (Ramond, R),
- $0$ for Anti-Periodic Boundary Condition (Neveu-Schwarz, NS).

#remark[This convention is *opposite* to the bosonic case: there, $0$ denotes periodic.]

On the torus $T^2$, a spin structure determines whether the fermion is periodic or antiperiodic along each cycle:
$
  rho = ("a-cycle", "b-cycle") in {"AP", "P"}^2.
$
Two spin structures are related by a background $ZZ_2$ gauge field $A in H^1(Sigma_g, ZZ_2)$ via
$
  rho + A = (rho_a + A_a quad mod 2, quad rho_b + A_b quad mod 2),
$
which physically corresponds to flipping the fermion boundary condition along cycles where $A$ is nonzero.

=== Arf Invariant

The Arf invariant is a $ZZ_2$-valued number depending only on the spin structure; it distinguishes "even" from "odd" spin structures. Mathematically it is defined using quadratic refinements acting on basis elements.

On $T^2$ with standard cycles $(a, b)$ we label spin structures with $0$ (AP) and $1$ (P). The four spin structures and their Arf invariants are:

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

== Useful Results Involving the Arf Invariant

#theorem[Sum over cup products][
  For all $ZZ_2$ gauge fields $s in H^1(Sigma_g, ZZ_2)$:
  $
    frac(1, 2^g) sum_s (-1)^(integral s union t) =
    cases(2^g & "if" t = 0, 0 & "otherwise.")
  $
]

#theorem[Arf invariant under shifted spin structure][
  $
    "Arf"[a + b + rho] = "Arf"[a + rho] + "Arf"[b + rho] + "Arf"[rho] + integral a union b.
  $
]

#theorem[Sum over spin structures][
  $
    frac(1, 2^g) sum_S (-1)^("Arf"(s + rho) + "Arf"[rho] + integral s union t)
    = (-1)^("Arf"[t + rho]).
  $
]

== Partition Function Data

We collect the partition functions with explicit spin structure (fermionic theory) or background gauge field (bosonic theory) together with their character expansions.

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
    $Z_("AP",P)$,   $Z[(0,1)]$,
    $|chi_0|^2 + |chi_(1\/2)|^2 - overline(chi)_0 chi_(1\/2) - overline(chi)_(1\/2) chi_0$,
    $Z_(P,"AP")$,   $Z[(1,0)]$,
    $2|chi_(1\/16)|^2$,
    $Z_(P,P)$,      $Z[(1,1)]$,
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
    $Z_(P,P)$,      $Z[(0,0)]$,
    $|chi_0|^2 + |chi_(1\/2)|^2 + |chi_(1\/16)|^2$,
    $Z_(P,"AP")$,   $Z[(0,1)]$,
    $|chi_0|^2 + |chi_(1\/2)|^2 - |chi_(1\/16)|^2$,
    $Z_("AP",P)$,   $Z[(1,0)]$,
    $overline(chi)_0 chi_(1\/2) + overline(chi)_(1\/2) chi_0 + |chi_(1\/16)|^2$,
    $Z_("AP","AP")$, $Z[(1,1)]$,
    $-overline(chi)_0 chi_(1\/2) - overline(chi)_(1\/2) chi_0 + |chi_(1\/16)|^2$,
    table.hline(stroke: 1.2pt),
  ),
  caption: [Partition functions and characters for Ising CFT.],
)
