#import "../env/lib.typ": *

= Lecture 5: Thermal History of the Universe II: Non-Equilibrium

The Universe is not always in thermal equilibrium, now we have to
consider the non-equilibrium processes in the universe.

== Free Particle Boltzmann Equation

=== A Convention Shift
For a non-equilibrium system, we need to consider the Boltzmann
equation, which describes the evolution of the distribution function
of particles in phase space. Here we use a different convention (as in
the lecture note), we have:
$
    n_(i "old") (p,t) =(2 pi)^3/ g_i f_i (p,t) quad arrow.r quad n_i (p,t) = (2 pi)^3 f_i (p,t)
$
Then the number density is:
$
    N_i = integral (d^3 p)/(2 pi)^3 n_i (p,t)
$
and similarly for the energy density.

An important remark is that the distribution $p$ we use the *physial
momentum*, for detailed definition see next subsection.

=== Free Particle in an Expanding Universe

We first consider the free particle, in an expanding universe. The
Lagrangian is given by:
$
    cal(L) = 1/2 m g_(i j) (dot(x)^i dot(x)^j)
$
here $dot(x)$ is the derivative with respect to the coordinate time
$t$. We now can explicitly define two momentums:

- *Physical Momentum*: $cal(L) = p_p^2/(2m)$ this gives us:
    $p_p^i = m a(t) dot(x)^i$.

- *Comoving Momentum*: $p_c^i = (partial cal(L))/ (partial dot(x^i))$
    this gives us: $p_c^i = m a(t)^2 dot(x)^i$.

Then from the Euler-Lagrange equation, we can get the equation of
motion of the particle, which is given by:
$
    d/(d t) p_c^i = 0
$
#remark([This can also be view given by the Noether's theorem of
    spacial translation symmetry.])
Wethen can see that the comoving momentum is conserved, which means
that the physical momentum is redshifted by the expansion of the
universe:
$
    p_p^i = p_c^i / a(t) = "constant" / a(t)
$
if we choose an "initial time" $t_0$ and define the physical momentum
at that time as $p_0$and $a(t_0) = a_0$, then we can write the
physical momentum at any time as:
$
    p_0^i = p_c^i / a_0 = p_p^i a(t) / a_0
$
Thus given a time $t$, we want to measure the number of particle with
physical momentum $p$, due to the fact that the comoving momentum is
conserved, the number is equal to number of particle at $t_0$ with
physical momentum $p a(t) / a_0$. Thus we have:
$
    n_i (p,t) = n_i (p_0 = p a(t) / a_0, t_0) equiv n_(0 i) (p a(t) / a_0)
$
Why we care about this form of distribution depends on some "initial
distribution"? it is because particles in the universe, they first
interact with each other when temperature is high and they are likely
to stay in a thermal equilibrium distribution. However, when
temperature lowers down, the interaction is not likely to happen, thus
the particle will behave like a free particle and evolve.

This procesure ensures us the knowledge of the distribution at the
initial time $t_0$ (for example a thermal equilibrium distribution)
and we can use the above formula to see how the distribution evolves
with time.

See the diagram for illustration:

#figure(
    image("../assets/freezeout.png", width: 80%),
    caption: [
        The process of freeze-out.
    ],
) <fig-freezeout>

=== Effective Temperature
<sec:effectivetemperature>

Now consider the process described in above remark. Initially the
particle is in thermal equilibrium, thus we have a thermal
distribution at the initial time $t_0$:
$
    n_(i 0)(p) = g_i 1/(exp((E(p) - mu_i) / T_0) plus.minus 1)
$
Then the interaction turns off and the particle evolves as a free
particle, thus we have:
$
    n_i (p,t) = n_(i 0)(p a(t) / a_0) = g_i 1/(exp((E(p a(t) / a_0) - mu_i) / T_0) plus.minus 1)
$
In some cases, we can define an *effective temperature* and make all
the time dependence of this distribution into the effective
temperature. Thus we can use this effective temperature and a
equilibrium distribution to describe the distribution of the particle
at any time.

