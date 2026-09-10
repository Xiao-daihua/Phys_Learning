#import "../env/lib.typ": *

= Lecture 6: Recombination and Neutrino Freeze Out
Now we start to focus on more concrete process happened in the
universe. Now I'll list out a timeline of the process happened in the
universe, which is shown in the following figure:

#figure(
    image("../assets/timelineuniverse.png", width: 80%),
    caption: [Timeline of the thermal history of the universe.],
) <fig-timelineuniverse>
This lecture we will focus on the process of recombination and
neutrino freeze out which happens long before, even before the BBN
process.

Note that the freeze out of electrons and positrons we discussed last
lecture happens right after BBN.

== Recombination

This this the process when the CMB is emitted. Before the
recombination, the universe is filled with plasma, which is opaque to
photons, with the main reaction happening as:
$
    e^- + p^+ arrow.r H + gamma
$
Yet as the universe expands and cools down, the reaction will be more
difficult to happen when the temperature drops and energy is lower the
binding energy of the hydrogen atom. Then the universe becomes
transparent to photons, and photons are decoupled from matter, and
free to propagate in the universe.

The slice when the last scattering happens is called the last
scattering surface, which is the source of the CMB we observed today.

=== Saha Equation

We now focus on the process of recombination, which protons and
electrons combine to form neutral hydrogen atoms. In order to
calculate the recombination temperature, we need to get the number
density of electrons. This can be done with the help of the Saha
equation.

There exist a simple equation to describe the process of:
$
    e^- + p^+ arrow.r H + gamma
$
when the elements are in thermal equilibrium, which is called the Saha
equation:
#theorem[The Saha Equation][
    The Saha equation describes the ionization state of a gas in
    thermal equilibrium, relating the number densities of ions and
    electrons to the temperature and ionization energy. It is given
    by:
    $
        (N_e N_p) / N_H = ( (m_e T) / (2 pi) )^(3/2) exp(-I / (T))
    $
    where $N_i$ is the number density of species $i$, $m_e$ is the
    electron mass, $T$ is the temperature, and $I = m_e + m_p - m_H$
    is the ionization energy of hydrogen.
]

All elements other than photons can be view as thermal equilibrium
non-relativistic particles, and the equilibrium number density can be
calculated as @eq:nonrelativisticnumber. we copy it here for
convenience:
$
    N_i = g_i ((m_i T) / (2 pi))^(3/2) exp ((mu_i - m_i) / T)
$
the polarization degree of freedom for proton and electron are both 2,
and for hydrogen atom is 4, thus we have $g_e = g_p = 2$ and
$g_H = 4$. Moreover, in chemical equilibrium the chemical potential of
the reaction is zero, thus we have
$ mu_e + mu_p = mu_H $
With these preparation, we can derive the Saha equation as above.
#remark([
    Note that here we have assumed that the hydrogen mass is nearly
    the mass of proton.
])

=== Recombination Temperature

To calculate the recombination temperature, generally we have to
consider a complicated scattering between photons and protons and
electrons. However, to make it simple, we can only consider the
process that photon can scatter with electrons, and ignore the
scattering between photons and protons, which is a good approximation
since the cross section of photon-electron scattering is much larger
than that of photon-proton scattering.

Then we only have to focus on the *Thompson scattering* process, which
is the scattering between photons and electrons:
$
    gamma + e^- arrow.r gamma + e^-
$
To do the calculation, we need some facts and assumptions:

- Assume the universe is neutral, and positrons are mostly annihilated
    after the freeze out of electrons and positrons, thus we have
    $N_e = N_p$.

- Fact: the baryon to photon ratio is
    $eta = N_b slash N_gamma = 6 times 10^(-10)$, where $N_b$ is the
    number density of baryons, and $N_gamma$ is the number density of
    photons.

- Fact: the fraction of protons in baryons is about 0.75, thus we have
    $N_p = 0.75 N_b$.

- Assume that at the temperature of interest most protons have
    combined with electrons to form hydrogen atoms, thus we have
    $N_H = N_(p "original")$.
#note([
    The Baryon to photon ratio is a very important parameter in
    cosmology, which is true for most time in the history of the
    universe.
])
With these assumptions, we now can see that the number density of
electrons can be expressed through Saha equation assuming $N_e = N_p$
as:
$
    N_e = N_H^(1 slash 2) ( (m_e T) / (2 pi) )^(3 slash 4) exp(-I / (2T))
$
While $N_H$ can be expressed through the baryon to photon ratio as:
$
    N_H = N_(p "original") = 0.75 N_b = 0.75 eta N_gamma = 0.75 eta (2 zeta(3) / pi^2) T^3
$
In the final equation we use the equilibrium number density of
photons, given by @eq:relativisticnumber. With the number density of
electrons, we can calculate the $Gamma$ of Thompson scattering as:
$
    Gamma = angle.l sigma_(gamma e) N_e v angle.r
