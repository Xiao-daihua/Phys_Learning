#import "../env/lib.typ": *

= Boundary Sewing Constraint

Now we admit the CFT to have a boundary on the real axis. Now we to
restric the conformal symmetry to preserve the boundary, which lead to
the *conformal boundary condition*;
$
    T(z) = overline(T)(overline(z)) quad z = overline(z)
$
with this boundary condition, the theory here only have 1 fold of
Virasoro symmetry.

== Boundary Content

=== Theory Contents

With the boundary presented, we need more data to characterize the
CFT.

+ Boundary Conditions $a$

+ Boundary Operators $psi_i^((a b))$, here $i$ is the label of 1 fold
    Virasoro primary operator, and $a, b$ are the labels of the
    boundary conditions.

=== Data Convention

A full CFT with boundary on UHP can be characterized by the following
data:

- *Lower Point Function* Convention:
$
    angle.l psi^(( a b ))_( i ) angle.r = 0, wide angle.l I angle.r_a = alpha^a
$
Notice that here, with the boundary presented and with the bulk
convention fixed, we no longer can normalized the boundary 0 point
function freely.

- *Boundary 2 Point Function* Convention:
$
    angle.l psi^(( a b ))_( i ) ( 0 ) psi^(( c d ))_( j ) ( x ) angle.r = delta_( i j ) delta_( a d ) delta_( b c ) x^( - 2 Delta_i ) alpha_i^((a d)), quad x > 0
$
Indeed, we can choose to normalize the boundary field itself to make
the boundary 2 point function to be normalized. However, this won't be
a natural choice.

- *Boundary OPE* Coefficient Convention:
$
    psi^(( a b ))_( i ) ( 0 ) psi^(( b c ))_( j ) ( x ) = sum_k C_(i j)^((a b c) k) x^( Delta_k - Delta_i - Delta_j ) psi^(( a c ))_( k ) ( 0 ) + "descendants" ...
$

- *Bulk-Boundary OPE* Coefficient Convention:
$
    phi.alt_( i ) ( z, overline(z) ) = sum_k B_(i)^(( a ) k) ( 2 y )^( Delta_k - Delta_i - overline(Delta)_i) psi^(( a a ))_( k ) ( x ) + "descendants" ...
$
Here the bulk field only fuse to boundary field with the same boundary
condition. The factor 2 is from the folding trick.

=== Symmetry of OPE Coefficient

We can conformally map the UHP to a unit disk, then we can see that
the two point structure constant and the OPE coefficient should
satisfy the following symmetry:

- *Symmetry of 2 Point Structure Constant*, due to the fact of
    symmetry:
$
    alpha_i^((a b)) = alpha_i^((b a))
$
- *Symmetry of OPE Coefficient*, due to the fact of symmetry of 3
    point structural constant:
$
    C_(i j k)^((a b c)) = C_(j k i)^((b c a)) = C_(k i j)^((c a b))
$
we know that the OPE coefficients are related to the 3 point structure
constant by the following relation:
$
    C_(i j)^((a b c) k) alpha_k^((a c)) = C_(i j k)^((a b c))
$
Thus we have a symmetry of OPE coefficient:
$
    C_(i j)^((a b c) k) alpha_k^((a c)) = C_(j k)^((b c a) i) alpha_i^((b a)) = C_(k i)^((c a b) j) alpha_j^((c b))
$

== Cardy's Condition

#figure(
    image("../assets/cardy.png", width: 45%),
    caption: [Cardy's condition of possible boundary conditions. ],
) <fig-cardy>
=== Cardy's Condition

The first constraint is the Cardy's condition of possible boundary
conditions:
#theorem[Cardy's Condition][
    $
        Z_( a b ) ( tau ) = T r_( a b ) e^( 2 pi i tau ( L_( 0 ) - c slash 24 ) ) = sum N_( i )^( a b ) chi_( i ) ( tau )\
        = angle.l a|e^( - i pi slash tau ( L_( 0 ) + overline(L)_( 0 ) - c slash 12 ) )|b angle.r.
    $
]<thm:cardy>
Here $ket(a), ket(b)$ are boundary states corresponding to the
boundary conditions $a, b$.

=== Ishibashi State

On the Cylinder the conformal boundary condition can be written as:
$
    ( L_n - overline(L)_( - n ) ) ket(B) = 0
