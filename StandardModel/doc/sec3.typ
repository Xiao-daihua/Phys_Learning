#import "../env/lib.typ": *

= Tree-level amplitudes in gauge theory

These notes use the all-incoming convention for each amplitude, all
momenta are incoming.

// Overall phases and signs of amplitudes depend on the normalization of one-particle states and interaction vertices; the spinor-helicity dependence is the essential part.

== Three-particle amplitudes

We want to discuss some Universal structure of the three point
amplitudes for massless particles.

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

For real momenta, $⟨i j⟩^* = [j i]$, so the momentum conservation
condition implies that:
$
    ⟨1 2⟩ = ⟨2 3⟩ = ⟨3 1⟩ = 0,
    quad
    [1 2] = [2 3] = [3 1] = 0.
$
Therefore if some Feymann rules tells us that the three-point function
built from such spinors. Then it is zero.
#remark([
    An example is the 3 point gluon vertex in Yang-Mills theory. The
    three point function is zero for real momenta. However, this
    doesn't mean that all 3 point functions are zero. For example, the
    $phi^3$ theory it has a well defined
    $-i g$
    three point amplitude.
])

For complex momenta the angle and square spinors are independent, and
there are two possible branches. Assume, for example, that
$⟨2 3⟩ != 0$. Then

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

and all square spinors $|i]$ are proportional. Conversely, if
$[2 3] != 0$, then

$
    ⟨1 2⟩ = ⟨2 3⟩ = ⟨3 1⟩ = 0,
$

and all angle spinors $|i chevron.r$ are proportional. Thus if we
promote the outgoing momentum to be non-zero, three-point amplitudes
that used to be 0 due to the kinetic constraints may be non-zero and
are either holomorphic or anti-holomorphic.

Under little-group transformations, remember that the spinors
transform as:

$
    ket(i) arrow.r t_i ket(i),
    quad
    |i] arrow.r t_i^(-1) |i], quad t = e^(i phi.alt/2)
    // quad
    // cal(A)_n arrow.r t_i^(-2 h_i) cal(A)_n.
$
where $phi.alt$ is the angle rotated around the momentum direction.

For a three-point amplitude, we assume that it lives consistently on
one of the two branches. And the external state of the amplitude have
the helicity of $h_i$. This means that under little group
transformation, each external point gain phase factor of:
$
    e^(- i h_i phi.alt)
$

A generic assumption for the spinor dependence of the tree level
three-point amplitude is:

$
    cal(A)_3(1^(h_1),2^(h_2),3^(h_3))
    = ⟨1 2⟩^(x_12) ⟨2 3⟩^(x_23) ⟨3 1⟩^(x_31).
$

Both sides should have the same little group transformation rules,
therefore:

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

Similarly, if the amplitude lives on the other branch, we have:

$
    cal(A)_3
    = [1 2]^(h_1+h_2-h_3)
    [2 3]^(-h_1+h_2+h_3)
    [3 1]^(h_1-h_2+h_3).
$

Thus Lorentz invariance together with little-group scaling fixes the
spinor structure of every three-point amplitude, up to coupling
constants. Indeed we have some examples for this universal behavior.

- Yukawa Theory: $cal(L) = y phi overline(f) f$.
$
    cal(A)_3(f_1^-, overline(f)_2^-, phi_3)
    = y ⟨1 2⟩,
$

- QED:
$
    cal(A)_3(f_1^-, overline(f)_2^+, gamma_3^-)
    = -sqrt(2) e frac(⟨1 3⟩^2, ⟨1 2⟩),
$

$
    cal(A)_3(f_1^-, overline(f)_2^+, gamma_3^+)
    = sqrt(2) e frac([2 3]^2, [1 2]).
$

=== Three-vector amplitudes

- $(-,-,+)$ Helicity

If we assume that the three point ingoing particles have $(--+)$
helicity. Then the only possible three-point amplitude is:
$
    cal(A)_3(1^-,2^-,3^+)
    = g frac(⟨1 2⟩^3, ⟨2 3⟩ ⟨3 1⟩),
