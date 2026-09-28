#import "../env/lib.typ": *

// = Wilsonian RG and Scale Invariance
//
// == Wilsonian Renormalization Group
//
// In Wilsonian QFT, we define a theory with a cutoff. One can understand
// it as theories are never continuous but live on a lattice with a
// finite lattice spacing. For example, in Euclidean QFT, we can define a
// $phi^4$ theory with a cutoff $Lambda$ as follows:
// $
//     S[phi] = integral d^d x (1/2 (partial_mu phi)^2 + 1/2 m^2 phi^2 + lambda phi^4)
// $
// where we only integrate over momenta $|p| < Lambda$. This means that
// when doing path integral we integrate over :
// $
//     integral_(|p|<Lambda) cal(D) phi(k)
// $
// yet now we do a variable change to the momentum space and integrate
// over modes with momentum lower that the cutoff $Lambda$. This should
// be understood as part of the field theory and the cut off in momentum
// space is a way to represent the lattice spacing in the position space.
//
//
//


= Scale-Invariant Physics

These notes summarize the Wilsonian renormalization-group viewpoint
and its application to the Ising universality class. The prose has
been lightly reconstructed; the equations have been normalized and
checked for consistency.

== Wilsonian RG in QFT

Consider a Euclidean scalar theory with cutoff $Lambda$:

$
    cal(L) = 1/2 (partial_mu phi)^2 + 1/2 m^2 phi^2 + lambda/(4!) phi^4,
$

$
    Z = integral [cal(D) phi]_Lambda
    exp(- integral d^d x cal(L)[phi]),
    qquad
    [cal(D) phi]_Lambda = product_(abs(k) < Lambda) d phi(k),
$
with Fourier convention
$
    phi(x) = integral (d^d k)/(2 pi)^d e^(i k dot x) phi(k).
$
One may worry about changing into the fourier space may cause a change
of measure, indeed, yet long as we focus on physical observables, the
change of measure does not affect the final results.
#remark([
    Here in Wilsonian's picture, all QFT are defined up to a cut off
    in the momentum space or equivalently a lattice spacing in the
    position space.
])

=== Integrating out UV Modes

Now we want to consider how a theory changes as we lower the energy
cut off. Now lower the cutoff from $Lambda$ to $rho Lambda$, where
$0 < rho < 1$, and split

$
    phi(k) = phi_"IR" (k) + hat(phi)(k),
$

where $phi_"IR"$ has support for $abs(k) < rho Lambda$ and $hat(phi)$
has support for $rho Lambda <= abs(k) < Lambda$. Then we assume that
$m, lambda$ are small and we integrate out the high-momentum modes
$hat(phi)$:

$
    Z = integral [cal(D) phi]_(rho Lambda) integral [cal(D) hat(phi)]
    exp(- integral d^d x cal(L)[phi + hat(phi)])
    = integral [cal(D) phi]_(rho Lambda)
    exp(- integral d^d x cal(L)_"eff" [phi]).
$

The effective Lagrangian may in principal contains every local
operator allowed by the symmetries:

$
    cal(L)_"eff"
    = 1/2 (1 + Delta Z) (partial phi)^2
    + 1/2 (m^2 + Delta m^2) phi^2
    + 1/(4!) (lambda + Delta lambda) phi^4
    + Delta C (partial phi)^4
    + Delta D phi^6 + dots
$
All induced coefficients depend on the blocking parameter $rho$. Now
we see that the original theory if we integrate out the high momentum
modes first we generates an equivalent theory with a lower cutoff and
new lagrangian. Notice that the new lagrangian is not a completely new
theory but rather a effective theory of the original theory if we only
consider the low energy physics.

=== Flow on Coupling Space

Now we want to interpret the new effective theory as a theory with a
change of the coupling from the original theory (while preserving the
cut off and the Kinetic term). To do this we need to restore the
original cutoff by defining
$
    x' = rho x,
    qquad k' = k/rho,
    qquad partial_mu = rho partial'_mu.
$
We also want the Kinetic term to be canonically normalized thus we can
fix a normalization of the field and only have the coupling to flow.
$
    phi' = sqrt(rho^(2-d) (1 + Delta Z)) phi.
