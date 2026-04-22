#import "../env/lib.typ": *

= Bulk Sewing Constraint

== Bulk Content


=== Data Convention

Here we set up the convention a Bulk CFT data. The correlation
function of a bulk CFT can be defined with the following data:

- *Lower Point Function* Convention:

$
    angle.l phi.alt_( i ) angle.r = 0, wide angle.l I angle.r = 1,\
    angle.l phi.alt_( i )(z,overline(z)) phi.alt_( j ) (0,0) angle.r = delta_( i j ) / ( z overline(z) )^( 2 Delta_i ),\
$
We take this convention of bulk 2 point function is always normalized.
Then we define the bulk OPE coefficient $tensor(C, -i, -j, +k)$ as:

- *Bulk Field OPE* Coefficient Convention:

$
    phi.alt_( i )(z,overline(z)) phi.alt_( j )(0,0) = sum_( k ) tensor(C, -i, -j, +k) phi.alt_( k ) z^( Delta_k - Delta_i - Delta_j ) overline(z)^( Delta_k - Delta_i - Delta_j ) + "Descendants"...
$
Then with this convention we can talk about the constraints these data
should satisfy due to the consistency of the CFT.


There are 2 Bulk Sewing Constraints for a CFT. The first one is the
crossing symmetry of the 4 point function. The second one is the
modular invariance of the torus partition function. Now let's talk
about the first one.

== Crossing Symmetry

=== 4 point function Decomposition

The 4 point function of a CFT can be written in the following way.

- First, the global Ward Identity tells us that the 4 point function
    can be written as some function of the cross ratio:
$
    angle.l phi.alt_( 1 ) ( z_( 1 ) ) phi.alt_( 3 ) ( z_( 2 ) ) phi.alt_( 3 ) ( z_( 3 ) ) phi.alt_( 4 ) ( z_( 4 ) ) angle.r = product_( i < j ) ( z_( i ) - z_( j ) )^( r - Delta_( i ) - Delta_( j ) ) ( overline(z)_( i ) - overline(z)_( j ) )^( overline(r) - overline(Delta)_( i ) - overline(Delta)_( j ) ) Y ( eta, overline(eta) ),
$
where
$
    r =1/3 ( sum_( i ) Delta_( i ) ) quad overline(r) =1/3 ( sum_( i ) overline(Delta)_( i ) )
$
and
$
    eta = (( z_( 1 ) - z_( 2 ) )( z_( 3 ) - z_( 4 ) )) /(( z_( 1 ) - z_( 3 ) )( z_( 2 ) - z_( 4 ) ))
$
is the cross ratio.

- Second, the OPE and Local Ward Identity gives us the following
    expressions of $Y(eta, overline(eta))$:
$
    Y ( eta, overline(eta) ) &= sum_( k ) tensor(C, -1, -2, +k) tensor(C, -3, -4, +k) cal(F)(12,34;k) ( eta ) overline(cal(F)) (12,34;k) ( overline(eta) ) \
    &= sum_( k ) tensor(C, -1, -4, +k) tensor(C, -2, -3, +k) cal(F)(14,23;k) ( 1 - eta ) overline(cal(F)) (14,23;k) ( 1 - overline(eta) ) \
    & = sum_( k ) tensor(C, -1, -3, +k) tensor(C, -2, -4, +k) cal(F)(13,24;k) ( 1/eta ) overline(cal(F)) (13,24;k) ( 1/ overline(eta) )
$
notice that:
$
    eta = (( z_( 1 ) - z_( 2 ) )( z_( 3 ) - z_( 4 ) )) /(( z_( 1 ) - z_( 3 ) )( z_( 2 ) - z_( 4 ) )) quad 1-eta = (( z_( 1 ) - z_( 4 ) )( z_( 2 ) - z_( 3 ) )) /(( z_( 1 ) - z_( 3 ) )( z_( 2 ) - z_( 4 ) )) quad 1/eta = (( z_( 1 ) - z_( 3 ) )( z_( 2 ) - z_( 4 ) )) /(( z_( 1 ) - z_( 2 ) )( z_( 3 ) - z_( 4 ) ))
$
which is the cross ratio of the 4 points in different channels.

=== Conformal Blocks

