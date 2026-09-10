#import "../env/lib.typ": *

= Cosmological Perturbation Theory I

The universe is not actually homogeneous, yet have some
inhomogeneities. We now investigate this. We try to do this in the
linearised theory, which assume:
$
    (delta rho )/rho << 1
$
On small scales this is indeed untrue, but on large scales this is
still a good approximation. Notice that the inhomogeneities of the CMB
is of:
$
    (delta rho )/rho ~ 10^(-5)
$
which is small enough for us to do the linearised theory.


== Jeans Instability and Newtonian Cosmology

=== Fluid with Gravity

We first try to understand some of the physics just using the
Newtonian gravity. We consider a non-relativistic fluid with density
$rho$ with gravity turned on.

- *Gravity Field* the gravity potential is given by the Newton's law
    of gravity:
$
    Delta phi = 4 pi G rho,
$
- *Fluid Equations* a fluid is described by a function $p = p(rho)$
    and the fluid equations are given by:
$
    (diff rho )/(diff t) + nabla dot (rho v) = 0, \
    (diff v)/(diff t) + (v dot nabla) v = - (1 / rho) nabla p - nabla phi
$
The first is the continuity equation, which describes the conservation
of mass, and the second is the Euler equation, which is the equation
of motion for the fluid.

One can derive the Euler equation directly from Newton's Law, the LHS
is the acceleration of a fluid element, and the RHS is the force, both
pressure and the gravity force.

=== Background Perturbation

Now we want to take an ansatz of linear perturbation on a homogeneous
background, we write:
$
    rho = rho_0 + delta rho, quad p = p_0 + delta p, \
    phi = phi_0 + delta phi, quad v = v_0 + delta v
$
notice that the 0 part is only time dependent which is homogeneous,
and the delta part is spacetime dependent.

- Now if we assume the universe is static, then we have:
$
    H = 0, v_0 = 0, rho_0 = "const", quad arrow.r.double quad nabla phi_0 =0 quad "given by last fluid equation"
$
Yet however, we can see this not a solution to the EoM, nevertheless,
we can just do this. Now let's perturb the EoM and keep everything to
the linear order, we have:
$
    & Delta delta phi = 4 pi G delta rho\
    & (diff delta rho )/(diff t) + rho_0 nabla dot delta v = 0, \
    & (diff delta v)/(diff t) = - (1 / rho_0) nabla delta p - nabla delta phi,
$
we can use the EOS $p(rho)$ to eliminate $delta p$, and we have:
$
    delta p = v_s^2 delta rho, quad v_s^2 = (diff p)/(diff rho) |_(rho_0)
$
where $v_s$ is the speed of sound in the fluid. Now we take a time
derivative of the second equation and a gradient of the third
equation, we combine them together and we have:
$
    (diff^2 delta rho )/(diff t^2) - v_s^2 Delta delta rho = 4 pi G rho_0 delta rho
$<eq:eomofrhoinhomogeneous>

=== Solution of the Perturbation
Now we try to find a solution to @eq:eomofrhoinhomogeneous. The
standard solution is to take a Fourier transform, we write:
$
    rho(x, t) tilde e^(i k dot x - i omega t)
$
Taking this ansatz into the EoM, we have:
$
    omega^2 = v_s^2 k^2 - 4 pi G rho_0
$
Now we focus on the time dependence of the solution. If we have:
$
    k< k_J = sqrt(frac(4 pi G rho_0, v_s^2))
$
Then the solution will be growing exponentially, which is called the
*Jeans instability*. The critical scale or the critical wavelength is
called the *Jeans length*:
$
    lambda_J = frac(2 pi, k_J) = sqrt(frac(pi v_s^2, G rho_0))
$

== General Picture and Cosmology with Conformal Time

Now we turn into a more realistic calculation using the general
relativity. Here is a big picture of how we do the calculation:

- We used the Linearised gravity, but not on the Minkowski background,
    but on the FRW background. And work mostly in Fourier space.

- Distinguish modes inside and outside the cosmological horizon.

- Remember that the only perturbation matters when it doesn't decay
    with time.

Here is a general picture of the inhomogeneities in the universe:

- Before recombination, the perturbations are mostly oscillations and
    can be seen in the CMB picture.

