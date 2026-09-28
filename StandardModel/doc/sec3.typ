#import "../env/lib.typ": *

= Tree-level amplitudes in gauge theory

These notes use the all-incoming convention. Overall phases and signs of amplitudes depend on the normalization of one-particle states and interaction vertices; the spinor-helicity dependence is the essential part.

== Three-particle amplitudes

=== Complex three-particle kinematics and little-group scaling

For three massless external momenta,

$
  p_1 + p_2 + p_3 = 0,
  quad
  p_i^2 = 0.
$

Momentum conservation implies

$
  0 = p_1^2 = (-p_2-p_3)^2 = 2 p_2 dot p_3,
$

and similarly for the other pairs. In spinor-helicity variables,

$
  2 p_i dot p_j = ⟨i j⟩ [j i].
$

For real momenta, $⟨i j⟩^* = [j i]$, so all two-particle invariants vanish and the three-point amplitude is kinematically trivial. For complex momenta the angle and square spinors are independent, and there are two possible branches.

Assume, for example, that $⟨2 3⟩ != 0$. Then

$
  ⟨2 3⟩ [3 2] = 0
  quad arrow.r quad
  [3 2] = 0.
$

Moreover,

$
  0
  = ⟨2| (p_1+p_2+p_3) |1]
  = ⟨2 3⟩ [3 1],
$

so $[3 1]=0$; similarly $[1 2]=0$. Hence

$
  [1 2] = [2 3] = [3 1] = 0,
$

and all square spinors are proportional. Conversely, if $[2 3] != 0$, then

$
  ⟨1 2⟩ = ⟨2 3⟩ = ⟨3 1⟩ = 0,
$

and all angle spinors are proportional. Thus nonzero three-point amplitudes exist for complex kinematics and are either holomorphic or anti-holomorphic.

Under little-group scaling,

$
  ket(i) arrow.r t_i ket(i),
  quad
  |i] arrow.r t_i^(-1) |i],
  quad
  cal(A)_n arrow.r t_i^(-2 h_i) cal(A)_n.
$

For a holomorphic three-point amplitude, take

$
  cal(A)_3(1^(h_1),2^(h_2),3^(h_3))
  = ⟨1 2⟩^(x_12) ⟨2 3⟩^(x_23) ⟨3 1⟩^(x_31).
$

Little-group covariance gives

$
  -2h_1 = x_12+x_31,
  quad
  -2h_2 = x_12+x_23,
  quad
  -2h_3 = x_23+x_31,
$

and therefore

$
  cal(A)_3
  = ⟨1 2⟩^(h_3-h_1-h_2)
    ⟨2 3⟩^(h_1-h_2-h_3)
    ⟨3 1⟩^(h_2-h_3-h_1).
$

On the anti-holomorphic branch,

$
  cal(A)_3
  = [1 2]^(h_1+h_2-h_3)
    [2 3]^(-h_1+h_2+h_3)
    [3 1]^(h_1-h_2+h_3).
$

Thus Lorentz invariance together with little-group scaling fixes the spinor structure of every three-point amplitude, up to coupling constants.

Some examples are

$
  cal(A)_3(f_1^-, overline(f)_2^-, phi_3)
  = y ⟨1 2⟩,
$

and, in QED,

$
  cal(A)_3(f_1^-, overline(f)_2^+, gamma_3^-)
  = -sqrt(2) e frac(⟨1 3⟩^2, ⟨1 2⟩),
$

$
  cal(A)_3(f_1^-, overline(f)_2^+, gamma_3^+)
  = sqrt(2) e frac([2 3]^2, [1 2]).
$

=== Three-vector amplitudes

For three massless vectors, the Yang-Mills three-point amplitudes are

$
  cal(A)_3(1^-,2^-,3^+)
  = g frac(⟨1 2⟩^3, ⟨2 3⟩ ⟨3 1⟩),
$

$
  cal(A)_3(1^-,2^+,3^+)
  = g frac([2 3]^3, [1 2] [3 1]).
$

The first expression is odd under $1 arrow.l.r 2$. Identical photons therefore have no such self-interaction. For non-Abelian gauge bosons the antisymmetry is carried by the color factor,