$
the cross section of Thompson scattering is given by:
$
    sigma_(gamma e) = (8 pi alpha^2)/ (3 m_e^2)
$
The recombination happens when the scattering effect is as the same
order as the expansion effect (freeze out), thus we have the
condition:
$
    H = Gamma quad arrow.r.double quad B ( T^( 9 slash 4 ) ) / ( m_( e )^( 5 slash 4 ) ) e^( - I slash 2 T ) = ( T^( 2 ) ) / ( M_( 0 ) )
$
where $B$ is a constant given by:
$
    B = ( 8 pi alpha^( 2 ) ) / ( 3 ) eta^( 1 slash 2 ) ( ( 2 zeta ( 3 ) ) / ( pi^( 2 ) ) )^( 1 slash 2 ) ( ( 1 ) / ( 2 pi ) )^( 3 slash 4 )
$
Note that here we take $v = 1$, which is the speed of light, since the
photons is involved.

We finally get the recombination temperature as:
$
    T_("dec") = 0.25 "eV" tilde 3000 K
$

=== CMB Temperature

This temperature is the temperature of the photons at the time of
recombination, and then afterwards the photons are decoupled from
matter and free to propagate in the universe, which becomes the CMB.
As the CMB propagates it can be described as free particles and has a
effective temperature, which is the CMB temperature.

Today, the CMB temperature is measured to be:
$
    T_("CMB") = T_(gamma,0) = 2.725 "K"
$
By definition of effective temperature @sec:effectivetemperature, we
have the following relation:
$
    T_(gamma,0) = T_("dec") (a_("dec") / a_0)
$
One can calculate the ratio between this temperature at recombination
and the temperature of CMB today, which gives us the redshift of the
recombination. remember @eq:scalingtemperature, we have:
$
    z_("rec") tilde a_0 / a_("dec") = T_("dec") / T_("CMB") tilde 1100
$<eq:recombinationredshift>
which is quite at the same order as the redshift of matter-radiation
equality, which is given by $z_("eq") tilde 3000$. This means that the
recombination happens quite close to the matter-radiation equality.
#remark([
    By definition, the redshift should be $z = a_0 slash a - 1$, we
    just ignore the $-1$ since the redshift is quite large.
])

== Neutrino Freeze Out

Now we focus on another process happend before recombination, which is
the neutrino freeze out. Neutrinos interacts with electrons:
$
    nu + e^- arrow.r nu + e^-
$
And when the temperature drops, the interaction will be more difficult
to happen, it will be less dominant than the expansion, and eventually
the neutrinos will freeze out and decouple from the matter.

Yet this interaction is much weaker than the Thompson scattering.
Thus, it is expected to stop happening before the recombination
happens. Lets now calculate the freeze out temperature of neutrinos.


=== Freeze Out Temperature of Neutrinos

The cross section of the neutrino-electron scattering is given by:
$
    angle.l sigma_w v angle.r tilde G_F^2 E^2 quad G_( F ) = g^( 2 ) slash M_( w )^( 2 ) tilde 1 0^( - 5 ) "GeV"^( - 2 )
$
#remark([
    Note we assume that the neutrinos are massless, relativistic
    particles
])
Then we can calculate the $Gamma$ of neutrino-electron scattering as:
$
    Gamma = angle.l sigma_w v N_nu angle.r tilde G_F^2 T^2 T^3
$
#remark([
    Due to the fact we still view neutrinos as relativistic particles,
    we can calculate the energy of neutrinos as $E tilde T$, so we
    have $T^2$.

    Moreover, the number density of neutrinos can be calculated from
    the equilibrium number density of relativistic particles, which is
    given by @eq:relativisticnumber, thus we have $N_nu tilde T^3$.
])

With this data calculated, we can calculate the freeze out temperature
of neutrinos by comparing the scattering effect with the expansion
effect:
$
    Gamma = H quad arrow.r.double quad G_F^2 T^5 = T^2 / M_0
$
This gives us the freeze out temperature of neutrinos as:
$
    T^nu_* = (G_F^2 M_0)^( - 1 slash 3 ) tilde 2 "MeV"
$


=== Neutrino and Photon Effective Temperature Ratio

After freeze out, the particle is not interacting with others, thus
its distribution evloves as a free particle. This means that we can
use the effective temperature to describe the distribution of the
particle, see @sec:effectivetemperature the definition of effective
temperature for relativistic particles at freeze out. By definition:
$
    T_(nu,0) = T_(*)^nu (a_* / a_0)
$
where $T_(nu,0)$ is the effective temperature of neutrinos today,
$T_nu_*$ is the freeze out temperature of neutrinos, $a_*$ is the
scale factor at the freeze out time, and $a_0$ is the scale factor
today.

As I have claimed in former remarks, we often roughly assume that the
effective temperature is the same as the assumed equilibrium (of
course its not) temperature of the universe.
$
    T_(nu,0) tilde T_(gamma,0) ("aka" T_("CMB")) tilde T_0
