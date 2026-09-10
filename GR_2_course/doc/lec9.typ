#import "../env/lib.typ": *

= Lecture 9: Dark Matters
This lecture is about the dark matter.

== I: Evidence for Dark Matter

We first have to convince that there do exist dark matters. The
evidence for dark matter is quite strong, and we have multiple lines
of evidence.

1. *FRW Evolution*: remember the FRW Metric evolve depends on the
    energy density of the universe. We can measure and calculate the
    energy density of matter in the universe, and we can measure the
    energy density of Baryons by observation.

The difference between the total matter density and the baryon density
tells us something is missing, and that is the dark matter.


2. *Galaxy Rotation Curves*:

If we assume classical mechanics, and make the assumption that the
galaxy is just masses going around. The baryons are localized as
observation:
$
    I_B tilde I_0 exp(-r/r_0)
$
Thus we can just assume a large body in the middle and the rest of the
mass is just a point mass. Then we can calculate the rotation speed
distribution:
$
    v tilde sqrt(1/r)
$
However, the observation shows that the rotation speed is almost
constant:
$
    v tilde "const"
$
which means there must be some mass distribution that is not localized
in the center:
$
    M(r) tilde r arrow.r.double rho_("DM") tilde 1/r^2
$
Modern more detailed observation now shows that in fact the dark
matter density is not exactly 1/r^2, but it is close to that:
$
    rho_("DM") tilde r_c^2/(r^2+r_c^2)
$

3. *Gravitational Lensing*: We can look at massive galaxies and
    estimate the mass by looking at the lensing effect.

4. *Bullet Cluster*: We can see that the core of baryons stuck in the
    middle yet the dark matter passed through. #figure(
        image("../assets/bulletcluster.png", width: 50%),
        caption: [The bullet cluster. The purple part is the baryonic
            matter, and the pink part is the dark matter.],
    ) <fig-bulletcluster>
This is a very strong evidence for the existence of dark matter, and
it also shows that the dark matter is not just some modification of
gravity, but it is some real matter that has very weak interaction
with the baryons. This also put bounds on the interaction strength of
dark matter.


5. *Various Measure of BBN, CMB, and LSS*: all point to the same
    conclusion that there must be some dark matter in the universe.




== II: Candidates for Dark Matter

A dark matter should be *stable* and *weakly interacting*. We want to
know what kinds of particles can have these properties and form a good
candidate for dark matter.

=== Neutrinos and Mass Bounds

- *Fermionic DM Mass Bound*

A standard model candidate for dark matter is the neutrino, cause it
is only one that interacts weakly enough. However, the neutrino is not
the dark matter, because it is too light.

We can calculate the number (not number density but we still use
$N_nu$) of Neutrinos in a galaxy, due to it is a fermion, we have:
$
    N_nu <= 1/(2 pi)^3 integral d^3 p d^3 x tilde p^3 r^3
$
thus the total mass of the Neurtinos in the galaxy is:
$
    M_nu tilde N_nu m_nu tilde m_nu^4 v^3 r^3
$
We can estimate the velocity by the bound of:
$
    v^2 <= (G M_nu)/r
$
This gives us a lower bound on the mass of the neutrino:
$
    m_nu > (1/(G v r^2 ))^(1/4)
$
We can plug in sum numbers from our galaxy, and we get:
$
    m_nu >= 30 "eV"
$
Thus for any fermionic Dark Matter, we have a mass bound from below,
and apparently the neutrino is too light to be the dark matter.

- *Bosonic DM Mass Bound*

For a bosonic DM we also have a mass bound, but from another
consideration. The de Broglie wavelength of the bosonic DM should be
smaller than the halo radius:
$
    lambda = h/(m c) tilde 1/m <= r_c
$
This gives us a lower bound on the mass of the bosonic DM:
$
    m >= 10^(-20) "eV"
$
We can see that this is very weak bound, and thus bosonic DM can be
very light.

=== QCD Axion

#highlight([Basic Axion Mass:]) This is originally as an explanation
to the QCD strong CP problem. Moreover this also gives a good
candidate for the dark matter. Due to experimental constraints, the
axion mass should be around:
$
    10^(-11) "eV" <= m_a <= 10^(-2) "eV"
$
If the axion mass is:
$
    m_a <= 10^(-5) "eV"
$
Then it serve as a good candidate for the dark matter. Axion at 0
temperature has a potential:
$
    V_a|_(T=0) = - Lambda_("QCD")^4 cos (a(x,t)/f_a) , quad a(x,t) "is the axion field"
$
at $a(x,t) = 0$ is a saddle point of this potential. Around the saddle
point, we can expand the potential, which gives a mass term:
$
    m_a^2 = (Lambda_("QCD")^4)/(f_a^2)