$
  cal(A)_3(1_a^-,2_b^-,3_c^+)
  = g f^(a b c)
    frac(⟨1 2⟩^3, ⟨2 3⟩ ⟨3 1⟩),
  quad
  f^(a b c) = -f^(b a c).
$

Higher-dimension or nonlocal interactions can generate other little-group-compatible structures. For example,

$
  cal(A)_3(1^-,2^-,3^-)
  = frac(1, Lambda^2) ⟨1 2⟩ ⟨2 3⟩ ⟨3 1⟩,
$

which can arise from a dimension-six $F^3$ operator, while a nonlocal interaction may give

$
  cal(A)_3(1^-,2^+,3^+)
  = g' frac(⟨1 3⟩ ⟨1 2⟩, ⟨2 3⟩^3).
$

== BCFW recursion

=== General complex deformation and factorization

Higher-point tree amplitudes can be reconstructed from lower-point on-shell amplitudes. Introduce a complex deformation of the external momenta,

$
  hat(p)_i(z) = p_i + z r_i,
$

with

$
  r_i dot r_j = 0
  quad "for all" i,j,
  quad
  p_i dot r_i = 0,
  quad
  sum_i r_i = 0.
$

These conditions preserve the on-shell constraints and total momentum conservation:

$
  hat(p)_i^2 = 0,
  quad
  sum_i hat(p)_i = sum_i p_i.
$

For a factorization channel $I$, define

$
  P_I = sum_(i in I) p_i,
  quad
  R_I = sum_(i in I) r_i,
  quad
  hat(P)_I(z) = P_I + z R_I.
$

The shifted propagator goes on shell at

$
  hat(P)_I^2(z)
  = P_I^2 + 2z P_I dot R_I
  = -P_I^2 frac(z-z_I, z_I),
  quad
  z_I = -frac(P_I^2, 2 P_I dot R_I).
$

The shifted tree amplitude $hat(cal(A))_n(z)$ is a rational function of $z$. Cauchy's theorem gives

$
  cal(A)_n
  = -sum_(z_I) "Res"_(z=z_I)
      frac(hat(cal(A))_n(z), z)
    + B_n,
$

where $B_n$ is the contribution from $z=infinity$. Near a physical pole, tree-level factorization implies

$
  hat(cal(A))_n(z)
  arrow.r
  hat(cal(A))_L(z_I)
  frac(1, hat(P)_I^2(z))
  hat(cal(A))_R(z_I),
$

and

$
  frac(1, hat(P)_I^2(z))
  = -frac(z_I, z-z_I) frac(1, P_I^2).
$

If the deformation is chosen so that $B_n=0$, the BCFW recursion relation is

$
  cal(A)_n
  = sum_(I,h)
    hat(cal(A))_L(z_I)
    frac(1, P_I^2)
    hat(cal(A))_R(z_I).
$

The sum runs over factorization channels and over the helicity and species of the internal on-shell state. The subamplitudes on both sides are evaluated at $z=z_I$.

=== The two-line gauge-theory shift

Choose two external legs $i$ and $j$ and perform the $[i,j⟩$ shift

$
  |hat(i)] = |i] + z |j],
  quad
  ket(hat(j)) = ket(j) - z ket(i),
$

while

$
  ket(hat(i)) = ket(i),
  quad
  |hat(j)] = |j].
$

Equivalently,

$
  hat(p)_i = p_i + z ket(i) [j|,
  quad
  hat(p)_j = p_j - z ket(i) [j|.
$

For a negative-helicity gauge boson on leg $i$ and a positive-helicity gauge boson on leg $j$, both polarization vectors scale as $z^(-1)$. The part of a tree diagram connecting the two shifted legs grows at worst as $z$, hence

$
  hat(cal(A))_n(z) = O(z^(-1))
  quad "as" quad
  z arrow.r infinity,
$

so $B_n=0$. A more refined argument shows that pure-gluon amplitudes also admit additional valid shifts.

== Four-point amplitudes and gauge-algebra consistency

=== Compton scattering

Consider the QED amplitude

$
  cal(A)_4(f_1^-, overline(f)_2^+, gamma_3^-, gamma_4^+)
$

and use the $[3,4⟩$ shift

$
  |hat(3)] = |3] + z |4],
  quad
  ket(hat(4)) = ket(4) - z ket(3).