- After recombination, the purturbations are mostly growing modes and
    can be seen in the large scale structure picture.

=== Friedmann Equation and Energy Conservation

We now review the Friedmann equation, spacial component of EFE and the
energy conservation equation. We focus on the case of flat spacial
curvature and no cosmological constant. The FWR metric is given by:
$
    d s^2 = a^2(eta) (- d eta^2 + d x^i d x^i)
$
Here we use the conformal time $eta$ instead of the coordinate time
$t$, which is related by $a(eta) d eta = d t$. And we write the
derivative with respect to the conformal time as a prime,
$a(eta)^prime$ and $dot(a)(eta)$ as derivative with respect to the
coordinate time.
$
    H = (dot(a))/(a) = (a^prime)/(a^2)
$
The EoM is given by with $Lambda = 0$and $k = 0$:

- *Friedmann Equation*:
$
    a^(prime 2)/a^4 = (8 pi G)/3 rho
$<eq:klambda0friedmann>

- *Spatial Component of EFE*:
$
    2 a^(prime prime)/a^3 - (a^prime zwj^2)/a^4 = - 8 pi G p
$<eq:klambda0spatialefe>

- *Energy Conservation*:
$
    rho^prime + 3 (a^prime)/a (rho + p) = 0
$<eq:klambda0energyconservation>
Here we review the solutions with different EOS.

- For Radiation Dominant Universe:
$
    a(eta) = "const" times eta ,quad eta tilde t^(1/2)
$
- For Matter Dominant Universe:
$
    a(eta) = "const" times eta^2 ,quad eta tilde t^(1/3)
$
- For Dark Energy Dominant Universe ($Lambda$ dominant):
$
    a(eta) = - (1)/(H eta) = e^(H t), quad eta = - e^(-H t)/H
$
@sec:generalmatter and @sec:cosmologicalconstant have a thorough
discussion of these calculations.


=== Conformal Time of Epochs

We want to calculate the conformal time at different epochs, we mainly
care about recombination, matter-radiation equality and the present
time. Remember the EoM of general matter is given by
@eq:friedmannrewrite:
$
    H = H_0 sqrt(Omega_("rad") (a_0/a)^4 + Omega_M (a_0/a)^4 + Omega_Lambda)
$
or if we used the redshift $z$ as preferred time variable, we have:
$
    z = (a_0)/(a) - 1, quad a = (a_0)/(1 + z)
$
Then we notice that through measurement and other calculations, we
have the following values for the parameters:
$
    Omega_("DM") = 0.22, quad Omega_("B") = 0.05,quad Omega_Lambda = 0.73, quad Omega_("rad") = 10^(-5), quad |Omega_("curv")|<0.01\
    Omega_M = Omega_("DM") + Omega_("B") = 0.27
$
This is shown that the spacial curvature is very small and we can just
assume the space is flat. We also know that the matter-radiation
equality and recombination happens at
$
    z_("eq") = 3400, quad z_("rec") = 1100
$
a reminder from @eq:recombinationredshift. Now we can calculate the
conformal time at these epochs, we can rewrite the EoM with redshift
as:
$
    eta = integral_(z)^(infinity) (d z^prime)/(a_0 H_0 sqrt(Omega_("rad") (1 + z^prime)^4 + Omega_M (1 + z^prime)^3 + Omega_Lambda))
$
This integral can be calculated numerically, and we have:
$
    eta_0/eta_("rec") = 51, quad eta_0/eta_("eq") = 1.2 times 10^2, quad eta_("rec")/eta_("eq") = 2.4
$
These are some important numbers for the conformal time at different
epochs.

== Perturbation of GR

=== Convention for the Metric

Now let's try to consider the perturbation of the metric on a FRS
background. We now take a $(-,+,+,+)$ convention for the metric
signature. Then define:
$
    d s^2 = a^2(eta) gamma_(mu nu) d x^mu d x^nu
$
and here:
$
    gamma_(mu nu) = eta_(mu nu) - h_(mu nu)
$
#remark([by convention, we have the minus sign in front of
    $h_(mu nu)$])