$
we now believe this $f_a < m_p$, this gives us a lower bound on the
axion mass:
$
    m_a > 10^(-11) "eV"
$
other consideration gives us the upper bound of $10^(-2) "eV"$.


#highlight([Dark matter Candidate:])Now we start to look at the
behavior of Axion as temperature lowers and how it potentially becomes
a dark matter. Axions can be described by a scalar field:
$
    S = integral d^( 4 ) x sqrt(- g) [ ( f_( A )^( 2 ) ) / ( 2 ) diff_( mu ) theta diff^( mu ) theta - V ( theta ) ]
$
where we use $theta = a(x,t)/f_a$ as the dynamical variable, and the 0
temperature potential is given as above. The equation of motion for
the axion field is:
$
    dot.double(theta) + 3 H dot(theta) + m_( a )^( 2 ) theta = 0
$

- At high temperature, the $H$ term dominates, thus the axion field is
    not occilating, but freezed at some initial value, say $theta_i$.

- As the temperature lowers, the $H$ term becomes smaller, and at some
    point the $m_a$ term becomes dominant, and the axion field starts
    to oscillate around the minimum of the potential.

#figure(
    image("../assets/axionocci.png", width: 40%),
    caption: [The axion field starts to oscillate.],
) <fig-axionocci>
We first estimate the initial energy density of the axion field when
it starts to oscillate. The axion field is freezed at $theta_i$ before
it starts to oscillate, thus the initial energy density is fully given
by the potential energy:
$
    rho_a tilde V(theta_i) tilde m_a^2 f_a^2 theta_i^2
$
Then the axion field starts to oscillate, and the energy density of
the axion field will dilute as matter, we can calculate the number
density of the axions:
$
    N_a = rho_a/m_a tilde m_a f_a^2 theta_i^2
$
Now we want to calculate the number density of axions today. We know
that the axion field is weak interacting, thus the number density
behaves as freezed out case @eq:freezeoutnumberdensity :
$
    N_(a,0) = N_a (a_i/a_0)^3
$
We know in radiation dominated era, $a tilde 1/T$, thus we can rewrite
the above equation as:
$
    N_(a,0) = N_a (T_0/T_i)^3
$
This gives us a current energy density of the axion field:
$
    rho_(a,0) = m_a N_(a,0) tilde m_a^2 f_a^2 theta_i^2 (T_0/T_i)^3
$
remember when the axion starts to oscillate, it satisfies the
condition:
$
    H(T_i) tilde m_a
$
In a radiation dominated era, we have:
$
    T_i = (m_a M_0)^(1/2)
$
Plug this into the above equation, and use the relation of
$f_a^2 = Lambda_"QCD"^4/m_a^2$, we finally get:
$
    rho_(a,0) tilde T_( 0 )^( 3 ) ( Lambda_( Q C D )^( 4 ) ) / ( M_( 0 )^( 3 slash 2 ) m_( A )^( 3 slash 2 ) ) theta_i^( 2 ),
$
For axions to be a dark matter, its energy density have to be large
enough to match the observed dark matter density (or we use
$Omega_a tilde Omega_"DM"$),if we take the largest possible initial
field condition $theta_i = pi$ this gives:
$
    m_a <= 10^(-6) "eV"
$

=== Weakly Interacting Massive Particles (WIMPs)

There are some fermions that behave quite like neutrinos, but heavier
and more stable. They are called the WIMPs.

- They are weakly interacting, and interacts with the electron-weak
    force.

- They are productions of common "freeze-out" mechanism, from
    annihilation into SM particles.
$
    X + overline(X) arrow.r "SM particles"
$
However, we assume they cannot decay into SM particles, thus they are
stable.

The freeze out happened when:
$
    Gamma_x = angle.l sigma v N_x angle.r tilde H
$
The particle number density is given by:
$
    N_x tilde (m_x T)^(3/2) exp(- m_x/T)
$
We can calculate the freeze out temperature by plugging the above
equation into
$
    Gamma_x tilde H
$
Then the abundance from number density and radiation dominant
evolution:
$
    Omega_x tilde 1 0^( - 10 ) ( G e V^( 2 ) ) / ( sigma_( 0 ) ) log ( M_( 0 ) M_( x ) sigma_( 0 ) ),
$
where $sigma_0 = sigma v$. For a electro weak procedure we can
approximate $sigma_0$. Thus gives a 1 to 1 relation between the WIMP
mass and the abundance. If $Omega_x = Omega_"DM"$ We can match the
mass. However, these particles are not found yet.


=== Primordial Black Holes