$
The first expression is odd under $1 arrow.l.r 2$. Identical photons
therefore have no such self-interaction. For non-Abelian gauge bosons
the antisymmetry is carried by the color factor,
$
    cal(A)_3(1_a^-,2_b^-,3_c^+)
    = g f^(a b c)
    frac(⟨1 2⟩^3, ⟨2 3⟩ ⟨3 1⟩),
    quad
    f^(a b c) = -f^(b a c).
$
This makes this amplitude to possibly exist.

- $(-,+,+)$ Helicity

$
    cal(A)_3(1^-,2^+,3^+)
    = g f^(a b c) frac([2 3]^3, [1 2] [3 1]).
$
We take the antiholomorphic branch due to potential inconsistency with
the holomorphic branch that violates locality.


- $(-,-,-)$ Helicity

The solution may take the following form,
$
    cal(A)_3(1^-,2^-,3^-)
    = frac(1, Lambda^2) ⟨1 2⟩ ⟨2 3⟩ ⟨3 1⟩,
$
However, one may notice that such interaction is not renormalizable.

One can find that for generic spin-1 bosons, the only possible
three-point amplitudes are the ones listed above:

$
    cal(A)_3(1^-,2^+,3^+)
    = g f^(a b c) frac([2 3]^3, [1 2] [3 1]).
    quad
    cal(A)_3(1_a^-,2_b^-,3_c^+)
    = g f^(a b c)
    frac(⟨1 2⟩^3, ⟨2 3⟩ ⟨3 1⟩),
$
One may find them exactly match the three-point amplitudes from
Yang-Mills theory.


//
// Higher-dimension or nonlocal interactions can generate other
// little-group-compatible structures. For example,
//
//
// which can arise from a dimension-six $F^3$ operator, while a nonlocal
// interaction may give
//
// $
//     cal(A)_3(1^-,2^+,3^+)
//     = g' frac(⟨1 3⟩ ⟨1 2⟩, ⟨2 3⟩^3).
// $

== BCFW recursion

Here we focus on the on shell amplitudes of massless particles. An
amazing fact is that higher-point tree amplitudes can be reconstructed
from lower-point on-shell amplitudes.

=== General complex deformation and factorization

For a tree level amplitude of $n$ massless particles, we assume all
ingoing. Thus the exernal momenta satisfy:
$
    sum_(i=1)^n p_i = 0,
    quad
    p_i^2 = 0.
$
Introduce a complex deformation of the external momenta,
$
    hat(p)_i (z) = p_i + z r_i,
$

with complex values vectors $r_i$ (certainly it can be 0) satisfying

$
    r_i dot r_j = 0
    quad "for all" i,j,
    quad
    p_i dot r_i = 0,
    quad
    sum_i r_i = 0.
$

These conditions preserve the on-shell constraints and total momentum
conservation:

$
    hat(p)_i^2 = 0,
    quad
    sum_i hat(p)_i = sum_i p_i = 0
$

For a factorization channel $I$ (a subset of the external legs) that
have at least 2 no more than n-2 external legs that are non-trivial
($P_I^2 eq.not 0$), define:

$
    P_I = sum_(i in I) p_i,
    quad
    R_I = sum_(i in I) r_i,
    quad
    hat(P)_I (z) = P_I + z R_I.
$

The shifted propagator goes on shell at

$
    hat(P)_I^2(z)
    = P_I^2 + 2z P_I dot R_I
    = -P_I^2 frac(z-z_I, z_I),
    quad
    z_I = -frac(P_I^2, 2 P_I dot R_I).
$

Now we can do a shift to the amplitude. The shifted amplitude is
defined as:
$
    hat(cal(A))_n (z)
    = cal(A)_n ( hat(p)_1 (z),dots,hat(p)_n (z)).
$
#remark([Here we only focus on tree level amplitudes. For loop it will
    be more complicated. It is also important to note that not only
    the momentum is shifted. The spinors built from momentum and
    polarization vectors built from momentum are both shifted.])
The shifted tree amplitude $hat(cal(A))_n (z)$ is a function of $z$.
Apparantly, if we take $z=0$, we recover the original amplitude:
$
    hat(cal(A))_n (0) = cal(A)_n.
$
We now examine the analytic structure of $hat(cal(A))_n (z)$ as a
function of $z$. At tree level, $hat(cal(A))_n (z)$ is a rational
function of $z$: it has no branch cuts, logarithms, or square roots.
Its singularities are therefore poles. For generic external momenta,
these poles are simple.

