#import "../env/lib.typ": *

= Lecture 13: Basics of Inflation

== Motivation: Horizon Problem


Remember in the section before, we have noticed that the initial
perturbation of the universe metric is a random number from a Gaussian
distribution. Say for subhorizon modes:
$
    delta_"rad" (k) = 6 phi_((i)) (k) cos (u_s k eta)
$
and it satisfy the distribution:
$
    P(phi_((i)) (k)) tilde exp(- frac(phi_((i)) (k)^2, 2 sigma(k)^2))
$
where $sigma(k)$ is the variance of the distribution that due to the
isotropic assumption only depends on the magnitude of $k$. This
distribution leads to the following correlation of the initial
perturbation:
$
    angle.l phi_((i)) (k) phi_((i))^* (k') angle.r tilde sigma(k)^2 delta^(3) (k - k')
$
Also, with this ensemble we can estimate the two point correlation of
the subhorizon mode radiation perturbation:
$
    angle.l delta_"rad" (k) delta_"rad" (k') angle.r tilde cos^2 (u_s k eta) sigma(k)^2 delta^(3) (k + k')
$
#note([
    Note that the delta function is $delta^3 (k+k')$ is due to the
    fact that the perturbation is real. If we want only the norm of
    the mode to be correlated, this directly leads to the delta
    function of $delta(k) delta^*(k)$ which is $delta(k) delta(-k)$.
])
In fact, observations shows that the correlation of the metric
perturbation also called the *Primordial Power Spectrum* (at the last
scattering surface) is given by a power law:
$
    angle.l phi_((i))(k) phi_((i)) (k^prime) angle.r tilde delta^(3) (k + k') 10^(-10) (k_* / k)^(3+(n_s - 1))
$<eq-anisocmb>

#figure(
  image("../assets/PPS.png", width: 50%),
  caption: [Primordial Power Spectrum, here $cal(P) $ is the dimensionless power spectrum defined as $cal(P) tilde k^3 P$],
) <fig-pps>

#remark([
    In fact we often use the spectrum of the curvature perturbation
    $R$ instead of the metric perturbation $phi$ since it is gauge
    invariant. Nevertheless, in suitable gauge (as the one we choose)
    they are related.
])
However, in fact this correlation causes a problem. If we read this
observation result we know that:

+ The perturbation is small ($10^(-5)$) and thus the universe is very
    homogeneous at the beginning.

+ The perturbation has simple power spectrum.

+ The perturbation is correlated at small $k$, which means that the
    perturbation is correlated at large scale.

The last point is a conflict with the standard cosmology we have
discussed. Some long range point at the last scattering surface (LSS)
will have past light cones that do not intersect, thus they cannot be
correlated. #figure(
    image("../assets/correlated.png", width: 40%),
    caption: [The horizon problem],
) <fig-correlated>

However, observation tells us they are, due to the structural behavior
at small $k$. This is called the *horizon problem*.

To resolve this problem, we need to find a mechanism that can generate
correlation at large scale. This is the motivation of inflation.
Inflation is a theory for period before the big bang, which tells us
why we have the power spectrum. There are several features of
inflation:

- It is a period of quasi-exponential expansion of the universe

The homogeneous expansion can be given as a single field slow roll
inflation mode. And the perturbation can be given by the quantum
fluctuation of the inflation field.

#figure(
  image("../assets/inflationcase.png", width: 90%),
  caption: [The history of the universe in the inflation theory.],
) <fig-inflationcase>

== Inflation at Background Level I
=== dS and Horizon Problem
We assume that the universe is dS before the big bang. Remember in dS
spacetime:
$
    a(t) = e^(H t), quad H = sqrt(Lambda / 3) = "constant"
$
In this case, we remember that we define superhorizon and subhorizon
by comparing:
$
    q ( eta ) = ( k ) / ( a ( eta ) ), quad H ( eta ) = ( a' ( eta ) ) / ( a^( 2 ) ( eta ) )
$
Now in a dS spacetime, we have:
$
    H = "const" quad a ( eta ) = - 1 / ( H eta )
$
Thus the modes are initially subhorizon, as the universe expands, the
modes becomes superhorizon. This means that the modes can be
correlated at large scale, because they are initially subhorizon and
thus can interact with each other. This is how dS can solve the
horizon problem.


#figure(
    image("../assets/horizon.png", width: 50%),
    caption: [Illustration of solving Horizon Problem with dS.],
) <fig-horizon>