$

The first factorization channel has internal momentum $hat(P)=p_2+hat(p)_4$. Its pole is fixed by

$
  hat(P)^2
  = ⟨2 hat(4)⟩ [4 2]
  = 0,
  quad
  z_(24) = frac(⟨2 4⟩, ⟨2 3⟩).
$

At the pole,

$
  ⟨1 hat(4)⟩
  = ⟨1 4⟩ - z_(24) ⟨1 3⟩
  = frac(⟨1 4⟩⟨2 3⟩-⟨1 3⟩⟨2 4⟩, ⟨2 3⟩)
  = -frac(⟨1 2⟩⟨3 4⟩, ⟨2 3⟩).
$

The two BCFW residues are

$
  cal(A)_(24)
  = 2e^2
    frac(⟨1 3⟩^2 ⟨2 3⟩,
         ⟨2 4⟩⟨1 2⟩⟨3 4⟩),
$

$
  cal(A)_(14)
  = -2e^2
    frac(⟨1 3⟩^3,
         ⟨1 4⟩⟨1 2⟩⟨3 4⟩).
$

Adding them,

$
  cal(A)_4
  = -2e^2 frac(⟨1 3⟩^2, ⟨1 2⟩⟨3 4⟩)
    (frac(⟨1 3⟩, ⟨1 4⟩)
     -frac(⟨2 3⟩, ⟨2 4⟩)).
$

Using the Schouten identity,

$
  frac(⟨1 3⟩, ⟨1 4⟩)
  - frac(⟨2 3⟩, ⟨2 4⟩)
  = frac(⟨1 2⟩⟨3 4⟩, ⟨1 4⟩⟨2 4⟩),
$

one obtains

$
  cal(A)_4(f_1^-, overline(f)_2^+, gamma_3^-, gamma_4^+)
  = -2e^2 frac(⟨1 3⟩^2, ⟨1 4⟩⟨2 4⟩).
$

A different valid shift can produce the same result from a single on-shell diagram. Equality of different BCFW representations is a useful consistency condition.

=== Adding color: the Lie algebra from on-shell consistency

Let the fermion-fermion-vector three-point amplitude be

$
  cal(A)_3(f_i^-, overline(f)_j^+, g_A^-)
  = tensor(T,+A,-i,-j) frac(⟨1 3⟩^2, ⟨1 2⟩).
$

Computing the colored Compton amplitude from the two fermion-exchange channels gives

$
  cal(A)_4
  = frac(⟨1 3⟩^2, ⟨1 2⟩⟨3 4⟩)
  ( tensor(T,+A,-i,-k) tensor(T,+B,-k,-j)
      frac(⟨2 3⟩, ⟨2 4⟩)
    - tensor(T,+B,-i,-k) tensor(T,+A,-k,-j)
      frac(⟨1 3⟩, ⟨1 4⟩) ).
$

With another shift, one also exposes the gauge-boson exchange channel:

$
  cal(A)_4
  = frac(⟨1 3⟩^2, ⟨2 4⟩⟨4 1⟩)
      tensor(T,+A,-i,-k) tensor(T,+B,-k,-j)
    - f_(A B C) tensor(T,+C,-i,-j)
      frac(⟨1 3⟩^3,
           ⟨1 2⟩⟨3 4⟩⟨4 1⟩).
$

Requiring both constructions to agree forces the couplings to close under a Lie algebra. With Hermitian generators,

$
  tensor(T,+A,-i,-k) tensor(T,+B,-k,-j)
  - tensor(T,+B,-i,-k) tensor(T,+A,-k,-j)
  = i f^(A B C) tensor(T,+C,-i,-j),
$

or equivalently

$
  [T^A,T^B] = i f^(A B C) T^C.
$

If the factor $i$ is absorbed into the definition of the cubic coupling, the same relation is written without the explicit $i$. Thus locality, factorization, and shift independence already imply the Lie-algebra structure of the gauge couplings.