$

The action therefore becomes

$
    integral d^d x' [
        1/2 (partial' phi')^2
        + 1/2 m'^2 phi'^2
        + lambda'/(4!) phi'^4
        + C' (partial' phi')^4 + dots
    ],
$
where
$
       m'^2 & = (m^2 + Delta m^2) (1 + Delta Z)^(-1) rho^(-2), \
    lambda' & = (lambda + Delta lambda) (1 + Delta Z)^(-2) rho^(d-4), \
         C' & = (C + Delta C) (1 + Delta Z)^(-2) rho^d.
$
#remark([
    Notice that until now we have not made any approximation. But
    obviously the coefficients for the new effective lagrangian are
    quite impossible to compute.
])
However, now we focus on leading order in $m^2, lambda, C$ and we
have:
$
    m'^2 = rho^(-2) m^2,
    qquad
    lambda' = rho^(d-4) lambda,
    qquad
    C' = rho^d C.
$
We may see that different couplings behave differently under the RG
flow. The mass term $m^2$ grows as we lower the cutoff, the $lambda$
term grows for $d < 4$ and shrinks for $d > 4$, and the $C$ term
shrinks for all $d > 0$. Thus we call:

- Relevant operators: $m^2$ and $lambda$ for $d < 4$.
- Irrelevant operators: $C$ and $lambda$ for $d > 4$.
- Marginal operators: $lambda$ for $d = 4$. In fact this need detailed
    analysis, in dim reg we in fact work in $d = 4 - epsilon$ and we
    find that $lambda$ is marginally relevant for $epsilon > 0$.

=== RG Flow and Fixed Points

The flow of the couplings can be described by a function called the
beta function:
$
    mu (d g)/(d mu) = beta(g).
$
with $mu$ the energy scale and $g$ the coupling. We may find out that
there are some fixed point of the RG flow, which have some interesting
behaviors.

#YL([Diagram in hand written note!])

== RG in StatMech

For RG in StatMech, it is much more calculable compared to QFT (where
in fact we seldome directly calculate the RG flow of Wilsonian
coupling.) Now we take Ising model as a simplest model for an
illustration. For lattice with spins $s_i in {+1, -1}$ on each site:

$
    H = -J sum_(chevron.l i j chevron.r) s_i s_j - h sum_i s_i,
    qquad
    P[{s}] = 1/Z e^(-beta H[{s}]),
    qquad
    Z = sum_[{s}] e^(-beta H[{s}]),
$

where $beta = 1/T$. At $h = 0$, the low-temperature phase has nonzero
spontaneous magnetization, while the high-temperature phase is
disordered. Near the critical temperature,
$
    M tilde (T_c - T)^beta
$
on the ordered side. Here the exponent $beta$ should not be confused
with inverse temperature. (This is experimentally true and we will see
how to understand this.)

=== Block Spin Transformation

In RG of QFT we integrate out the high momentum modes and see how the
theory changes. Now in SM, it is much convenient to stay in position
space and we can make the lattice spacing larger and see how the
theory changes. To do this we integrate out the blocks of spins to
make it a coarse-grained lattice. This is realized by *Block Spin
Transformation*:
$
    T(s'; s_1, dots, s_q) = cases(
        1 & "if" s' sum_(i=1)^q s_i > 0,
        0 & "otherwise",
    ).
$
This means that if most of the spins in a block are up, then the
coarse-grained spin is up, and vice versa or we throw away the
contribution.

#YL([Diagram for illustration!])

The coarse-grained Hamiltonian is defined by