=== Slow Roll Inflation

A problem of dS is that if it is once dominant then it will always be
dominant, we can see it from the EoM of Hubble parameter:
$
    H = H_( 0 ) sqrt(Omega_( Lambda ) + Omega_( m ) ( 1 + z )^( 3 ) + Omega_"rad" ( 1 + z )^( 4 )).
$
as the universe expands z goes to zero. If $Omega_Lambda$ dominates at
some point, it will always dominate. Thus, we need a mechanism to end
the dS phase, which is called *slow roll inflation*.

Here we introduce an approach called single field slow roll inflation.
We introduce a scalar field called the inflaton field, which has a
potential $V(phi)$ with the following properties:

#figure(
    image("../assets/field.png", width: 80%),
    caption: [The potential of the inflaton field.],
) <fig-field>

Initially, it is placed on the part with higher energy, which gives us
the dark energy as the Cosmological constant. Then it rolls down the
potential, and the cosmological constant get smaller yet the energy
heat up the universe and make it radiation dominated. This is called
the reheating process. After the reheating process, the universe is in
the standard cosmology phase.

Unfortunately, modes of fluctuation doesn't see the reheating process,
they are in superhorizon during the process, thus they are not
affected by the reheating process.

Now we study the dynamics of the inflaton field. It can be described
as a scalar field in dS spacetime, with the following action:
$
    S = integral d^( 4 ) x sqrt(- g) [ ( 1 ) / ( 2 ) g^( mu nu ) diff_( mu ) phi diff_( nu ) phi - V ( phi ) ].
$
Here the metric we use is the flat slicing dS metric, which is given
by:
$
    d s^2 = - d t^2 + e^( 2 H t ) d x^2
$

- Equation of Motion of the inflaton field

We can calculate the EoM of the inflaton field:
$
    dot.double(phi) + 3 H dot(phi) + V' ( phi ) = 0
$
Notice that we assume that the field is homogeneous, thus the spatial
derivative term vanishes.

- Einstein Equation

The energy momentum tensor of the inflaton field is:
$
    T_( mu nu ) = diff_( mu ) phi diff_( nu ) phi - g_( mu nu ) cal(L)
$
Then we can calculate the energy density and pressure, in cosmology we
assume the inflation field is homogeneous, thus term $Delta phi$
vanishes, and we have:
$
    rho = ( 1 ) / ( 2 ) dot(phi)^2 + V ( phi ), quad p = ( 1 ) / ( 2 ) dot(phi)^2 - V ( phi )
$
Notice that in a slow role approximation, the potential energy term
will dominate and thus we have $p approx - rho$, which is the same as
the cosmological constant. This is how slow roll inflation can give us
a dS phase. Indeed the Friedmann equation is given by:
$
    H^2 = (8 pi G)/3 [ ( 1 ) / ( 2 ) dot(phi)^2 + V ( phi ) ] = (8 pi)/(3 M_"pl"^2) [ ( 1 ) / ( 2 ) dot(phi)^2 + V ( phi ) ]
$
in the inflation theory we commonly use $M_"pl"$ instead of $G$, which
is defined as:
$
    M_"pl" = sqrt((hbar c)/G) = 1/ sqrt(G)
$

Now we can discuss the slow roll approximation. We need two conditions
for the approximation to be valid:

- *Fraction is Large*, to have the field rolling down the potential
    slowly, we need the friction term $3 H dot(phi)$ to be large, this
    gives us:
$
    abs(dot.double(phi)/ (3 H dot(phi))) << 1
$
- *Potential Dominates*, the initial potential energy should be large
    enough to make the universe in a dS phase, thus we need:
$
    dot(phi)^2 / (2 V ( phi )) << 1
$

Under these two conditions, we can see that the EoM of inflation field
will be dominated by the friction and potential term, thus we have:
$
    & dot(phi) = - 1/(3H ) V' ( phi ) quad "Equation of Motion (SR)" \
    & H = 1/(M_"pl") ((8 pi V)/3)^(1 slash 2) quad "Friedmann Equation (SR)"
$

