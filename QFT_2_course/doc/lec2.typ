#import "../env/lib.typ": *

= Lecture 2: Classical U(1) Gauge Theory

== Classical Vector Field with U(1) Gauge Symmetry


=== Lagrangian of U(1) Gauge Theory

We want to construct a theory of vector fields, but more than that we
require the theory to have a U(1) gauge symmetry, which means that:
$
    A_mu(x) -> A_mu(x) - partial_mu alpha(x)
$
is a local symmetry of the theory for any function $alpha(x)$. We can
show that the only Lagrangian that is invariant under this gauge
symmetry is:
#theorem[Lagrangian of U(1) Gauge Theory][
    The Lagrangian of a U(1) gauge theory is given by:
    $
        cal(L) = -1/4 F_(mu nu) F^(mu nu)
    $
    where $F_(mu nu) = partial_mu A_nu - partial_nu A_mu$ is the field
    strength tensor.
]

=== DoF Counting

We now count the degree of freedom of the theory. Naively, we can see
$A_mu$ is a real 4-vector, which has 4 DoF. However, we have a gauge
symmetry, which means that we can use the gauge symmetry to fix one of
the DoF. Thus, we have 3 DoF left.

This can also be seen if we view the field strength tensor $F_(mu nu)$
as the fundamental DoF of the theory. We can see that $F_(mu nu)$ is
an antisymmetric 2-tensor, which has 6 independent components.
However, we have the Bianchi identity:
$
    epsilon^(mu nu rho sigma) partial_nu F_(rho sigma) = 0
$
which gives finally 3 independent DoF for the field strength tensor,
which is consistent with the DoF counting from the gauge field $A_mu$.


=== Interaction with Other Fields

We now consider all possible interactions between the gauge field
$A_mu$ and other fields.

- Choice 1: $F_(mu nu)$ coupling, frist we can consider following
    interaction:
$
    F_(mu nu) F^(mu nu) phi, quad F_(mu nu) macron(psi) sigma^(mu nu) psi
$
However, these interaction have an explicit $F_(mu nu)$, one can prove
that these are non-renormalizable.

- Choice 2: $A_mu$ coupling. Yet we may face the problem that $A_mu$
    is not gauge invariant, thus we need to define a gauge
    transformation for the other fields to make the interaction gauge
    invariant. There are many ways to do this:

    - Dirac Field: we can define the gauge transformation for a Dirac
        field $psi$ as:$ psi(x) -> e^(i q alpha(x)) psi(x) $
    - Complex Scalar Field: we can define the gauge transformation for
        a
    complex scalar field $phi$ as:
    $ phi(x) -> e^(i q alpha(x)) phi(x) $
    - Real Scalar Field: we can define the gauge transformation for a
        real scalar field $phi$ as:
        $ phi(x) -> phi(x) + M alpha(x) $
With these gauge transformation, we can construct the following gauge
invariant interaction with a tool called covariant derivative:
#definition[Covariant Derivative][
    The covariant derivative is defined as a derivative transformed
    under the gauge transformation as:
    $
        D_mu arrow.r U(x) D_mu U(x)^(-1)
    $
    for U(1) gauge theor, we have $U(x) = e^(i q alpha(x))$, thus we
    have:
    $
        D_mu = partial_mu + i q A_mu
    $
]
Thus we can couple by using the covariant derivative, for example:
$
    macron(psi) gamma^mu D_mu psi, quad (D_mu phi)^* D^mu phi
$

=== Coupling to U(1) Conserved Current

We then can see an interesting fact if we single out the interaction
term, we can see that for the Dirac field, we have:
$
    cal(L)_"int" = - q macron(psi) gamma^mu A_mu psi
$
and for the complex scalar field, we have:
$
    cal(L)_"int" = - i q (phi^* partial^mu phi - phi partial^mu phi^*) A_mu + q^2 A_mu A^mu phi^* phi
$
We may see a fact that *the U(1) gauge field couple to the global U(1)
current*. This is not a coincidence. In fact, in we want to lift a
global U(1) symmetry to a local U(1) symmetry, we know that the
viration of the matter field Lagrangian under the global U(1)
transformation is given by:
$
    delta cal(L)_m = J_N^mu partial_mu alpha(x)
$
Then if we want the full Lagrangian with the gauge field to be
invariant under the local U(1) transformation, we need to add a term
to cancel the variation. We assume that the full Lagrangian is given
by:
$
    cal(L) = cal(L)_m + cal(L)_"gauge" + A^mu J_mu
$
Then:
$
    delta cal(L) = J_N^mu partial_mu alpha(x) + A^mu delta J_mu + delta A^mu J_mu = 0
$
we know that $delta A^mu = - partial^mu alpha(x)$, thus if
$delta J_mu = 0$ under the gauge transformation (Dirac Field Case), we can see that the
symmetry condition givs us:
$
    J_N^mu = J^mu
$
Thus we can interpret the global U(1) symmetry conserved current as *electric current*. 

#remark[
  Note that $delta I_mu = 0 $ is only true for dirac field. For scalar field, the current is not invariant under the gauge transformation, thus we have $delta J_mu eq.not 0$, which cause to the extra term.
]


== U(1) Gauge Field EoM (aka Maxwell's Equation) 


