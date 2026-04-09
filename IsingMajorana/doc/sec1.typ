#import "../env/lib.typ": *
= Background Gauge Field Language

The bosonization of Ising and Majorana CFT are commonly written in a background gauge field language, here I'll give a nonrigorous brief introduction.

== $ZZ_2$ Gauge Field

=== $ZZ_2$ Gauge Theory

In fact, boundary conditions in the bosonic theory can be understood in a unified way using the language of a $ZZ_2$ gauge theory. We introduce a background gauge field
$ A in H^1(Sigma_g, ZZ_2) $

This object admits several equivalent interpretations:
- as a cohomology class,
- as a flat $ZZ_2$ connection,
- as a homomorphism from the fundamental group $A in "Hom"(pi_1(Sigma_g), ZZ_2)$.

Concretely, this means that $A$ assigns a $ZZ_2$ value to each non-contractible cycle. Choosing a canonical basis ${a_1, b_1, dots, a_g, b_g}$, we write
$ A(a_i) = alpha_i in ZZ_2, quad A(b_i) = beta_i in ZZ_2. $

Thus the gauge field is completely specified by
$ A = (alpha_1, beta_1, dots, alpha_g, beta_g) in (ZZ_2)^(2g). $

=== Cup Product

Given two $ZZ_2$ gauge fields $A, B in H^1(Sigma_g, ZZ_2)$, their cup product is an element
$ A union B in H^2(Sigma_g, ZZ_2) approx ZZ_2. $

On a closed Riemann surface, this evaluates to a number:
$ integral_(Sigma_g) A union B in ZZ_2. $

In terms of the cycle basis, if $A = (alpha_i, beta_i)$ and $B = (alpha'_i, beta'_i)$, then
$ integral_(Sigma_g) A union B = sum_(i=1)^g (alpha_i beta'_i + beta_i alpha'_i) quad mod 2. $

Since we are working in $ZZ_2$, this simplifies to
$ integral_(Sigma_g) A union B = sum_(i=1)^g (alpha_i beta'_i + beta_i alpha'_i) quad mod 2. $

For example for a torus gauge field we have the following different results:

#align(center)[
  #figure(
    table(
      columns: (auto, auto, auto, auto, auto),
      inset: 8pt,
      align: center + horizon,
      stroke: 0.5pt,
      [$integral_(T^2) A union B$], [$A_0=(0,0)$], [$A_1=(1,0)$], [$A_2=(0,1)$], [$A_3=(1,1)$],
      [$A_0=(0,0)$], [0], [0], [0], [0],
      [$A_1=(1,0)$], [0], [0], [1], [1],
      [$A_2=(0,1)$], [0], [1], [0], [1],
      [$A_3=(1,1)$], [0], [1], [1], [0],
    ),
    caption: [Cup product integral on the torus $T^2$ for the four $ZZ_2$ gauge fields. The entries are computed modulo 2.]
  )
]

=== Bosonic Partition Function Coupled to Background Field

We can understand partition functions with different boundary conditions of bosonic theory (or more generally, a $ZZ_2$ defect twisted theory with different ways of twisting) as coupling to different background $ZZ_2$ gauge fields. Namely, we write
$ Z[A], quad A in H^1(Sigma_g, ZZ_2), $
where $A$ specifies the twisting of fields along non-contractible cycles. We commonly use:
- $0$ for Periodic Boundary Condition (didn't cross a defect)
- $1$ for Anti-Periodic Boundary Condition (crossing a defect)

For example, on the torus $Sigma_1 = T^2$, we choose cycles $(a,b)$ and write $A = (alpha, beta) in ZZ_2 times ZZ_2$. Then the boundary conditions are:
$ Z_("P,P") = Z[(0,0)], quad Z_("P,AP") = Z[(0,1)], quad Z_("AP,P") = Z[(1,0)], quad Z_("AP,AP") = Z[(1,1)]. $

#quote(attribution: "YL")[In fact I don't understand why coupling to a gauge field is equal to inserting a Symmetry defect line, nevertheless, the calculational result is the same in partition functions]

== Spin Structure

=== Spin Structure

Mathematically, we can define a spin structure using the quadratic refinement of a $ZZ_2$ gauge field:
$ rho : H^1(Sigma_g, ZZ_2) -> ZZ_2. $

But physically, we can just understand it as specifying the boundary conditions of fermions along the non-contractible cycles of the surface. Just as for the $ZZ_2$ gauge field, we can label a number for each non-contractible cycle, with:
- $1$ for Periodic Boundary Condition (Ramond)
- $0$ for Anti-Periodic Boundary Condition (Neveu-Schwarz)

#remark[
This is opposite from the bosonic counter part, when writing a twisted bosonic theory in terms of coupling to background gauge field. Back then we use 0 for periodic.
]