#remark([
    The effective temperature is not really a temperature for the
    particle is free and not in thermal equilibrium and we don't have
    a notion of temperature.

    Yet it is a measurable quantity, for we can measure the energy
    distribution of the particle and fit it with a thermal
    distribution, then we can get the effective temperature from
    experiment.
])

- *Relativistic Particle at the time of Freeze Out*

For massless particle, the energy is given by $E(p) = p$, if we
negelect the chemical potential, we have:
$
    n_i (p,t) = g_i 1/(exp((p a(t)) /( a_0 T_0)) plus.minus 1)
$
Then we define the effective temperature as:
#definition[Effective Temperature for Massless Particle][
    The effective temperature for a relativistic particle at the time
    of freeze out is given by:
    $
        T_"eff" (t) = T_0 a_0 / a(t)
    $
    note that this is independent of the epoc we are in.
]
Then the distribution of the particle can be written as:
$
    n_i (p,t) = g_i 1/(exp(p / (T_"eff" (t))) plus.minus 1)
$


1. *Number density* using effective temperature

    We can also get the number density of the particle:
$
    N_i (t) tilde g_i T_"eff"^3
$

2. *Energy density* using effective temperature

    It is also important to clarify that only number density goes like
    the case of plugging in the effective temperature into the
    equilibrium distribution. The energy density, may not be the case
    due to the fact that at later time the particle is not
    relativistic anymore, thus the energy is not given by $E(p) = p$.

    In that case, we often just use the effective temperature to
    calculate the number density, and then use the relation:
    $
        rho tilde N m
    $
    to get the energy density.

3. *Entropy density* using effective temperature

    It is also interesting that plugging in the effective temperature
    into the equation:
    $
        s tilde g_* T_"eff"^3
    $
    is true! though it is not true for energy density. This is because
    the entropy density of freeze out particle goes like
    $s tilde a^(-3)$, which is the same as $T_"eff"^3$, thus we can
    get the above relation.

Before in discussing CMB temperature, we in fact mixed the concept of
effective temperature of photon and the assumed radiation dominate
equilibrium temperature. A justification for the correct result may be
that they both evolve as:
$
    T_"eff" (t) = T_0 a_0 / a(t) quad "and" quad T(t) = T_0 a_0 / a(t)
$
#note([
    Note that the left equation is general for effective temperature,
    the right one is only for radiation dominant universe.
])


- *Massive Particle at the time of Freeze Out*

See section 2.5 of the book @gorbunovIntroductionTheoryEarly2017 for
more details.




=== Free Particle Boltzmann Equation

Then we can derive the Boltzmann equation for a free particle in an
expanding universe. We have:
$
    partial/(partial t) n_i (p,t) = d/(d t) n_(0 i) (p a(t) / a_0) = (n_(0i)^prime) times (p (dot(a)(t)) / a_0)
$
and
$
    (partial ) / (partial p) n_i (p,t) = n_(0i)^prime times (a(t) / a_0)
$
we combine the two equations together, we can get:
$
    partial/(partial t) n_i (p,t) - ((dot(a)(t)) /( a(t)) p) (partial ) / (partial p) n_i (p,t) = 0
$
Then we have the Boltzmann equation for a free particle in an
expanding universe:
#theorem[Free Particle Boltzmann Equation][
    The Boltzmann equation for a free particle in an expanding
    universe is given by:
    $
        partial/(partial t) n_i (p,t) - (H p) (partial ) / (partial p) n_i (p,t) = 0
    $
    where $H = (dot(a)(t)) / a(t)$ is the Hubble parameter.
]
We can see that a "free particle" in an expanding universe is not
really free, it is affected by the expansion of the universe, which
causes the redshift of the physical momentum.

We then can integrate the Boltzmann equation over the momentum space,
we can get the equation for the number density:
$
    dot(N)_i (t) + 3 H(t) N_i (t) = 0