To see this, consider the Feynman diagrams. A finite pole in $z$ can
arise when a shifted internal propagator goes on shell. For a
nontrivial subset $I$ of external legs, define
$
    hat(P)_I (z) = sum_(i in I) hat(p)_i (z).
$
If $P_I dot R_I != 0$, the propagator is
$
    (1) / (hat(P)_I^2(z))
    = -(z_I) / (P_I^2 (z - z_I)),
    quad
    z_I = -(P_I^2) / (2 P_I dot R_I).
$
Thus it has a simple pole at $z = z_I$, which is away from the origin
for generic external momenta. In a tree diagram, a given internal
propagator occurs only once. Moreover, for generic momenta, different
factorization channels have distinct values of $z_I$. Consequently,
$hat(cal(A))_n (z)$ has only simple finite poles.


#figure(
    image("../assets/Contouril.png", width: 70%),
    caption: [Illustration of the contour integral in the complex $z$
        plane. The contour is deformed to encircle all finite poles,
        and a large circle at infinity.],
) <fig-contouril>

Therefore, Cauchy's theorem gives

$
    cal(A)_n
    = -sum_(z_I) "Res"_(z=z_I)
    frac(hat(cal(A))_n (z), z)
    + B_n,
$

where $B_n$ is the contribution from $z=infinity$. Near a physical
pole, tree-level factorization implies

$
    hat(cal(A))_n (z)
    arrow.r
    hat(cal(A))_L (z_I)
    frac(1, hat(P)_I^2 (z))
    hat(cal(A))_R (z_I),
$

and

$
    frac(1, hat(P)_I^2 (z))
    = -frac(z_I, z-z_I) frac(1, P_I^2).
$

If the deformation is chosen so that $B_n=0$, the BCFW recursion
relation is

$
    cal(A)_n
    = sum_(I,h)
    hat(cal(A))_L (z_I)
    frac(1, P_I^2)
    hat(cal(A))_R (z_I).
$

The sum runs over factorization channels, for each channel, all legs
in $I$ should be either in the left part or in the right part.
However, should not double count!! One should also remember to sum
over the helicities and other DoFs of the inner leg. The subamplitudes
on both sides are evaluated at $z=z_I$. We may find these
subamplitudes are on shell amplitudes with fewer external legs and
complex momenta.

#figure(
    image("../assets/2026-10-15-17-33-37.png", width: 60%),
    caption: [Illustration],
) <fig-2026-10-15-17-33-37>


=== BCFW Recursion Relation

Notice that the shift $r_i$ may be taken to be 0. For a BCFW recursion
relation, we choose only two external legs to shift. And the shift
shall take the following explicit form:
$
    |hat(i)] = |i] + z |j],
    quad
    ket(hat(j)) = ket(j) - z ket(i),
    quad
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

For a negative-helicity gauge boson on leg $i$ and a positive-helicity
gauge boson on leg $j$, both polarization vectors scale as $z^(-1)$.
The part of a tree diagram connecting the two shifted legs grows at
worst as $z$, hence

$
    hat(cal(A))_n (z) = O(z^(-1))
    quad "as" quad
    z arrow.r infinity,
$

so $B_n=0$. Therefore one can see that having $B_n = 0$ only need a
certain choice of the shift with the right helicity configuration of
the external legs.

// A more refined argument shows that pure-gluon amplitudes
// also admit additional valid shifts.


=== Example: Compton scattering

We consider the QED amplitude of compton scattering while taking the
electrons and positrons to be massless.
Consider the QED amplitude

$
    cal(A)_4(f_1^-, overline(f)_2^+, gamma_3^-, gamma_4^+)
$

and use the $[3,4⟩$ shift, it is given by:
$
    ket(hat(3)) &= ket(3),
    quad |hat(3)] = |3] + z |4], \
    ket(hat(4)) &= ket(4) - z ket(3),
    quad |hat(4)] = |4].