$
    e^(-beta H'[{s'}])
    = sum_[{s}] product_"blocks" T(s'; s_1, dots, s_q)
    e^(-beta H[{s}]).
$
and the new partition function is
$
    Z' &= sum_[{s'}] e^(-beta H'[{s'}])
    = sum_[{s'}] sum_[{s}] product_"blocks" T(s'; s_1, dots, s_q)
    e^(-beta H[{s}])\
    &= sum_[{s}] e^(-beta H[{s}]) sum_[{s'}] product_"blocks" T(s'; s_1, dots, s_q).
$
Since $sum_(s') T = 1$, one has $Z' = Z$. We can see that the
partition function is never changed, we cut integrate out the blocks
first and the integrate out the coarse-grained spins later, which is
consist with integrating out the highier momentum modes in QFTs.

One may expect a second step of rescaling to restore the original
lattice spacing and the Kinetic term to have the field normalized.
However, the Ising CFT is independent of the lattice spacing and the
field is already normalized in the definition of the BST to have
$sigma$ fixed to be $+1$ or $-1$. Thus we do not need to do any
rescaling.

From the new Hamiltonian $H'[{s'}]$, reading off the new couplings
gives an RG map
$
    (J', h', dots) = "RG"[(J, h, dots)].
$

=== One-dimensional decimation

For 1D Ising model, we can do the RG transformation exactly. For
$d = 1$ and $h = 0$, choose every two spins to live in a block and
integrate out the block with a special BST which only sees the even
number blocks and simply ignore the first one. The BST is:
$
    T(s'; s_1, s_2) = delta_(s',s_2),
    qquad
    H = -J sum_i s_i s_(i+1) - c sum_i 1.
$
#remark([
    Here in the original theory we add a term of $-c$ to the
    Hamiltonian, which is to nromalize out the vaccum energy.
])
Summing over inside the blocks gives the coarse-grained Hamiltonian as
$
    e^(-beta H'[{s_"even"}]) &= sum_(s_"odd") e^beta[J sum_"even" (s_i s_(i+1) + s_(i+1) s_(i+2)) + 2 sum_"even" c]\
    &= product_"even" [
        e^beta(J(s_i+s_(i+2))+2c) + e^beta(-J(s_i+s_(i+2))+2c)
    ].
$
Notice that here $s_i, s_(i+2)$ are both fixed number. In the final
form, the first term is given by $s_(i+1) = 1$ and the second term is
given by $s_(i+1) = -1$. Matching this to $e^(J' s_i s_(i+2) + c')$,
and redefining $K = beta J$, $K' = beta J'$, and $C = beta c$, we
have:
$
    K' = 1/2 ln(cosh(2K)),
    qquad
    C' = 2C + 1/2 ln(4 cosh(2K)).
$
With $x = tanh K$, $0 <= x < 1$,

$
    x' = "RG"(x) = x^2.
$

Thus the unstable zero-temperature fixed point $x = 1$ flows toward
the stable infinite-temperature fixed point $x = 0$.

== Linearized flow near a fixed point

Let $K_a$ be a set of couplings and $K'_a = "RG"(K_a)$ be the RG
transformation. We define a fixed point $K_a^*$ as a point that is
invariant under the RG transformation:
$
    K_a^* = "RG"(K_a^*).
$
Let $K_a^*$ be a fixed point. Linearizing the RG transformation gives

$
    K'_a - K_a^*
    = [ (partial K'_a)/(partial K_b) ]_(K=K^*) (K_b-K_b^*)
    equiv T_(a b) (K_b-K_b^*).
$

Let $v_a^(i)$ be left eigenvectors (i here is the label of
eigenvectors),
$
    v_a^(i) T_(a b) = lambda_i v_b^(i),
$

and define scaling variables

$
    u_i = v_a^(i) (K_a-K_a^*).
$
We now can see that the RG transformation is diagonalized in the $u_i$
basis: Under one RG transformation, the new scaling variable is

$
    u'_i & = v_a^(i) (K'_a-K_a^*) \
         & = v_a^(i) T_(a b) (K_b-K_b^*)
           + cal(O)((K-K^*)^2) \
         & = lambda_i v_b^(i) (K_b-K_b^*)
           + cal(O)((K-K^*)^2) \
         & = lambda_i u_i + cal(O)(u^2).
$

Therefore, to linear order around the fixed point, the RG
transformation is diagonal in the scaling-variable basis:

$
    u'_i = lambda_i u_i.
$


After one blocking step, we commonly use $b$ to denote the linear size
of the block and use it to characterize how the variable transform as
we change the scale.
$
    u'_i = lambda_i u_i equiv b^(y_i) u_i,
    qquad
    b^d = "number of spins per block".
$
where $d$ is the spatial dimension. Then we can now see how different
parameters behave under the RG transformation.
- If $y_i > 0$, then $u_i$ grows under RG and the corresponding
    operator is relevant.
- If $y_i < 0$, then $u_i$ shrinks under RG and the corresponding
    operator is irrelevant.
- If $y_i = 0$, then $u_i$ is unchanged under RG and the corresponding
    operator is marginal. If the deformation of

This is in fact related to the QFT picture, for a operator that
perturb the fixed-point action is $sum_i c_i cal(O)_i$, the scaling
dimension of $cal(O)_i$ is:
$
    Delta_i = d - y_i.
$

== Scaling Hypothesis

Most observable in StatMech system can be given from the free energy.
Thus the behavior of the free energy under RG transformation near a
fixed point is of great interest, it may give us behavior of
observables near the critical points in terms of the couplings. The
free energy density is defined as:
$
    f = -1/(beta N) log Z,
$
Under RG transformation, the partition function is invariant, thus the
free energy density transforms as:
$
    f' = - 1/(beta N') log Z = b^d f