$
#remark([
    Remember the convention is changed and we integrate with
    $(d^3p) slash (2 pi)^3$ measure. We'd mainly prefer using number
    density instead of distribution function as the variable.
])




== Interacting Particle Boltzmann Equation


=== Interacting Particle Boltzmann Equation

Then we consider a particles with interactions. The generalization is
done by adding a collision term $I_("col")$ to the Boltzmann equation:
#theorem[Interacting Particle Boltzmann Equation][
    The Boltzmann equation for an interacting particle in an expanding
    universe is given by:
    $
        partial/(partial t) n_i (p,t) - (H p) (partial ) / (partial p) n_i (p,t) = I_("col")
    $
    where $I_("col")$ is the collision term, which describes the
    interactions of the particle with other particles.
]
If we focus on *2 to 2 scattering procedure*, the collision term can
be written in terms ofthe scattering amplitude of the procedure, which
is given by:
$
    I_("col")= & - 1/(2 E_p) integral
    (d^3 q_1)/((2 pi)^3)
    (d^3 q_2)/((2 pi)^3)
    (d^3 q_3)/((2 pi)^3)
    (2 pi)^4 delta^((4))(p + q_1 - q_2 - q_3)
    |cal(M)|^2 \
    times & [n(p) n(q_1) (1 plus.minus n(q_2))(1 plus.minus n(q_3)) - n(q_3) n(q_2) (1 plus.minus n(p))(1 plus.minus n(q_1))]
$

This equation is quite imposible to solve analytically, yet we have
the technique of *Relaxation Time Approximation*, which we expand
around the equilibrium distribution $n_(i)^("eq")(p)$.


=== Relaxation Time Approximation

We consider at $H = 0$ we have the equilibrium distribution
$n_(i)^("eq") (p)$, we can prove that:
$
    I_("col") (n_(i)^("eq")(p)) = 0 quad "and" quad d/(d t) n_(i)^("eq")(p) = 0
$
where $n_i^("eq")$ is exactly the Bose-Einstein distribution or the
Fermi-Dirac distribution.

- This means that in an interaction dominat system, all particle tends
    to have the equilibrium distribution, which is given by the
    Bose-Einstein distribution or the Fermi-Dirac distribution.

Then we can expand the actural distribution around the equilibrium
distribution, in this limit:
$
    I_("col") (n_i) = I_("col") (n_(i)^("eq") + delta n_i) = I_("col") (n_(i)^("eq")) + ((delta I_("col")) / (delta n_i)) delta n_i + ... = - Gamma times (n_i - n_(i)^("eq"))
$
Thus the Boltzmann equation becomes:
$
    partial/(partial t) n_i (p,t) - (H p) (partial ) / (partial p) n_i (p,t) = - Gamma times (n_i - n_(i)^("eq"))
$
or if we integrate over the momentum space, we can get the equation
for the number density:
#theorem[Relaxation Time Approximation Boltzmann Equation][
    The Boltzmann equation for an interacting particle in an expanding
    universe in the relaxation time approximation is given by:
    $
        dot(N)_i (t) + 3 H(t) N_i (t) = - Gamma times (N_i (t) - N_(i)^("eq"))
    $
]
Now we talk more about $Gamma$. It has a physical meaning as the *rate
of reaction*:
$
    Gamma = 1/tau = angle.l lambda slash v angle.r^(-1)
$
where $tau$ is the *mean free time* of the collition and $lambda$ is
the *mean free path* of the collition and $v$ is the *relative
velocity* of the particle. The mean free path is related to the *cross
section* of the collition by:
$
    lambda = 1/(sigma N)
$
where $sigma$ is the cross section of the collition and $N$ is the
number density of the particle. A commonly used formula for $Gamma$ is
given by:
$
    Gamma = angle.l N v sigma angle.r
$
Thus we can see that $Gamma$ is not time independent, it depends on
the number density of the particle and the velocity of particle, which
can change with time.

== Freeze-in and Freeze-out