$
The corresponding momentum shift is
$
    hat(p)_3
    &= ket(hat(3)) [hat(3)|
    = p_3 + z ket(3) [4|, \
    hat(p)_4
    &= ket(hat(4)) [hat(4)|
    = p_4 - z ket(3) [4|.
$
Thus, with $q = ket(3) [4|$,
$
    hat(p)_3 = p_3 + z q,
    quad
    hat(p)_4 = p_4 - z q,
    quad
    hat(p)_3 + hat(p)_4 = p_3 + p_4.
$

// $
//     |hat(3)] = |3] + z|4],
//     quad
//     ket(hat(4)) = ket(4) - z ket(3).
// $
For only 4 external legs, we only have 3 Factorization channels, they
are explicitly:
$
    hat(P) = p_1 + hat(p)_3,
    quad
    hat(P) = p_2 + hat(p)_4,
    quad
    hat(P) = p_1 + p_2.
$
Drawn in a diagram it is:

#figure(
    image("../assets/BCFWshift.png", width: 80%),
) <fig-bcfwshift>

two factorization channels that may give a pole, the third channel has
shifted propagator independent of $z$ therefore won't contribute to a
pole. The channel that constributed have the momentum as following.
$
    hat(P) = p_2 + hat(p)_4,
    quad
    hat(P) = p_1 + hat(p)_4.
$
We first calculate the first channel. The first factorization channel
has internal momentum $hat(P)=p_2+hat(p)_4$. Its pole is fixed by

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
// Then we calculate the three point amplitudes on both sides:
// $
// cal(A)_(2 4) = A_L (z_(24)) 1/P_(24)^2 A_R (z_24)
// $
// Using the result of the complex three-point amplitude of QED, we immediately have:

Then we calculate the three-point amplitudes on both sides:
$
    cal(A)_(24)
    = cal(A)_L (z_(24))
    frac(1, P_(24)^2)
    cal(A)_R (z_(24)).
$
All hatted quantities below are evaluated at $z = z_(24)$.
Using the complex three-point amplitudes of QED,
$
    cal(A)_(24)
    &= -2 e^2
    frac(⟨1 3⟩^2, ⟨1 hat(P)⟩)
    frac(1, ⟨2 4⟩ [4 2])
    frac([2 4]^2, [hat(P) 2]) 
    = 2 e^2
    frac(
        ⟨1 3⟩^2 [2 4],
        ⟨2 4⟩ ⟨1|hat(P)|2]
    ) 
    = -2 e^2
    frac(⟨1 3⟩^2, ⟨2 4⟩ ⟨1 hat(4)⟩).
$
Here we used $[4 2] = -[2 4]$ and the on-shell identity
$
    ⟨1 hat(P)⟩ [hat(P) 2]
    = ⟨1|hat(P)|2].
$
Since $hat(P) = p_2 + hat(p)_4$,
$
    ⟨1|hat(P)|2]
    &= ⟨1|(p_2 + hat(p)_4)|2] \
    &= ⟨1 2⟩ [2 2]
        + ⟨1 hat(4)⟩ [hat(4) 2] \
    &= ⟨1 hat(4)⟩ [4 2],
$
where $[2 2] = 0$ and $|hat(4)] = |4]$. Then we plug in the result of $⟨1 hat(4)⟩$ at the pole to get:
$
    cal(A)_(24)
    = 2 e^2
    frac(
        ⟨1 3⟩^2 ⟨2 3⟩,
        ⟨2 4⟩ ⟨1 2⟩ ⟨3 4⟩
    ).
$

Siminlarly we can calculate the second channel.

The two BCFW residues are

$
    cal(A)_(24)
    = 2e^2
    frac(
        ⟨1 3⟩^2 ⟨2 3⟩,
        ⟨2 4⟩⟨1 2⟩⟨3 4⟩
    ),
quad 
    cal(A)_(14)
    = -2e^2
    frac(
        ⟨1 3⟩^3,
        ⟨1 4⟩⟨1 2⟩⟨3 4⟩
    ).
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
One can verify that this result agrees with the Feynman-diagram calculation of
the same amplitude.

=== Example: Compton scattering with different shifts

#YL([ I haven't detailed check this calculation.])

A different valid shift can produce the same result from a single
on-shell diagram. Equality of different BCFW representations is a
useful consistency condition.


We use the $[3,2⟩$ shift:
$
    ket(hat(3)) &= ket(3),
    quad |hat(3)] = |3] + z |2], \
    ket(hat(2)) &= ket(2) - z ket(3),
    quad |hat(2)] = |2].
