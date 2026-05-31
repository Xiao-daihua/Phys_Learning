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
    angle.l psi^(( a b ))_( i ) ( 0 ) psi^(( c d ))_( j ) ( x ) angle.r = delta_( i j ) delta_( a d ) delta_( b c ) x^( - 2 Delta_i ) alpha_i^((a b)), quad x > 0
$#footnote[The notaion here is different from Lewellen's paper, I
    guess he had a typo in the original paper.]
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
== Sewing Constraints

=== Cardy's Condition

#figure(
    image("../assets/cardy.png", width: 45%),
    caption: [Cardy's condition of possible boundary conditions. ],
) <fig-cardy>

The first constraint is the Cardy's condition of possible boundary
conditions: #theorem[Cardy's Condition][
    $
        Z_( a b ) ( tau ) = T r_( a b ) e^( 2 pi i tau ( L_( 0 ) - c slash 24 ) ) = sum N_( i )^( a b ) chi_( i ) ( tau )\
        = angle.l a|e^( - i pi slash tau ( L_( 0 ) + overline(L)_( 0 ) - c slash 12 ) )|b angle.r.
    $
]<thm:cardy>
Here $ket(a), ket(b)$ are boundary states corresponding to the
boundary conditions $a, b$.

==== Ishibashi State

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

==== Solution of Cardy's Condition
<sec:solutionCardy>

A series of solution for the Cardy's condition is given by the
following formula for *Diagonal RCFT*, this is discussed in
@cardyBoundaryConditionsFusion1989:
$
    ket(a) = sum_i ( S_(a i) / sqrt(S_(0 i)) ) ket(i)
$<eq:solutionCardy>
Thus the boundary conditions here are labeled by the bulk primary
field. This lead to a idea of:

- For a boundary field $psi_i^((a b))$ to exist, it need to obey the
    bulk fusion rule: $N^i_(a b) eq.not 0$ #footnote[I may take this
        statement more as a conjecture of a possible structure. Of
        course, we can generalized this statements suitably by
        claiming that the boundary changing operator spectrum is given
        by the spectrum of Boundary CFT on a strip. However, I still
        don't understand how to fully characterize the boundary
        changing operator field content, and physically why it works.]

This is an observation for diagonal RCFT, however, for general CFT
this may not work and need to be modified.

==== 0 point function and Bulk Boundary OPE

The solution @eq:solutionCardy also give us a nontrivial 0 point
function and the bulk boundary OPE coeffcient for identity boundary
fields. These statements are discussed in
@cardyBulkBoundaryOperators1991. Here we just list a consistent
result:

- *0 point function*
$
    angle.l I angle.r_a = alpha^a = S_(a 0) / sqrt(S_(0 0))
$<eq:0pointfunction>

- *Bulk Boundary OPE Coefficient* with boundary identity field:
$
    B_(i)^(( a ) 0) = S_(a i) / S_(a 0) ( S_(0 0) / S_(0 i) )^( 1 slash 2 )
$<eq:bulkboundaryopei>


=== Crossing Symmetry

#figure(
    image("../assets/crossingboundary.png", width: 45%),
    caption: [Crossing Symmetry of 4 point function with boundary.],
) <fig-crossingboundary>
==== Sewing Analysis

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

==== Boundary Crossing Symmetry

Same as the bulk crossing symmetry, the boundary crossing symmetry
also give us a constraint on the structure constant: #theorem[Boundary
    Crossing Symmetry][
    $
        sum_k C_(1 2)^((a b c) k) C_(3 4)^((c d a) k) alpha_k^((a c)) F_(k p) mat(1, 4; 2, 3) = C_(4 1)^((d a b) p) C_(2 3)^((b c d) p) alpha_p^((b d))
    $
]<thm:boundarycrossing>



=== Boundary-Boundary-Bulk Sewing Constraint

Consider a Bulk one point and boundary two point configuration.

#figure(
    image("../assets/bbulksew.png", width: 65%),
    caption: [Bulk-Boundary-Boundary Sewing Constraint.],
) <fig-bbulksew>

==== Sewing Analysis

The fields are labeled by:
$
    phi.alt_i (z, overline(z)) quad psi^(( a b ))_( 1 ) ( x_( 1 ) ) quad psi^(( b a ))_( 2 ) ( x_( 2 ) ) quad x_2 > x_1 > 0
$
However, the difference of the LHS and RHS is that:

- LHS we have
    $ x_1< "Re"(z) < x_2 $
- RHS we have
    $ "Re"(z)< x_1 < x_2 $
The two configuration can be equal in the sense of analytical
continuing the LHS picture form $"Re"(z) > x_1$ to $"Re"(z) < x_1$.


On both side we can write the correlation function in terms of the
conformal blocks with the corss ratio:
$
    eta equiv ( ( z - overline(z) ) ( x_( 1 ) - x_( 2 ) ) ) / ( ( z - x_( 1 ) ) ( overline(z) - x_( 2 ) ) ).
$
As usual, the conformal blocks is multi-valued and needs a branch cut.
We choose the branch cut of:
$
    cal(F)(i overline(i), 1 2; k) (eta)
$
at from $- infinity$ to 1 to ensure that the correlation function is
single valued as $x_2 > x_1$ and $z$ is in the upper half plane.

However, as we assume that $phi.alt$ field approaches the boundary,
the two cases beahaves differently:

- LHS: as $phi.alt$ approaches the boundary, the cross ratio $eta$
    approaches 0 from the UHP.

- RHS: as $phi.alt$ approaches the boundary, the cross ratio $eta$
    approaches 0 from the LHP.