With this Boltzmann equation, we can now understand the process of
*freeze-in* and *freeze-out* of particles in the early universe. Note
that from the Boltzman equation, the number of particles changes due
to two effects:

- *Expansion of the universe*: which is given by the term
    $3 H(t) N_i (t)$.

- *Interactions of the particle*: which is given by the term
    $- Gamma times (N_i (t) - N_(i)^("eq"))$.

Both terms are given by a rate $Gamma$ and $H$. We can find that both
rates are *Temperature Dependent*:

- $Gamma$ depends on $v$ the relative velocity of the particle, which
    is related to the temperature of the universe.

- $H$ depends on time as univers expands, which is also related to the
    temperature of the universe @eq:temperaturetime.

Thus, as the universe cools down, different terms will dominate at
different temperature, which gives us the process of freeze-in and
freeze-out.

=== Assymptotic Behavior of the Boltzmann Equation

We discuss first the asymptotic solution of the Boltzmann equation. We
have two limits:

- $Gamma(T) >> H(T)$: in this limit, the interaction term dominates,
    thus we have
$
    N_i (t) approx N_(i)^("eq")
$
which means that the particle is in thermal equilibrium with the
universe.

- $Gamma(T) << H(T)$: in this limit, the expansion term dominates,
    Boltzmann equation becomes:
$
    d/(d t) (a^3 N_i) = 0
$
Thus, the number density deviate from the equilibrium value, and we
have:
$
    N(t) approx N^("eq")(T_*) ((a (T_*)) / a(T))^3
$<eq:freezeoutnumberdensity>
#note([
    The $T$ we write here is the temperature of the universe at the
    time we interested in, which serve as a time counting tool, not
    the effective temperature. As a bonus, we can get the relation
    between the number density and the current temperature at some
    time. This may generally be different from the effective
    temperature.
])

#note([
    For particle freeze out when being relativistic, discussion of
    effective temperature tells us that:
    $
        N(t) tilde g_i T_"eff"^3 tilde g_i (T_* a_* / a(t))^3
    $
    this is consistent with the above result.
])
where $T_*$ is the temperature at which $Gamma(T_*) approx H(T_*)$.
This means the time we should not only consider the expansion of the
universe, but also the interaction of the particle.

The critical temperature $T_*$ is called the *freeze-out/in
temperature* of the particle, depends on $Gamma/H$ is decresing or
increasing with temperature, we can have freeze-out or freeze-in
process.


== Electron-Positron Gas Freeze-out

We finally can come to a concrete example of the freeze-out process,
which is the freeze-out of the electron-positron gas in the early
universe. We consider the following scattering process:
$
    e^+ e^- <-> gamma gamma
$
With this process occuring we assume that the universe is *radiation
dominant* !!

=== Scattering Cross Section and Rate of Reaction

The scattering cross section of this process is given by:
$
    sigma = cases(
        1/(2 v) pi r_e^2 quad v << 1,
        ,
        m_e^2/E^2 pi r_e^2 (log((2 E)^2 / m_e^2) - 1) quad v approx 1
    )
$
where $r_e$ is $alpha / m_e$, $E$ is the center of mass energy of the
collition, and $v$ is the relative velocity of the particle.

This cross section is depending on the velocity of the particle, which
is related to the temperature of the universe. In both limits we can
calculate the rate of reaction $Gamma$:

- *Relativistic Limit*: $T >= m_e$ in this limit we take:
$
    sigma approx m_e^2 / E^2 pi r_e^2 (log((2 E)^2 / m_e^2) - 1) approx alpha^2 / T^2
$
#remark([
    In this approximation we take $E approx T$ for relativistic
    particle and we assume the logerithm term is order of 1.
])
and remember that the number density of relativistic particle for
equilibrium case is given by:
$
    N_i^("eq") =3/4 (zeta(3) / pi^2) g_i T^3
$<eq:relativisticnumberdensity>
Thus we have:
$
    Gamma = angle.l N v sigma angle.r tilde alpha^2 T
$