Then we take care of raising and lowering indices of the linearised
metric:
- For $h_(mu nu)$ we raise and lower with $eta_(mu nu)$, which is the
    Minkowski metric:
$
    tensor(h, +mu, -nu) = eta^(mu alpha) h_(alpha nu), quad h^(mu nu) = eta^(mu alpha) eta^(nu beta) h_(alpha beta)
$
- For $gamma_(mu nu)$ we define the inverse:
$
    gamma^(mu nu) = eta^(mu nu) + h^(mu nu)
$
- For the full metric $g_(mu nu)$ we similarly define the inverse:
$
    g^(mu nu) = a^(-2) gamma^(mu nu) = a^(-2) (eta^(mu nu) + h^(mu nu))
$
Then we can consider the lineaized EFE, we have:
#theorem[Linearized EFE and Energy Conservation][
    $
        delta G_(mu nu) = 8 pi G delta T_(mu nu) quad delta nabla_mu tensor(T, +mu, -nu) = 0
    $
]

=== Gauge Fixing

To control more of the theory, we have to do a gauge fixing. We only
consider small gauge transformation, which is given by:
$
    x^mu arrow.r.double x' = x^mu + xi^mu \
$
The metric transforms as:
$
    & g^(mu nu) arrow.r.double g'^(mu nu) tilde g^(mu nu) + nabla^mu xi^nu + nabla^nu xi^mu \
    & h^(mu nu) arrow.r.double h'^(mu nu) tilde h^(mu nu) + partial^mu xi^nu + partial^nu xi^mu + 2 (diff_lambda a)/(a) xi^lambda eta^(mu nu)
$
#YL([There may be mistakes in above equations, yet its not important
    for following discussions.])
Now we have to choose a gauge to fix the 4 DoF given by $xi^mu$. Now
we only fix three first:
$
    h_(0 i) = 0
$

=== Energy Momentum Tensor

Now we have to consider the energy momentum tensor, we take a perfect
fluid as a model, which is good in many cases. The energy momentum
tensor is given by:
$
    tensor(T, +mu, -nu) = (rho + p) u^mu u_nu + p delta^mu_nu
$
#note([
    Notice that here we use the $(-,+,+,+)$ convention. Thus, the EM
    tensor is like this.
])
Now we take the purturbation of the energy momentum tensor, we need to
take the purturbation of 3 stuffs:
$
    & rho = rho_0(eta) + delta rho \
    & p = p_0(eta) + delta p \
    & u^mu = overline(u)^mu + delta u^mu
$
Notice that the 4-velocity is not independent yet is constrained by
the normalization condition:
$
    g_(mu nu) u^mu u^nu = -1
$
We take an ansatz of the 4-velocity as:
$
    overline(u)^mu = (1/a, 0, 0, 0), quad u^mu = (1/a) (1 +delta u^0, v^i)
$
Thus, from the normalization condition, we have:
$
    delta u^0 = - 1/2 h_(00), quad &u^0 = (1/a) (1 - 1/2 h_(00)) ,quad u_0 = - a (1 + 1/2 h_(00))\
    &u^i = (1/a) v^i, quad u_i = a v^i = a v_i
$
#remark([here we define $v_i = delta_(i j) v^j$])
This result is dependent on the gauge choice of $h_(0 i) = 0$. We plug
this in the energy momentum tensor, we have:
$
    & delta tensor(T, +0, -0) = - delta rho \
    & delta tensor(T, +0, -i) = (rho_0 + p_0) v_i \
    & delta tensor(T, +i, -j) = delta p delta_(i j)
$
The energy conservation equation is given by:
$
    delta rho' + 3 ( a' ) / ( a ) ( delta rho + delta p ) + ( rho + p ) ( diff_( i ) v_( i ) - ( 1 ) / ( 2 ) h' ) & = 0 \ diff_( i ) delta p + ( rho + p ) ( 4 ( a' ) / ( a ) v_( i ) + ( 1 ) / ( 2 ) diff_( i ) h_( 00 ) ) + [ v_( i ) ( rho + p ) ]' & = 0,
$
where $h = h_(i i)$ is the trace of the spatial part of the metric
perturbation.

#YL([I haven't checked this equation personally, yet following we will
    have simpler ones, this is just for completeness.])