This discussion is just of a rough picture. For detailed analysis see
@lewellenSewingConstraintsConformal1992.

==== Boundary-Boundary-Bulk Sewing Constraint

Now we analytical continue the LHS picture from $eta$ approaches 0
from UHP to $eta$ approaches 0 from LHP. We do this by turning
clockwise around the branch cut.

#figure(
    image("../assets/analytic cont.png", width: 40%),
    caption: [Analytical continuation of the Bulk-Boundary-Boundary
        configuration.
    ],
) <fig-analytic-cont>
Under this continuation, in fact we can express in terms of the
duality matrixand give out a sewing constraint:

#theorem[Boundary-Boundary-Bulk Sewing Constraint][
    $
        &sum_p sum_s B_i^((b) p) C_(2 1)^((b a b)p) alpha_p^((b b)) F_(p s)mat(i, 2; overline(i), 1) F_(s q)mat(i, overline(i); 2, 1) e^( i pi ( Delta_( 1 ) + Delta_( 2 ) + 2 Delta_( i ) - 2 Delta_( s ) - 2 Delta_( s ) + Delta_( q ) ) )\
        &= B_i^((a) q) C_(1 2)^((a b a) q) alpha_q^((a a))
    $
]<thm:bbulksew>


=== Bulk-Bulk Sewing Constraint

#figure(
    image("../assets/bbsewi.png", width: 55%),
    caption: [Bulk-Bulk Sewing Constraint.],
) <fig-bbsewi>


==== Sewing Analysis

This swing constraint is about 2 bulk fields configuration. There are
two different ways to fuse the two bulk fields:

+ Fuse two bulk field into 1 and then calculate the 1 point function
    of the bulk field.

+ Fuse each bulk field into boundary field and then calculate the 2
    point function of the boundary field.


==== Bulk-Bulk Sewing Constraint

This gives out a constraint on the bulk-boundary OPE coefficient,
given bulk OPE and boundary 2 point function:

#theorem[Bulk-Bulk Sewing Constraint][
    $
        B_i^((a) q) B_j^((a) q) alpha_q^((a a)) = sum_m tensor(C, -j, -i, +m) B_m^((a) I) alpha^a F_(m q)mat(i, overline(i); j, overline(j)) e^( ( i pi slash 2 ) [ Delta_( j ) - overline(Delta)_( j ) + overline(Delta)_( i ) - Delta_( i ) ] )
    $
]<thm:bbulksew>


=== Bulk-Bulk-Boundary Sewing Constraint

The final one is the bulk-bulk-boundary sewing constraint:

#figure(
    image("../assets/bbboundary.png", width: 55%),
    caption: [Bulk-Bulk-Boundary Sewing Constraint.],
) <fig-bbboundary>


This constraint need a more detailed analysis of analytical structure
and constains analysis of 5 point conformal block, thus we won't give
the detailed analysis here.

The result is:
#theorem[Bulk-Bulk-Boundary Sewing Constraint][
    $
        & C_(t q)^((a a a) psi ) B_1^((a) t) B_2^((a) q) \
        = & sum_p sum_r tensor(C, -2, -1, +p) B_p^((a) psi) F_(p r)mat(1, psi; 2, overline(p)) F_(overline(p),q)mat(2, overline(2); r, overline(1)) F_(r t) mat(1, overline(1); psi, q)\
        times & e^((i pi/2)(Delta_psi + Delta_1 + overline(Delta)_1 + Delta_2 - overline(Delta)_2 - Delta_p + overline(Delta)_p - 2 Delta_r + Delta_q - Delta_t))
    $
]

#pagebreak()
== Summary
Here I list out all sewing constraints with boundary presented:

- Boundary Crossing Symmetry:
$
    sum_k C_(1 2)^((a b c) k) C_(3 4)^((c d a) k) alpha_k^((a c)) F_(k p) mat(1, 4; 2, 3) = C_(4 1)^((d a b) p) C_(2 3)^((b c d) p) alpha_p^((b d))
$
- Boundary-Boundary-Bulk Sewing Constraint:
$
    &sum_p sum_s B_i^((b) p) C_(2 1)^((b a b)p) alpha_p^((b b)) F_(p s)mat(i, 2; overline(i), 1) F_(s q)mat(i, overline(i); 2, 1) e^( i pi ( Delta_( 1 ) + Delta_( 2 ) + 2 Delta_( i ) - 2 Delta_( s ) - 2 Delta_( s ) + Delta_( q ) ) )\
    &= B_i^((a) q) C_(1 2)^((a b a) q) alpha_q^((a a))
$
- Bulk-Bulk Sewing Constraint:
$
    B_i^((a) q) B_j^((a) q) alpha_q^((a a)) = sum_m tensor(C, -j, -i, +m) B_m^((a) I) alpha^a F_(m q)mat(i, overline(i); j, overline(j)) e^( ( i pi slash 2 ) [ Delta_( j ) - overline(Delta)_( j ) + overline(Delta)_( i ) - Delta_( i ) ] )
$
- Bulk-Bulk-Boundary Sewing Constraint:
$
    & C_(t q)^((a a a) psi ) B_1^((a) t) B_2^((a) q) \
    = & sum_p sum_r tensor(C, -2, -1, +p) B_p^((a) psi) F_(p r)mat(1, psi; 2, overline(p)) F_(overline(p),q)mat(2, overline(2); r, overline(1)) F_(r t) mat(1, overline(1); psi, q)\
    times & e^((i pi/2)(Delta_psi + Delta_1 + overline(Delta)_1 + Delta_2 - overline(Delta)_2 - Delta_p + overline(Delta)_p - 2 Delta_r + Delta_q - Delta_t))
$


