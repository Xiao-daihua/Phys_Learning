#import "../env/lib.typ": *

= Example: Ising CFT

== Basic Data
This subsection we list out some basic datas of Ising CFT, within
convention of @lewellenSewingConstraintsConformal1992.

=== Field and Fusion Rule

The Ising CFT has 3 primary fields, which are the identity field $I$,
the spin field $sigma$ and the energy field $epsilon$. The fusion rule
of these fields are:
$
    I times I = I, quad I times sigma = sigma, quad I times epsilon = epsilon, \
    sigma times sigma = I + epsilon, quad sigma times epsilon = sigma, quad epsilon times epsilon = I
$
Thus the only nontrivial bulk 4 point functions are:
$
    angle.l sigma(z_1, overline(z)_1) sigma(z_2, overline(z)_2) sigma(z_3, overline(z)_3) sigma(z_4, overline(z)_4) angle.r, \
    angle.l epsilon(z_1, overline(z)_1) epsilon(z_2, overline(z)_2) epsilon(z_3, overline(z)_3) epsilon(z_4, overline(z)_4) angle.r\
    angle.l epsilon(z_1, overline(z)_1) epsilon(z_2, overline(z)_2) sigma(z_3, overline(z)_3) sigma(z_4, overline(z)_4) angle.r
$

=== F Matrix and S Matrix

The F Matrix of Ising CFT is given by:
$
    F_(0 0) mat(sigma, sigma; sigma, sigma) = 1 / sqrt(2), quad
    F_(0 epsilon) mat(sigma, sigma; sigma, sigma)= 1 / (2 sqrt(2)), quad
    F_(epsilon 0) mat(sigma, sigma; sigma, sigma) = sqrt(2), quad
    F_(epsilon epsilon) mat(sigma, sigma; sigma, sigma) = -1 / sqrt(2), \
    F_(0 sigma) mat(sigma, epsilon; sigma, epsilon)= 1/2,quad
    F_(sigma 0) mat(epsilon, epsilon; sigma, sigma) = 2, quad
    F_(sigma sigma) mat(epsilon, sigma; sigma, sigma) = -1, quad
    F_(0 0) mat(epsilon, epsilon; epsilon, epsilon) = 1,
$
The S Matrix of Ising CFT is given by:
$
    S = 1/2 mat(1, 1, sqrt(2); 1, 1, -sqrt(2); sqrt(2), -sqrt(2), 0)
$

== Bulk and Boundary Data

- *Bulk OPE*: Simply Solving @thm:crossing-symmetry for the 4 point
    function of Ising CFT:
$
    tensor(C, -sigma, -sigma, +I) = 1, quad
    tensor(C, -epsilon, -epsilon, +I) = 1, quad
    tensor(C, -sigma, -sigma, +epsilon) = 1/2,
$

- *Boundary Conditions* Solving the Cardy's condition @thm:cardy we
    can immediatly find three boundary conditions corresponding to the
    three primary fields:
$
    I tilde ket(+) quad epsilon tilde ket(-) quad sigma tilde ket(f)
$
the cardy states can be explicitly written out.

- *Boundary 0 Point* the result 