$
Thus, only the square spinor of photon $3$ and the angle spinor of
antifermion $2$ are shifted. Defining $q = ket(3) [2|$, the momenta become
$
    hat(p)_3
    &= ket(3) ([3| + z [2|)
    = p_3 + z q, \
    hat(p)_2
    &= (ket(2) - z ket(3)) [2|
    = p_2 - z q.
$
Legs $1,4$ remain unchanged. The shifted momenta remain null, and
$hat(p)_2 + hat(p)_3 = p_2 + p_3$.

// The antifermion's square-spinor wavefunction is unchanged, while the
// negative-helicity photon polarization scales as $z^(-1)$. QED vertices
// and fermion propagators along the shifted line are $O(1)$, giving
// $hat(cal(A))_4 (z) = O(z^(-1))$ and hence $B_4 = 0$.

Only the $(24)|(13)$ channel contributes: the $(14)|(23)$ channel
is independent of $z$, while the $(12)|(34)$ channel requires a
three-photon amplitude, which vanishes in tree-level QED.

The internal momentum is
$
    hat(P) = hat(p)_2 + p_4 = P_(24) - z q.
$
Its on-shell condition gives
$
    hat(P)^2 (z)
    = ⟨hat(2) 4⟩ [4 2]
    = (⟨2 4⟩ - z ⟨3 4⟩) [4 2]
    = 0,
    quad
    z_(24) = frac(⟨2 4⟩, ⟨3 4⟩).
$

All hatted quantities below are evaluated at $z = z_(24)$.
Using the three-point QED amplitudes with the same conventions as above,
$
    cal(A)_4
    &= cal(A)_L (z_(24))
        frac(1, P_(24)^2)
        cal(A)_R (z_(24)) \
    &= -2 e^2
        frac(⟨1 3⟩^2, ⟨1 hat(P)⟩)
        frac(1, ⟨2 4⟩ [4 2])
        frac([2 4]^2, [hat(P) 2]) \
    &= 2 e^2
        frac(
            ⟨1 3⟩^2 [2 4],
            ⟨2 4⟩ ⟨1|hat(P)|2]
        ).
$
Here $P_(24)^2$ is the unshifted propagator denominator in the
BCFW formula. Since $hat(P)$ is on shell,
$
    ⟨1 hat(P)⟩ [hat(P) 2]
    = ⟨1|hat(P)|2].
$
Moreover, using $|hat(2)] = |2]$,
$
    ⟨1|hat(P)|2]
    &= ⟨1|(hat(p)_2 + p_4)|2] \
    &= ⟨1 hat(2)⟩ [hat(2) 2] + ⟨1 4⟩ [4 2] \
    &= ⟨1 4⟩ [4 2].
$
Therefore, using $[2 4] = -[4 2]$,
$
    cal(A)_4(f_1^-, overline(f)_2^+, gamma_3^-, gamma_4^+)
    = -2 e^2 frac(⟨1 3⟩^2, ⟨1 4⟩ ⟨2 4⟩).
$

=== Adding color: the Lie algebra from on-shell consistency

The fact that different choice of shift give the same result in fact heavily constrain the interaction structure of the theory.
Let a generic fermion-fermion-vector three-point amplitude be the following, which have some color structure (the index is now generic):
$
    cal(A)_3(f_i^-, overline(f)_j^+, g_A^-)
    = tensor(T, +A, -i, -j) frac(⟨1 3⟩^2, ⟨1 2⟩).
$
Computing the colored Compton amplitude from the two fermion-exchange
channels gives

$
    cal(A)_4
    = frac(⟨1 3⟩^2, ⟨1 2⟩⟨3 4⟩)
    ( tensor(T, +A, -i, -k) tensor(T, +B, -k, -j)
        frac(⟨2 3⟩, ⟨2 4⟩)
        - tensor(T, +B, -i, -k) tensor(T, +A, -k, -j)
        frac(⟨1 3⟩, ⟨1 4⟩) ).
$

With another shift, one also exposes the gauge-boson exchange channel:

$
    cal(A)_4
    = frac(⟨1 3⟩^2, ⟨2 4⟩⟨4 1⟩)
    tensor(T, +A, -i, -k) tensor(T, +B, -k, -j)
    - f_(A B C) tensor(T, +C, -i, -j)
    frac(
        ⟨1 3⟩^3,
        ⟨1 2⟩⟨3 4⟩⟨4 1⟩
    ).
$
The second term comes from we admit a three-gauge-boson vertex with a cubic coupling $f_(A B C)$, which is totally antisymmetric in its indices. This structure is quite general to admit.

Requiring both constructions to agree forces the couplings to close
under a Lie algebra. With Hermitian generators,

$
    tensor(T, +A, -i, -k) tensor(T, +B, -k, -j)
    - tensor(T, +B, -i, -k) tensor(T, +A, -k, -j)
    = i f^(A B C) tensor(T, +C, -i, -j),
$

or equivalently

$
    [T^A,T^B] = i f^(A B C) T^C.
$

If the factor $i$ is absorbed into the definition of the cubic
coupling, the same relation is written without the explicit $i$. Thus
locality, factorization, and shift independence already imply the
Lie-algebra structure of the gauge couplings.

== Vanishing sectors, MHV amplitudes, and Parke-Taylor

=== Helicity selection and color ordering

At tree level, pure Yang-Mills amplitudes with all equal helicities
vanish. The same is true when only one gluon has the opposite
helicity:

$
    A_n (1^-,2^-,dots,n^-) = 0,
    quad
    A_n (1^+,2^-,dots,n^-) = 0.
$

Parity gives the corresponding all-plus and one-minus statements.
These results follow inductively from BCFW recursion because every
possible factorization contains a vanishing lower-point amplitude.

The first nonzero generic tree amplitudes have two negative-helicity
gluons and are called MHV amplitudes:

$
    A_n(1^-,2^-,3^+,dots,n^+).
$

The full Yang-Mills amplitude can be decomposed into color-ordered
partial amplitudes,

$
    cal(A)_n (1^(a_1),dots,n^(a_n))
    = g^(n-2)
    sum_(sigma in S_n/Z_n)
    A_n (sigma(1),dots,sigma(n))
    "tr"(
        T^(a_(sigma(1))) dots T^(a_(sigma(n)))
    ).
$

The partial amplitude $A_n$ is associated with a fixed cyclic
ordering. Its physical poles occur only when adjacent ordered momenta
become collinear or when sums of cyclically adjacent momenta go on
shell.




=== Four-point MHV amplitude and the n-point formula

For the ordering $(1,2,3,4)$, BCFW recursion gives, in the overall
sign convention of the handwritten notes,

$
    A_4(1^-,2^-,3^+,4^+)
    = -g^2
    frac(
        ⟨1 2⟩^4,
        ⟨1 2⟩⟨2 3⟩⟨3 4⟩⟨4 1⟩
    ).
$

The denominator displays poles only for adjacent particles in the
color ordering, while the numerator is fixed by little-group scaling.
Suppressing the overall coupling and convention-dependent phase
suggests the $n$-point ansatz

$
    A_n(1^-,2^-,3^+,dots,n^+)
    = frac(
        ⟨1 2⟩^4,
        ⟨1 2⟩⟨2 3⟩ dots ⟨n-1,n⟩⟨n 1⟩
    ).
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

Substituting the induction hypothesis for the left subamplitude and
the appropriate three-point amplitude on the right yields

$
    A_n(1^-,2^-,3^+,dots,n^+)
    = frac(
        ⟨1 2⟩^4,
        ⟨1 2⟩⟨2 3⟩ dots ⟨n-1,n⟩⟨n 1⟩
    ).
$

More generally, if the two negative-helicity legs are $r$ and $s$,

$
    A_n(1^+,dots,r^-,dots,s^-,dots,n^+)
    = frac(
        ⟨r s⟩^4,
        product_(a=1)^n ⟨a,a+1⟩
    ),
    quad
    n+1 equiv 1.
$

This is the Parke-Taylor formula for color-ordered tree-level gluon
amplitudes.

Amplitudes with three negative helicities are called NMHV; more
generally, amplitudes with $k+2$ negative-helicity gluons are
$"N"^k "MHV"$. BCFW recursion expresses each sector in terms of
lower-point amplitudes. In QCD this classification is fundamentally a
tree-level organization; loop amplitudes have a richer structure.
