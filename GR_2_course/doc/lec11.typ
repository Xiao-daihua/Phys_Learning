#import "../env/lib.typ": *

= Lecture 11: Cosmological Perturbation Theory II
Though working in linear perturbation theory, the EFE and Energy
conservation equations are still too complicated to solve, and we now
also have a residue gauge freedom to fix. Thus, to do perturbation
theory, we have to make some fuether more simplifying assumptions.

This can be done by doing mode expansions and helicity decomposition,
which will be the topic of next section.

== Fourier Transformation and Helicity Decomposition

=== Fourier Space

The EFE and energy conservation equations are linear, so we can do a
Fourier transformation to the variables and each mode will evolve
independently. Thus, we can write the perturbations as:
$
    h_(mu nu)(eta, x) = integral d^3 k e^(i k dot x) h_(mu nu)(eta, k)
$
and we do the same for the matter perturbations
$delta p, delta rho, v_i$. Notice that we only mode expand the spacial
coordinates not the time coordinate.

The EoMs are linear thus we expect we can just take:
$
    diff_i arrow.r i k_i
$
Notice that the mode may have an interpretation of momentum, but its
not true, for we perturb on a curved background, thus the *physical
momentum* is in fact:
$
    q(eta) = k / a(eta)
$

=== Helicity Decomposition

Another important observation is that the equations of motion with a
fixed mode can be further decomposed. The components of the original
EoM are SO(3) tensors—not generally covariant ones, since we have
already fixed much of the gauge freedom. Once we perform the mode
expansion and pick out a definite mode, the components transform as
SO(2) tensors under the residual symmetry of rotations around k

Consequently, a tensor equation can be decomposed into a set of
equations labeled by definite helicity, and modes of different
helicities do not mix. To simplify the EoM further, it is therefore
sufficient—and much more convenient—to study a single mode of fixed
helicity at a time.

Now let's see which components of the dynamical variables are
helicity-0, helicity-1, and helicity-2 modes.

- *Helicity-0* (SO(2) Scalars)

    - Stuffs that are originally scalars:
        $h_(0 0) , delta p, delta rho$

    - SO(3) vectors parallel to $k_i$

    - SO(3) tensors parallel to $k_i k_j, delta_(i j)$

- *Helicity-1* (SO(2) Vectors)

    - SO(3) vectors perpendicular to $k_i$, eg. $v^T$ satisfying
        $k_i v^T_i = 0$

    - SO(3) tensors that are symmetric, traceless, and transverse to
        $k_i$, eg. $h^T_(i j)$ satisfying
        $h^T_(i i) = 0, k_i tensor(h^T, +i, -j) = 0$


== Scalar Perturbations

Starting this section, we will only focus on the helicity-0 modes,
which are called *scalar perturbations*.


=== Scalar Components

Let's have a look at the scalar components of the perturbation.

- Decomposing the metric perturbation:


$
    & h_00 (eta, k) = 2 phi.alt(eta, k)\
    & h_(i j) = -2 psi delta_(i j) - 2 k_( i ) k_( j ) E + i ( k_( i ) W_( j )^( T ) + k_( j ) W_( i )^( T ) ) + h_( i j )^( T T )
$
Where $W_i^T$ satisfies $k_i W_i^T = 0$ and $h_(i j)^(T T)$ satisfies
$h_(i i)^(T T) = 0, k_i h_(i j)^(T T) = 0$. We can see that the scalar
perturbations are:
$
    phi, quad psi,quad E
$

- Decomposing the velocity perturbation:

$
    v_i = v_i^T + i k_i v
$
where $v_i^T$ satisfies $k_i v_i^T = 0$. We can see that the scalar
perturbation is:
$
    v
$

- Decomposing the energy-momentum tensor perturbation:

Using the perfect fluid form of the energy-momentum tensor, all two
dof are scalar perturbations:
$
    delta p, quad delta rho
$
Thus, in total, we have 6 scalar perturbations.

=== Gauge Fixing

Before we choose 3 gauge conditions, namingly $h_(0 i) = 0$, now we
choose the forth one to make life simpler. Now the leftover gauge
transformation can be written as :
$
    xi_0 = partial_eta sigma, quad xi_i = -partial_i sigma
