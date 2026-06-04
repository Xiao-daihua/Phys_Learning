#import "../env/lib.typ": *

= Lattice Chiral TO from VOA
== Lightning Review of VOA

#emph[A physicist's quick guide: VOA = chiral half of a 2D CFT,
    packaged algebraically.]

=== The Core Idea

In a 2D CFT, every local field splits into chiral ($z$-dependent) and
anti-chiral ($overline(z)$-dependent) parts. Remember in RCFT the
fields can be decompose as:
$
    phi.alt_( i ) ( z, overline(z) ) = sum_( a, b ) C_( i )^( a overline(b) ) Phi_( a ) ( z ) times.circle overline(Phi)_( overline(b) ) ( overline(z) )
$
These chiral fields $a(z), b(z), dots$ close under OPE:
$ a(z) b(w) tilde.op sum_n frac(c_n (w), (z-w)^n) $
A *vertex operator algebra* (VOA) is just the rigorous packaging of
"all chiral fields + their OPEs" as one algebraic object $cal(V)$.

=== The Data of a VOA

A VOA is a tuple $(V, |0 angle.r, T, Y, omega)$:

#align(center)[
    #table(
        columns: 2,
        align: (left, left),
        stroke: none,
        table.hline(stroke: 1pt),
        table.header([*Math object*], [*Physics meaning*]),
        table.hline(stroke: 0.5pt),
        [vector space $V$],
        [Hilbert space of chiral states (state-operator
            correspondence)],
        [vacuum $|0 angle.r in V$],
        [vacuum state $arrow.l.r$ identity field $bb(1)$],
        [translation $T = L_(-1)$], [generator of $partial_z$],
        [vertex map $Y(a, z): V arrow.r upright("End")(V)$],
        [sends state $a$ to its field $a(z)$],
        [conformal vector $omega$],
        [stress tensor $T(z) = Y(omega, z)$, central charge $c$],
        table.hline(stroke: 1pt),
    )
]

Everything is determined by *one core relation* — locality:
$ (z - w)^N [Y(a,z), Y(b,w)] = 0 quad upright("for some ") N gt.eq 0 $
This is just the statement that the OPE has finitely many singular
terms.
=== Modules = Primary Sectors

A *module* $M$ of $cal(V)$ is a vector space carrying a consistent
action of all chiral fields in $cal(V)$. Concretely, a module is
specified by the following data:

#align(center)[
    #table(
        columns: 2,
        align: (left, left),
        stroke: none,
        table.hline(stroke: 1pt),
        table.header([*Data*], [*Physical meaning*]),
        table.hline(stroke: 0.5pt),
        [vector space $M$],
        [Hilbert space of one primary sector],
        [action map $Y_M (a, z): cal(V) arrow.r upright("End")(M)$],
        [every chiral field $a(z)$ acts on this sector],
        [$L_0$-grading $M = plus.circle.big_(n gt.eq 0) M_(h+n)$],
        [primary at weight $h$ + tower of descendants at level $n$],
        [lowest-weight state $|h angle.r in M_h$],
        [primary state: $L_0 |h angle.r = h |h angle.r$,
            $L_(n>0)|h angle.r = 0$],
        [conformal weight $h$ (lowest $L_0$ eigenvalue)],
        [scaling dimension of the primary field],
        table.hline(stroke: 1pt),
    )
]

The action $Y_M$ must satisfy the same locality / Jacobi axioms as the
VOA's own vertex map $Y$ — this guarantees that the OPE structure of
$cal(V)$ is preserved on $M$.

#align(center)[
    *one irreducible module $arrow.l.r$ one primary field + all its
    descendants *
]

#emph[Note.] All descendants in $M$ are reached from $|h angle.r$ by
acting with negative-mode operators ($L_(-n), J_(-n), psi_(-r)$, etc.,
for $n, r > 0$). The module is *irreducible* if it cannot be
decomposed into smaller submodules — equivalently, if it corresponds
to a single primary.

==== The Vacuum Module

The most important example: $cal(V)$ is always a module over itself,
called the *vacuum module*. Its lowest-weight state is the vacuum
$|0 angle.r$ with $h = 0$, and its descendants

$
    |0 angle.r, quad L_(-2)|0 angle.r, quad J_(-1)|0 angle.r, quad psi_(-1/2)|0 angle.r, quad ...
$

correspond (via state-operator correspondence) to *all chiral fields
of the CFT*: $bb(1), T(z), J(z), psi(z), :T^2:(z), partial T(z), ...$

In other words: #emph[the vacuum module is the VOA itself]. It
contains the identity field, the stress tensor, and all chiral
generators. In $upright("Rep")(cal(V))$ it is the *unit object*
(labeled $a = 1$), and acts trivially under fusion:
$V times.circle V^((a)) = V^((a))$. Other irreducible modules
$V^((a))$ ($a eq.not 1$) are #emph[distinct] sectors with primary
weight $h_a > 0$ — they correspond to nontrivial anyons.

#emph[Examples.] Ising VOA: three modules $bb(1), psi, sigma$ with
$h = 0, 1/2, 1/16$. Compact boson $V_(U(1)_m)$: $m$ modules labeled by
$p = 0, ..., m-1$ with $h_p = p^2/2m$. In both cases, $p = 0$ (resp.
$bb(1)$) is the vacuum module — the VOA itself.

=== The Three Modifiers

For a VOA to describe a sensible RCFT, three conditions matter:
- *Unitary*: $V$ has positive-definite inner product,
    $L_n^dagger = L_(-n)$. (Real physical CFT.)
- *Rational*: only #emph[finitely many] irreducible modules. (Finitely
    many primaries, finitely many anyons.)
- *Good*: mild technical conditions (e.g. $C_2$-cofiniteness) ensuring
    $upright("Rep")(cal(V))$ is a modular tensor category.

A *good unitary rational VOA* is exactly the chiral data of an RCFT
with a well-defined MTC structure.


== Sopenko's Construction