$
A solution to this equation is the Ishibashi state:
$
    ket(i) = sum_N |i,N angle.r times.o |overline(i),N angle.r
$
notice that the $i$ primary should be diagonal
$Delta_i = overline(Delta)_i$.

=== Solution of Cardy's Condition

A series of solution for the Cardy's condition is given by the
following formula for *Diagonal RCFT*, this is discussed in
@cardyBoundaryConditionsFusion1989:
$
    ket(a) = sum_i ( S_(a i) / sqrt(S_(0 i)) ) ket(i)
$<eq:solutionCardy>
Thus the boundary conditions here are labeled by the bulk primary
field. This lead to a idea of:

- For a boundary field $psi_i^((a b))$ toexist, it need to obey the
    bulk fusion rule: $N^i_(a b) eq.not 0$ #footnote[I may take this
        statement more as a conjecture of a possible structure.]

This is an observation for diagonal RCFT, however, for general CFT
this may not work and need to be modified.

=== 0 point function and Bulk Boundary OPE

The solution @eq:solutionCardy also give us a nontrivial 0 point
function and the bulk boundary OPE coeffcient for identity boundary
fields. These statements are discussed in
@cardyBulkBoundaryOperators1991. Here we just list a consistent
result:

- *0 point function*
$
    angle.l I angle.r_a = alpha^a = S_(a 0) / sqrt(S_(0 0))
$

- *Bulk Boundary OPE Coefficient* with boundary identity field:
$
    B_(i)^(( a ) 0) = S_(a i) / S_(a 0) ( S_(0 0) / S_(0 i) )^( 1 slash 2 )
$


== Crossing Symmetry

#figure(
    image("../assets/crossingboundary.png", width: 45%),
    caption: [Crossing Symmetry of 4 point function with boundary.],
) <fig-crossingboundary>
=== 4 point Function Decomposition

The boundary 4 point function can be written as:
$
    angle.l psi^(( a b ))_( 1 ) ( x_( 1 ) ) psi^(( b c ))_( 2 ) ( x_( 2 ) ) psi^(( c d ))_( 3 ) ( x_( 3 ) ) psi^(( d a ))_( 4 ) ( x_( 4 ) ) angle.r = product_( i < j ) ( x_( i ) - x_( j ) )^( r - Delta_( i ) - Delta_( j ) ) Y ( eta ),\
    x_4>x_3>x_2>x_1,
$
and the cross ratio is defined as:
$
    quad eta = (( x_( 1 ) - x_( 2 ) )( x_( 3 ) - x_( 4 ) )) /(( x_( 1 ) - x_( 3 ) )( x_( 2 ) - x_( 4 ) ))
$
Similarly for the bulk boundary 4 point function, we can also
decompose it into two different channels, the s channel and the t
channel:
$
    Y(eta) &= sum_k C_(1 2)^((a b c) k) C_(3 4)^((c d a) k) alpha_p^((a c)) cal(F) (1 2 ,3 4; k) ( eta )\
    &= sum_k C_(2 3)^((b c d) k) C_(4 1)^((d a b) k) alpha_k^((b d)) cal(F) (14 , 23; k) ( 1 - eta )
$
#remark[Multi Valuedness of Conformal Block][
    Notice that the conformal block here is multi-valued, and we need
    to specify the branch cut to make it single valued. The above
    function we chosse a branch cut for $eta$ from 0 to $infinity$ and
    1 to $infinity$. Thus the correlation function with
    $x_4 > x_3 > x_2 > x_1$ is single valued.
]

=== Boundary Crossing Symmetry

Same as the bulk crossing symmetry, the boundary crossing symmetry
also give us a constraint on the structure constant:
#theorem[Boundary Crossing Symmetry][
    $
        sum_k C_(1 2)^((a b c) k) C_(3 4)^((c d a) k) alpha_p^((a c)) F_(k p) mat(1, 4; 2, 3) = C_(4 1)^((d a b) p) C_(2 3)^((b c d) p) alpha_p^((b d))
    $
]<thm:boundarycrossing>


== Bulk and Boundary Sewing Constraint

Here we just list out some sewing constriant given in
@lewellenSewingConstraintsConformal1992. There are phases in the
constraint, mainly from the analytic structure of conformal blocks.

=== Boundary-Boundary-Bulk Sewing Constraint


=== Bulk-Bulk Sewing Constraint



=== Bulk-Bulk-Boundary Sewing Constraint