$
Now we can choose an appropriate $sigma$ to set $E = 0$. With this
gauge fixing choice, the metric perturbation becomes:
$
    d s^2 = a^2(eta) [ -(1 + 2 phi.alt) d eta^2 + (1 + 2 psi) delta_(i j) d x^i d x^j ]
$
#remark([remember we take the convention of $gamma = eta - h$])

=== EoMs

Now we can write down the EoMs for the scalar perturbations. The EFE
gives us 4 equations, and the energy-momentum conservation gives us 2
equations, and the EOS gives us 1 equation, thus we have 7 equations.
(remember that EFE is not independent of the energy-momentum
conservation, thus we don't have too much equation.)

- Einstein Field Equations:
$
    & phi.alt = - psi \
    &- k^2 phi.alt - 3 ( a' ) / ( a ) phi.alt' - 3 ( a' / a)^( 2 ) phi.alt = 4 pi G a^( 2 ) dot.c delta rho_( t o t ) \
    & phi.alt' + ( a' ) / ( a ) phi.alt = - 4 pi G a^( 2 ) dot.c [ ( rho + p ) v ]_( t o t ) \
    & phi.alt''+ 3 ( a' ) / ( a ) phi.alt' + (2  ( a^(prime prime) ) / ( a ) - ( a^( prime 2 ) ) / ( a^( 2 ) ) ) phi.alt = 4 pi G a^( 2 ) dot.c delta p_( t o t )
$
Here notice that we don't assume that the universe have only one
component but many components, thus the energy density and pressure
are the total ones.
$
    delta rho_( t o t ) = sum_lambda delta rho_lambda, quad delta p_( t o t ) = sum_lambda delta p_lambda, quad [ ( rho + p ) v ]_( t o t ) = sum_lambda ( rho_lambda + p_lambda ) v_lambda
$
notice that here $v_lambda$ is the scalar component of the velocity
perturbation of the lambda component of matter, don't get confused
with the total velocity perturbation.

- Energy-Momentum Conservation:

$
    delta rho'_( lambda ) + 3 ( a' ) / ( a ) ( delta rho_( lambda ) + delta p_( lambda ) ) + ( rho_( lambda ) + p_( lambda ) ) ( Delta v_( lambda ) - 3 phi.alt' ) = 0 \
    [ ( rho_( lambda ) + p_( lambda ) ) v_( lambda ) ]' + 4 ( a' ) / ( a ) ( rho_( lambda ) + p_( lambda ) ) v_( lambda ) + delta p_( lambda ) + ( rho_( lambda ) + p_( lambda ) ) phi.alt = 0,
$
Here each equation is true for each component.

- Equation of State:
$
    delta p_( lambda ) = u_(s, lambda)^2 delta rho_( lambda )
$
Notice that for any matter we always have an equation of state,
generally we write the ansatz:
$
    p_lambda = w_lambda (rho_lambda) rho_lambda
$
Remember generally $w_lambda$ is a function of $rho_lambda$, thus
depend on time. And thus the perturbation may have the above form of
equation of state, where $u_(s, lambda)^2$ is the sound speed square
of the lambda component of matter. In general, $u_(s, lambda)^2$ is
not equal to $w_lambda$, and it can be a function of $rho_lambda$,
thus also depend on time.


=== Subhorizon and Superhorizon Modes

The solution to above EoMs may vary depends on modes. We distinguish
two kinds of modes, which give rise to distinct behaviors of the
perturbations. We use two parameters to characterize the modes:
$
    q(eta) = k / a(eta), quad H(eta) = (a'(eta)) / (a^2(eta))
$
If $q(eta) >> H(eta)$, we call it a *subhorizon mode*, and if
$q(eta) << H(eta)$, we call it a *superhorizon mode*.

- In Superhorizon modes $q<<H$. The expansion of the universe
    dominates the evolution, thus the perturbations are rather small,
    the univse is rather homogeneous and isotropic.

- In Subhorizon modes $q>>H$. The expansion of the universe is
    negligible, thus the perturbations can grow and become large, the
    universe is rather inhomogeneous and anisotropic.

For a fixed mode we can calculate:
$
    q(eta) / H(eta) = k / ( (a'(eta) slash a(eta)) ) = k / ( a(eta) H(eta) )
$
For a radiation or matter dominated universe,
$a< c dot t, H tilde 1/t$ , as times goes $q slash H$ grows. Thus, at
some time superhorizon modes will become subhorizon modes, and the
perturbations will grow. This is called *Entry the Horizon*.

#figure(
    image("../assets/entrehorizon.png", width: 55%),
    caption: [The evolution of a mode from superhorizon to subhorizon.
    ],
) <fig-entrehorizon>


== Single Component Universe
Now let's assume that the universe only have one component of matter,
and try to solve the EoMs for different types of matter.


=== Equation for Metric Perturbation

We take the 2nd and 4th EFE equations, and the EOS, we try to make a
closed equation with $phi.alt$ the only variable. We can get:
$
    phi.alt'' + 3 ( a' ) / ( a ) ( 1 + u_s^2 ) phi.alt' + [ 2 ( a^(prime prime) ) / ( a ) - ( a'/ a )^2 ( 1 - 3 u_s^2 )] phi.alt + u_s^2 k^2 phi.alt = 0
$
Notice that this is sort of a harmonic oscillator equation with:
$
    3 ( a' ) / ( a ) ( 1 + u_s^2 ) phi.alt' "as fraction" \
    2 ( a^(prime prime) ) / ( a ) - ( a' / a )^2 ( 1 - 3 u_s^2 ) "as mass term"
$
As discussed before, we now can see explicitly that the behavior of
solution is depend on the mode, whether it is subhorizon or
superhorizon.

- In the limit of:
$
    u_s q = u_s k / a << H
$
The last term $u_s^2 k^2$ is negligible.

- However, as:
$
    u_s q = u_s k / a >> H
$
we know the last term $u_s^2 k^2$ dominates.

This comparison can be written as one between the physical wavelength
of the mode and the *sound horizon*:
$
    lambda_s equiv u_s / H
$
We list the relation here:

- For $lambda>> u_s H^(-1)$ (superhorizon) then $u_s q << H$ thus we
    have the finial term negligible.

- For $lambda << u_s H^(-1)$ (subhorizon) then $u_s q >> H$ thus we
    have the finial term dominates.

#note([
    The sound horizon also have a physical meaning as the distance
    that a sound wave travel after the big bang.
])

#remark[Hubble Horizon and Sound Horizon][
    It is also important to distinguish two concepts: the sound
    horizon and the Hubble horizon.

    In this section, we consider modes within and outside the sound
    horizon by comparing $u_s q$ and $H$. In the above section, we in
    fact compare $q$ and $H$which considers mode inside and outside
    the Hubble horizon.

    Hubble horizon is a more general concept, since it doesn't depend
    on $u_s$. In non-relativistic matter, $u_s$ is zero, thus the
    sound horizon is zero, and all modes are outside the sound
    horizon, but some modes can be inside the Hubble horizon.

]

=== Metric Perturbation EoM

Now use the Friedmann equation and the spacial EFE with
$k=Lambda =0$,@eq:klambda0friedmann,@eq:klambda0spatialefe, we see the
mass term is related to the background matter component as:
$
    2 ( a^(prime prime) ) / ( a ) - ( a'/ a )^2 ( 1 - 3 u_s^2 )= - 8 pi G a^( 2 ) (p - u_s^2 rho)
$
Now we make an simple assumption:

- For the component we have $p= omega rho$ and $u_s^2 = omega$. This
    tells us that:
$
    p - u_s^2 rho = 0 quad arrow.r.double quad 2 ( a^(prime prime) ) / ( a ) - ( a'/ a )^2 ( 1 - 3 u_s^2 ) = 0
$

#remark([Claimed in the book that this is true for most hot big bang
    epoch])

Thus this "mass" term vanishes, and the equation becomes:
$
    phi.alt'' + 3 ( a' ) / ( a ) ( 1 + u_s^2 ) phi.alt' + u_s^2 k^2 phi.alt = 0
$

=== Superhorizon Modes
Now take the case that $lambda >> u_s H^(-1)$, the finial term is
negligible, thus we have:
$
    phi.alt'' + 3 ( a' ) / ( a ) ( 1 + u_s^2 ) phi.alt' = 0
$
This equation have two solutions:
$
    & phi.alt = "const" \
    & phi.alt tilde eta^(1-C) "where" C>1
$
The first is constant, and the second goes to infinity as $eta$ goes
to 0, while decays as $eta$ grows. Thus, we call the second solution
the *decaying mode*. We don't care about the decaying mode, thus we
see that the metric perturbation is constant.

Now using the 2nd EFE and @eq:klambda0friedmann, we can get a relation
between the matter perturbation and the metric perturbation, we define
the *relative perturbation* as:
$
    delta = (delta rho) / rho
$
Remember that:
$
    - k^2 phi.alt - 3 ( a' ) / ( a ) phi.alt' - 3 ( a'/ a)^( 2 ) phi.alt = 4 pi G a^( 2 ) dot.c delta rho
$
if we take the superhorizon limit that $k << 1$ and assume
$phi.alt = "const"$ we have:
$
    delta rho = - 3 ( a' zwj^2 ) / ( a^( 4 ) ) phi.alt / ( 4 pi G ) = - 3 ( a' / a^2 )^2 phi.alt / ( 4 pi G )
$
With the Friedmann equation, we have
$
    delta = - 2 phi.alt
$
we can see its true that superhorizon modes doesn't effect the
inhomogeneity of the universe, thus the universe is rather homogeneous
and isotropic.

=== Subhorizon Modes I: Relativistic Matter
<sec:relasubrela>

Now we consider the case of $lambda << u_s H^(-1)$, thus the last term
dominates, and we have:
$
    a tilde eta quad omega = u_s^2 = 1/3
$
Thus the equation becomes:
$
    phi.alt'' + 4 / eta phi.alt' + 1/3 k^2 phi.alt = 0
$
This equation admit a general solution (which doesn't decay) as:
$
    phi.alt (eta) = - 3 phi.alt_( ( i ) ) dot.c ( 1 ) / ( ( u_( s ) k eta )^( 2 ) ) [ cos ( u_( s ) k eta ) - ( sin ( u_( s ) k eta ) ) / ( u_( s ) k eta ) ]
$
If consider the limit of $u_s k eta >> 1$ (subhorizon), we have:
$
    phi.alt (eta) tilde - 3 phi.alt_( ( i ) ) dot.c ( 1 ) / ( ( u_( s ) k eta )^( 2 ) ) cos ( u_( s ) k eta )
$
The now we consider the *relative perturbation*, as
$k arrow.r infinity$ using the second EFE, we have:
$
    - k^2 phi.alt - 3 ( a' ) / ( a ) phi.alt' - 3 ( a'/ a)^( 2 ) phi.alt = 4 pi G a^( 2 ) dot.c delta rho tilde -k^2 phi = 4 pi G a^( 2 ) dot.c delta rho
$
This gives us that:
$
    & delta rho = -1/(4 pi G) ( k^2 / a^2 ) phi.alt \
    & delta = (delta rho) / rho tilde 6 phi.alt_( ( i ) ) dot.c cos ( u_( s ) k eta )
$
Thus we have the conclusion that :

- At radiation dominated era, there is NO jean instability, the
    perturbation will just oscillate and never grow.


=== Subhorizon Modes II: Non-relativistic Matter

Now we consider the case of non-relativistic matter, and we know:
$
    omega = u_s^2 = 0, quad a tilde eta^2
$
Thus the equation becomes:
$
    phi.alt'' + 3 a^prime/a phi.alt' = 0
$
Indeed, the solution is again a constant:
$
    phi.alt = "const"
$
Now we consider the relative perturbation, using the 2nd EFE we can
get:
$
    delta rho = - ( 1 ) / ( 4 pi G a^( 2 ) ) ( k^( 2 ) + ( 12 ) / ( eta^( 2 ) ) ) phi.alt
$

- In *Superhorizon* limit $k eta << 1$, we have:
$
    delta rho tilde 1/a^3 arrow.r.double delta = (delta rho) / rho tilde "const"
$

- In *Subhorizon* limit $k eta >> 1$, we have:
$
    delta rho tilde 1 / a^2 arrow.r.double delta tilde a
$
Thus we have the conclusion that:

- At matter dominated era, there is jean instability, the perturbation
    will grow as the universe expands. Though not exponentially but as
    a power law.