== Vanishing sectors, MHV amplitudes, and Parke-Taylor

=== Helicity selection and color ordering

At tree level, pure Yang-Mills amplitudes with all equal helicities vanish. The same is true when only one gluon has the opposite helicity:

$
  A_n(1^-,2^-,dots,n^-) = 0,
  quad
  A_n(1^+,2^-,dots,n^-) = 0.
$

Parity gives the corresponding all-plus and one-minus statements. These results follow inductively from BCFW recursion because every possible factorization contains a vanishing lower-point amplitude.

The first nonzero generic tree amplitudes have two negative-helicity gluons and are called MHV amplitudes:

$
  A_n(1^-,2^-,3^+,dots,n^+).
$

The full Yang-Mills amplitude can be decomposed into color-ordered partial amplitudes,

$
  cal(A)_n(1^(a_1),dots,n^(a_n))
  = g^(n-2)
    sum_(sigma in S_n/Z_n)
    A_n(sigma(1),dots,sigma(n))
    "tr"(
      T^(a_(sigma(1))) dots T^(a_(sigma(n)))
    ).
$

The partial amplitude $A_n$ is associated with a fixed cyclic ordering. Its physical poles occur only when adjacent ordered momenta become collinear or when sums of cyclically adjacent momenta go on shell.

=== Four-point MHV amplitude and the n-point formula

For the ordering $(1,2,3,4)$, BCFW recursion gives, in the overall sign convention of the handwritten notes,

$
  A_4(1^-,2^-,3^+,4^+)
  = -g^2
    frac(⟨1 2⟩^4,
         ⟨1 2⟩⟨2 3⟩⟨3 4⟩⟨4 1⟩).
$

The denominator displays poles only for adjacent particles in the color ordering, while the numerator is fixed by little-group scaling. Suppressing the overall coupling and convention-dependent phase suggests the $n$-point ansatz

$
  A_n(1^-,2^-,3^+,dots,n^+)
  = frac(⟨1 2⟩^4,
         ⟨1 2⟩⟨2 3⟩ dots ⟨n-1,n⟩⟨n 1⟩).
$

This formula follows by induction. Apply the $[1,n⟩$ shift,

$
  |hat(1)] = |1] + z |n],
  quad
  ket(hat(n)) = ket(n) - z ket(1).
$

For the chosen ordering and helicities, only the channel

$
  hat(P) = p_(n-1) + hat(p)_n
$

contributes. The on-shell condition gives

$
  ⟨n-1,hat(n)⟩ = 0,
  quad
  z_* = frac(⟨n-1,n⟩, ⟨n-1,1⟩).
$

At this pole, the Schouten identity gives

$
  ⟨n-2,hat(n)⟩
  = frac(
      ⟨n-2,n⟩⟨n-1,1⟩
      -⟨n-2,1⟩⟨n-1,n⟩,
      ⟨n-1,1⟩
    )
  = frac(⟨n-2,n-1⟩⟨1 n⟩, ⟨n-1,1⟩).
$

Substituting the induction hypothesis for the left subamplitude and the appropriate three-point amplitude on the right yields

$
  A_n(1^-,2^-,3^+,dots,n^+)
  = frac(⟨1 2⟩^4,
         ⟨1 2⟩⟨2 3⟩ dots ⟨n-1,n⟩⟨n 1⟩).
$

More generally, if the two negative-helicity legs are $r$ and $s$,

$
  A_n(1^+,dots,r^-,dots,s^-,dots,n^+)
  = frac(⟨r s⟩^4,
         product_(a=1)^n ⟨a,a+1⟩),
  quad
  n+1 equiv 1.
$

This is the Parke-Taylor formula for color-ordered tree-level gluon amplitudes.

Amplitudes with three negative helicities are called NMHV; more generally, amplitudes with $k+2$ negative-helicity gluons are $"N"^k "MHV"$. BCFW recursion expresses each sector in terms of lower-point amplitudes. In QCD this classification is fundamentally a tree-level organization; loop amplitudes have a richer structure.