$
remember that $b^d$ is the number of spins per block. The free energy
density can be split into:
$
    f({K,c}) = c + hat(f)({K}),
$
We split out the vacuum energy density $c$ since it is irrelevant to
most observables. In general we have:
$
    c' = b^d (c + g({K}))
$
Thus under RG transformation, we have the following relation:
$
    hat(f)({K}) = g({K})+ b^(-d) hat(f)({K'})
$
We now split the free energy density into singular and regular parts.
We mostly care about the singular part since it is the one that gives
us the signal of the second order phase transition. Normally, the
function $g({K})$ is regular and thus under RG the singular part of
the free energy density transforms as:
$
    f_s (K) = b^(-d) f_s (K').
$
Now we focus on the case that we have a fixed point $K^*$ and we are
*near the fixed point*. We assume now we only have thermal and
magnetic scaling variables $u_t$ and $u_h$, (Just assume other
irrelevant variables goes to 0 near the fixed point), we have:
$
    f_s (u_t,u_h)
    = b^(-d) f_s (b^(y_t) u_t, b^(y_h) u_h).
$

After $n$ iterations,

$
    f_s (u_t,u_h)
    = b^(-n d) f_s (b^(n y_t) u_t, b^(n y_h) u_h).
$
Choose to end on some $n$ so that $abs(b^(n y_t) u_t) = u_(t 0)$. Then
plugging in $n$ in terms of other quantities gives:
$
    f_s (u_t,u_h)
    = abs(u_t/u_(t 0))^(d/y_t)
    f_s (upright("sgn")(u_t) u_(t 0), u_h abs(u_t/u_(t 0))^(-y_h/y_t)).
$

Using reduced temperature $t = (T-T_c)/T_c$ and the relation
$u_t = t/t_0, u_h = h/h_0$ (we here won't justify why this is true,
one can assume as a fact for Ising), this is commonly written as
$
    f_s (t,h)
    = abs(t/t_0)^(d/y_t)
    Phi((h/h_0) abs(t/t_0)^(-y_h/y_t)).
$
Consequently, taking derivatives gives the behavior of other
observables:
$
    C tilde partial_t^2 f_s tilde abs(t)^(-alpha), quad
    M tilde (partial f_s)/(partial h) |_(h=0) tilde (-t)^beta, quad
    chi tilde (partial M)/(partial h) |_(h=0) tilde abs(t)^(-gamma),
$

with

$
    alpha = 2 - d/y_t,
    qquad
    beta = (d-y_h)/y_t,
    qquad
    gamma = (2y_h-d)/y_t.
$
We can see that the critical exponents are determined by $y_t$ and
$y_h$, which are determined by the scaling properties of the coupling
near the fixed point. And they are related to each other, cause they
are not independent.

In a fixed spatial dimension, the Ising lattice model, uniaxial
magnets, the liquid–gas critical point, and one-component scalar
$phi^4$ theory can belong to the same Ising universality class, that
flow to the same fixed point at IR and thus have the same critical
behavior.