For example, on a torus $T^2$ with $a$- and $b$-cycles, a spin structure determines whether the fermion is periodic (Ramond) or antiperiodic (Neveu-Schwarz) along each cycle:
$ rho = ("a-cycle", "b-cycle") in {"AP", "P"}^2. $

Furthermore, two spin structures can be related by a background $ZZ_2$ gauge field $A in H^1(Sigma_g, ZZ_2)$ via
$ rho + A = (rho_a + A_a mod 2, quad rho_b + A_b mod 2), $
which physically corresponds to flipping the fermion boundary condition along cycles where $A$ is nonzero.

=== Arf Invariant

The Arf invariant is a $ZZ_2$-valued number that depends only on the spin structure of a surface. Physically, it distinguishes between "even" and "odd" spin structures. Mathematically, it can be written using the language of quadratic refinements acting on basis.

On the torus $T^2$, with standard cycles $(a,b)$, we can label spin structures by numbers along each cycle (remember):
$ 0 " for Anti-Periodic (AP)", quad 1 " for Periodic (P)". $

Then the four spin structures and their Arf invariants are:

#align(center)[
  #table(
    columns: 4,
    stroke: none,
    table.hline(),
    [Spin structure $(rho_a, rho_b)$], [$a$-cycle], [$b$-cycle], [$"Arf"(rho)$],
    table.hline(),
    [$(0,0)$], [0], [0], [0],
    [$(1,0)$], [1], [0], [0],
    [$(0,1)$], [0], [1], [0],
    [$(1,1)$], [1], [1], [1],
    table.hline(),
  )
]

== Useful Results of Arf

- *Result 1:* For sum over cup products we have:
  $ 1/(2^g) sum_s (-1)^(integral s union t) = cases(2^g &"if " t=0, 0 &"otherwise") $

- *Result 2:* For Arf invariant of spin structure act on by multi gauge fields we have:
  $ "Arf"[a+b+rho] = "Arf"[a+rho] + "Arf"[b+rho] + "Arf"[rho] + integral a union b $

- *Result 3:* sum over many:
  $ 1/(2^g) sum_s (-1)^("Arf"(s + rho) + "Arf"[rho] + integral s union t) = (-1)^("Arf"[t+rho]) $

== Useful Partition Function Data

Finally, we can explicitly write out the partition functions with different spin structure (fermionic) or coupling to different background gauge field (Bosonic).

#figure(
  table(
    columns: 3,
    align: center,
    [Partition Function], [Spin Structure], [Characters],
    [$Z_("AP,AP")$], [$Z[(0,0)]$], [$|chi_0|^2 + |chi_(1/2)|^2 + bar(chi)_0 chi_(1/2) + bar(chi)_(1/2) chi_0$],
    [$Z_("AP,P")$], [$Z[(0,1)]$], [$|chi_0|^2 + |chi_(1/2)|^2 - bar(chi)_0 chi_(1/2) - bar(chi)_(1/2) chi_0$],
    [$Z_("P,AP")$], [$Z[(1,0)]$], [$2 |chi_(1/16)|^2$],
    [$Z_("P,P")$], [$Z[(1,1)]$], [$0$],
  ),
  caption: [Partition function and corresponding characters for Majorana CFT (P/AP).]
)

#figure(
  table(
    columns: 3,
    align: center,
    [Partition Function], [BG Gauge Field], [Characters],
    [$Z_("P,P")$], [$Z[(0,0)]$], [$|chi_0|^2 + |chi_(1/2)|^2 + |chi_(1/16)|^2$],
    [$Z_("P,AP")$], [$Z[(0,1)]$], [$|chi_0|^2 + |chi_(1/2)|^2 - |chi_(1/16)|^2$],
    [$Z_("AP,P")$], [$Z[(1,0)]$], [$bar(chi)_0 chi_(1/2) + bar(chi)_(1/2) chi_0 + |chi_(1/16)|^2$],
    [$Z_("AP,AP")$], [$Z[(1,1)]$], [$- bar(chi)_0 chi_(1/2) - bar(chi)_(1/2) chi_0 + |chi_(1/16)|^2$],
  ),
  caption: [Partition function and corresponding characters for Ising CFT (P/AP).]
)
