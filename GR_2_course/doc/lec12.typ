#import "../env/lib.typ": *

= Lecture 12: CMB Anisotropies

== Multi Component Universe

=== Adiabatic and Isocurvature Modes

Now the actual universe is not just made of one component, but it is
made of multiple components. At radiation dominated era, we have the
perturbation of DM and Baryons.

An important point to know is that the there are two kinds of initial
conditions for the modes:

- *Adiabatic mode*: initial condition for $phi_i eq.not 0$ and other
    perturbations are 0.

- *Isocurvature mode*: initial condition for $phi_i eq 0$ and other
    perturbations are not 0.

=== BAO Peak

In reality in radiation dominated era, we don't only have radiation,
but matters. There are two kinds of matter. Darkmatter and Baryons.
Dark matter interacts weakly, but baryons interact strongly with
radiation. Thus, the perturbation of baryons and radiation are tightly
coupled, and they can be treated as a single fluid. Yet the dark
matter is a single fluid itself.

Under this picture, we can see that if there is an initial
perturbation at big bang. Then due to the lack of sound speed, the
dark matter perturbation will just stay the place it is and grow with
the universe expansion. However, the perturbation of baryons and
radiation will occilate with the sound speed of the fluid. Thus, at
the recombination time (when Baryon and photon decouple), we can have
a peak of baryon density at the position where the sound wave has just
reached. This is illustrated in the following figure:


#figure(
    image("../assets/darkmatter.png", width: 50%),
    caption: [The occilation of baryon and radiation fluid, and the
        static dark matter perturbation.],
) <fig-darkmatter>

We can calculate the position of the peak, the speed of sound of the
fluid is given by:
$
    u_s = sqrt((delta p) / (delta rho)) = sqrt((delta p_"rad") / (delta rho_"rad" + delta rho_"baryon"))
$
this can be calculated from the behavior of different energy density
of the components and if we assume $rho_b << rho_gamma$ which is the
case at early universe, we can have:
$
    u_s = 1 / sqrt(3)
$
Thus the position of the peak is given by:
$
    r tilde u_s eta_r tilde (1/sqrt(3)) eta_r tilde (a^* H^*)^(-1)/sqrt(3)
$


== CMB Anisotropies

An obervation fact is that we can measure the CMB at different angles.
The spectrum gives us the effective temperature of CMB. However,
observation shows that the effective temperature is not isomorphic. We
define:
$
    (delta T (theta, phi)) / T_0
$
The strongest anisotropy can be explained by the moving of earth,
however, there are still some anisotropies, which is contributed by
the intrinsic anisotropy of the CMB. If we consider the anisotropy of
CMB temperature in the forier space of spherical harmonics, we can
find the following kinds of relation: #figure(
    image("../assets/cmbaniso.png", width: 70%),
    caption: [Anisotropy of CMB temperature. ],
) <fig-cmbaniso>
We try to understand how this is the case.


=== Estimate the First Peak

We can assume that this kind of anisotropy is given by the occilation
of subhorizon modes of relativitic matter at relativistic dominated
era @sec:relasubrela. The occilation pattern is given by the following
equation:
$
    delta_"rad" tilde 6 phi_((i)) cos (u_s k eta)
$
and at recombination, $eta = eta_r$, the light freeze out and
propagate freely to us, as shown in the following figure.

#figure(
    image("../assets/propagatecmb.png", width: 40%),
    caption: [Propagation of CMB photons.],
) <fig-propagatecmb>

If we assume that the temperature anisotropy is strongly contributed
by the occilation of subhorizon modes, say:
$
    (delta T) / T_0 tilde delta_"rad" tilde 6 phi_((i)) cos (u_s k eta_r)
$
Then we may understand the occilation of @fig-cmbaniso is given by the
cosine function. This is indeed the case and we can estimate the
position of the first peak.

The mode that contributes to the first anisotropy peak at the
recombination time should be:
$
    u_s k eta_r = pi
$
remember at the radiation dominated era, $u_s = 1 / sqrt(3)$, so we
have:
$
    k = sqrt(3) pi / eta_r
$
Then we can estimate the typical angle of this mode by the relation:
$
    Delta x = (2 pi) / k = 2/sqrt(3) eta_r quad Delta x = Delta theta times eta_0
$
The second relation is estimated from the following figure: #figure(
    image("../assets/figuresel.png", width: 34%),
    caption: [The relation between the physical distance and the
        angle.],
) <fig-figuresel>
and $eta_r << eta_0$, thus we eventually have:
$
    Delta theta = 2/sqrt(3) (eta_r / eta_0)
$
Then we estimate the angular fourier mode of this typical angle:
$
    l = (2 pi)/(Delta theta) tilde 300
$
This is of the same order of the position of the first peak in
@fig-cmbaniso, which is around $l = 200$.



=== Gaussian Random

Let's now treat the CMB temperature anisotropy more carefully. In
modern cosmology, we believe that the initial perturbation $phi_((i))$
is picked from some *random distribution* (that's why the CMB looks so
random). Thus, if we think of CMB temperature as a result of
perturbation, it then should depend on the initial perturbation
$phi_((i))$, thus should be in some random distribution.

We can make a fourier transformation of the CMB temperature
anisotropy:
$
    ( delta T ( bold(upright(n)) ) ) / ( T ) = sum_( l = 1 )^( oo ) sum_( m = - l )^( m = l ) a_( l m ) Y_( l m ) ( bold(upright(n)) ).
$
The coefficients should be picked from some random distribution, in
this discussion. We now assume:

- The distribution is isotropic which means that the temperature
    perturbation of different angles is just picking out numbers from
    the *same distribution*.

The isotropy of the distribution tells us that:
$
    angle.l a_( l m ) a^*_( l' m') angle.r = C_l delta_( l l' ) delta_( m m' )
$
where we average over the distribution. In fact, observation shows
that the *distribution is a Gaussian*. Thus, the number $C_l$
completely determines the distribution and all non-random information
of the CMB temperature.

The fact that we can measure a distribution from a random picked
result is strange. However, though we only have one universe,
different $m$ of CMB temperature can be thought as different picks
form the distribution. Thus, in fact we can get the quantity $C_l$ by
averaging over $m$:
$
    C_l = (1/(2l + 1)) sum_( m = - l )^( m = l ) a_( l m ) a^*_( l m )
$
The above figure @fig-cmbaniso is just the plot of $l$ with a quantity
proportional to $C_l$.
