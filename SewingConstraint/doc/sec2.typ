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