$
Yet here we meet the first example that this approximation is not
good.

The effective temperature of neutrino is not the same as the CMB
temperature experimentally:
$
    T_(nu,0) eq.not T_("CMB")
$
This is due to the effect that after the neutrino freeze out, the
photons are still interacting with electrons and by then positrons and
electrons annihilate each other, which gives out energy to photons and
heat the photon up. Here is a time line of the process:

#figure(
    image("../assets/freezeouts.png", width: 60%),
    caption: [Timeline of the neutrino freeze out and recombination
        process.],
) <fig-freezeouts>

We can calculate the ratio using the conservation of entropy. We think
that the universe is a closed system, there's nothing "outside" the
universe. Thus, the total entropy of the universe is conserved.

- How Entropy goes?

We further assume that the universe is radiation dominated (as we
always did) and the entropy density of relativistic particle is given
by @eq:relaentropicdensity, then the total entropy of the universe is
given by:
$
    S = s V tilde g_* T^3 a^3 = "constant"
$
#remark([Here we have a $a^3$ due to the fact that the volume of the
    universe is given by $V tilde a^3$.])

Then we consider right after the neutrinos freeze out, the interacting
particles we assume only includes electrons, positrons and photons
forming a plasma, and the neutrinos are already decoupled from the
plasma.

Thus the total entropy of the universe is given by:
$
    S tilde (g_gamma + g_(e^+ e^-)) (T_*^nu)^3 a_*^3 quad g_(* gamma) = 2, quad g_(* e^+ e^-) = 7/8 (2+2)
$

Then some time later the positrons and electrons annihilate each
other, the entropy of the universe is given by:
$
    S tilde g_(* gamma) T^3 a^3
$

- How Effective temperature goes?

The neutrino effective temperature goes like $T tilde 1/a$, thus we
have:
$
    (T_(*)^nu) a_* = T_(nu,0) a_0
$
Then the photon freeze out the effective temperature still goes like
$T tilde 1/a$. Thus we have:
$
    T_"rec" a_"rec" = T_(gamma,0) a_0
$
#note([
    Note that the electron, photon gas doesn't evolve naively as
    $T tilde 1/a$, this is because of the effect of the annihilation
    of electrons and positrons, which gives out energy to photons and
    heat the photon up.
])

- Calculate the ratio

With all these ingrediants, we can calculate the ratio between the
neutrino effective temperature and the photon effective temperature
as:
$
    (T_(gamma,0) )/(T_(nu,0)) = (a_"rec" T_"rec")/(a_* T_*^nu) = ((g_gamma + g_(e^+ e^-)) / g_gamma)^(1 slash 3) = (11/4)^(1 slash 3) = 1.401
$
#note([
    In fact this effective temperature ratio relation is true for any
    time after the recombination.
])
From this equation we can get the effective temperature of neutrinos
today from the CMB temperature:
$
    T_(nu,0) = T_("CMB") / 1.4 tilde 2 "K"
$

=== Cosmological Bound on Neutrino Mass

We first calculate the number density of neutrinos today, which is
given by the number density from effective temperature, for particle
freeze out when being relativistic:
$
    N_(nu,0) = (3/4) g_nu (zeta(3) / pi^2) T_(nu,0)^3
$
There are different spicies of neutrinos, and due to the fact they
interact with electrons in the same style we take this number density
to be true to all spicies of neutrinos. Due to the relation between
the photon effective temperature and the neutrino effective
temperature, we can express the number density of neutrinos today
through the photon number density today, which is given by:
$
    N_(nu,0) = 3/22 N_(gamma,0)
$
#note([
    Note that in this calclulation $g_nu = 1$ and $g_gamma = 2$. We
    note that the neutrinos are chiral particles.
])

In all above calculations we take the neutrinos to be massless
particles, however, in reality from the neutrino oscillation
experiments we know one neutrino is massless and others may have mass.

We want to use this number density to bound the mass of neutrinos. To
do this, we know in fact the energy density of different spicies of
particles are measureable, and for mass particles we have data;
$
    Omega_M < 0.4
$
There is a bound that:

- Neutrino can not take up all matter in the universe

Mathematically, we have:
$
    Omega_nu = (rho_(nu,0)) / (rho_c) < Omega_M tilde 0.4
$
As non-relativistic particles, the energy density of massive neutrinos
can be:
$
    rho_(nu,0) = sum_i m_(nu,i) N_(nu,0) = sum_i m_(nu,i) (3/22) N_(gamma,0)
$
Eventually, we can get the bound on the mass of neutrinos as:
$
    sum_i m_(nu,i) <= 10 "eV"
$

#remark([
    There are modern cosmological data that can give us a much
    stronger bound on the neutrino mass, which is given by:
    $
        sum_i m_(nu,i) <= 0.2 "eV"
    $
])