The special function above we use: $cal(F) (12,34;k) ( eta )$ is
called the conformal block. It is a special function determined by the
conformal symmetry. Here let's list out some basic properties of the
conformal block:

+ These functions are *Chiral* and only depends on Chiral data. Thus,
    they are multivalued.

+ 4 point Conformal Blocks on a plane are multivalued and have branch
    cuts. The cutting points are at $eta = 0, 1, infinity$. The
    conformal blocks are analytic on the complex plane with these
    cuts.

#remark([
    Indeed there are some subtleties about the convention, though we
    write $i,j,k,l$ in the convention, it in fact only depends on the
    chiral data of the double fold virasoro primary.
])
The most important fact of the conformal blocks is that they satisfy
some linear relations called duality relations. For 4 point blocks on
a plane, its famous for the duality relation called the *F-move*:
$
    cal(F) (i j, k l;p)(eta) = sum_q F_(p q) mat(i, l; j, k) cal(F)(i l, j k;q)(1 - eta)
$
here $F_(p q) mat(i, j; k, l)$ is called the F-matrix, which only
depends on the chiral data of the CFT. They satisfies some consistency
conditions which can eventually be determined analytically.


=== Crossing Symmetry

The crossing symmetry is the following statement:

- The 4 point function should be single valued and analytic on the
    whole complex plane. This means that the 3 different conformal
    blocks decomposition of the 4 point function should be the same
    function.

This statement can be written in a mathematical way as:
$
    &sum_p tensor(C, -1, -2, +p) tensor(C, -3, -4, +p) cal(F)(12,34;p) ( eta ) overline(cal(F)) (12,34;p) ( overline(eta) ) \
    =& sum_q tensor(C, -1, -4, +q) tensor(C, -2, -3, +q) cal(F)(14,23;q) ( 1 - eta ) overline(cal(F)) (14,23;q) ( 1 - overline(eta) )
$
if we plug in the F-move, we can get:
#theorem[Crossing Symmetry][
    $
        sum_p tensor(C, -1, -2, +p) tensor(C, -3, -4, +p) F_(p q) mat(1, 4; 2, 3) overline(F)_(p l) mat(1, 4; 2, 3)
        = tensor(C, -1, -4, +q) tensor(C, -2, -3, +q) delta_(q l)
    $
]
notice that the consistency condition of conformal blocks makes the
F-matrix satisfy the following normalization condition:
$
    sum_q F_(p q) mat(1, 2; 4, 3) overline(F)_(q l) mat(1, 4; 2, 3) = delta_(p l)
$
#remark([
    Notice that $overline(F)$ is the complex conjugate of $F$ . In
    some cases the F-matrix is real, then we can just write $F$
    instead of $overline(F)$.
])
Thus the crossing symmetry can be written in a more compact way as:
$
    tensor(C, -1, -2, +p) tensor(C, -3, -4, +p) F_(p r) mat(1, 4; 2, 3) = tensor(C, -1, -4, +r) tensor(C, -2, -3, +r)F_(r p) mat(1, 2; 4, 3)
$


== Modular Invariance

=== Modular S Invariance

Modular invariant is that the Torus partition function should be
invariant under modular transformation. Particularly, we care most
about the modular S transformation. The torus partition function
invariant under the modular S transformation means that the partition
function should satisfy the following condition:
$
    Z (tau) = Z (- 1/tau)
$
Torus partition function can be decomposed into characters:
$
    Z (tau) = sum_( i, j ) chi_p ( tau ) overline(chi)_p ( overline(tau) )
$
Thus modular S invariance means that the characters should satisfy the
following condition:
#theorem[Modular S Invariance][
    $
        sum_p chi_p (tau) overline(chi)_p ( overline(tau) ) = sum_p chi_p ( - 1/tau ) overline(chi)_p ( - 1/overline(tau) )
    $
]

=== Character S Transformation

Just as the 4 point blocks transform under the F move in different
channels. The CFT characters have following behavior:
$
    chi_i (tau) = sum_j S_(i j) chi_j ( - 1/tau )
$
where $S_(i j)$ is called the S-matrix, which only depends on the
chiral data of the CFT. In fact this follows from the fact that the
torus partition function can be modular invariant.