- *Non-Relativistic Limit*: $T <= m_e$ in this limit we take:
$
    sigma approx 1/(2 v) pi r_e^2
$
and remember that the number density of non-relativistic particle for
equilibrium case is given by:
$
    N_i^("eq") = g_i ((m_i T) / (2 pi))^(3/2) exp ((mu_i - m_i) / T)
$<eq:nonrelativisticnumberdensity>
Thus we have:
$
    Gamma = angle.l N v sigma angle.r tilde r_e^2 (T m_e)^(3/2) exp ((- m_e) / T)
$
#remark([
    We here take the chemical potential $mu_i$ to be zero, which is a
    good approximation in the radiation dominant universe.
])

=== Freeze-in/out Temperature

We list out the rate of reaction and the Hubble parameter:
$
    Gamma = cases(
        tilde alpha^2 T quad T >= m_e,
        tilde r_e^2 (T m_e)^(3/2) exp ((- m_e) / T) quad T <= m_e
    )
$
while the Hubble parameter (in a radiation dominant univers) is given
by @eq:friedmannmatterrad, we copy it here:
$
    H = T^2/M_0
$
#remark([
    We here are assuming that the universe happening all those
    processes is radiation dominant, which is true for the early
    universe. Thus, we can negelact the chemical potential of the
    particle, and use this Hubble parameter to calculate the
    freeze-out/in temperature.
])
We draw the plot of $Gamma$ and $H$ as a function of temperature:

#figure(
    image("../assets/temperaturedependence.png", width: 50%),
    caption: [
        The plot of the rate of reaction $Gamma$ and the Hubble
        parameter $H$ as a function of temperature. The intersection
        point of the two curves gives us the freeze-out/in temperature
        of the particle.
    ],
) <fig-temperaturedependence>
we can calculate the freeze-out/in temperature by solving the equation
$Gamma(T_*) = H(T_*)$:

- *freeze in *: this is easy to solve, we have:
$
    T_("in") tilde alpha^2 M_0 = 10^14 "GeV"
$

- *freeze out*: this is hard to solve, we can only get an approximate
    solution by taking the logerithm of the equation, we have:
$
    r_e^2 (T m_e)^(3/2) exp ((- m_e) / T) tilde T^2 / M_0
$
which gives us:
$
    T_("out") tilde m_e / 40 = 10 "keV"
$

=== Physical Interpretation

In this process, in a radiation dominant universe, we assume that *the
photon is in thermal equilibrium with the universe*, thus we have
$N_gamma tilde a^(-3)$ only changes due to the expansion of the
universe. Then we can use $N_e/ N_gamma$ to represent the number of
electrons.

- When $m_e<T< T_("in")$ the electrons are in thermal equilibrium due
    to the fact that $Gamma >> H$, while we can approximate it as a
    relativistic particle. Due to the fact that
    @eq:relativisticnumberdensity, we have:
$
    N_e / N_gamma tilde g_e / g_gamma tilde 1
$

- When $T_("out") < T < m_e$ the electrons are not in thermal
    equilibrium due to the fact that $Gamma << H$, while we can
    approximate it as a non-relativistic particle. Due to the fact
    that the number density of non-relativistic particle is given by
    @eq:nonrelativisticnumberdensity.

The electron number density shinks exponentially as the universe cools
down.

- When $T < T_("out")$ the scatter is minor and the number of
    electrons is only affected by the expansion of the universe, thus
    now we have the number density of electrons given by as
    $N_e tilde N_* a^(-3)$. where $N_*$ is the number density of
    electrons at the freeze-out temperature $T_("out")$.

If we plot the number density of electrons as a function of
temperature, we can see that the number density of electrons shinks
exponentially as the universe cools down as $T< m_e$, and finally
freezes out at $T_("out")$:

#figure(
    image("../assets/Nfreezeout.png", width: 50%),
    caption: [
        The plot of the number density of electrons as a function of
        temperature.
    ],
) <fig-nfreezeout>
An important remark is that the plot is independent of the initial
number density and things happening at $T> T_("in")$.

