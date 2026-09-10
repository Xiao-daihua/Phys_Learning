#import "../env/lib.typ": *


= Lecture 4: Thermal History of the Universe I: Equilibrium

== Review on Euquilibrium Statistical Mechanics

=== Occupation Number and Thermal Distribution Function

For a Equilibrium system, Bosons and Fermions have different
occupational number:
#theorem[Occupartion Number of Bosons and Fermions][
    For a system in equilibrium, the occupation number of bosons and
    fermions are given by:
    $
        n_B (E) = 1 / (e^((E - mu) / T) - 1), quad n_F (E) = 1 / (e^((E - mu) / T) + 1)
    $
    where $E$ is the energy of the state, $mu$ is the chemical
    potential and $T$ is the temperature.
]
The thermal distribution function of the particles are given by
$f(p)$, it is related to the occupation number and the number of dof
of the particle:
#definition[Thermal Distribution Function][
    The thermal distribution function of the particle $i$ is given by:
    $
        f_i (p) = (g_i / (2 pi)^3) n_i (E(p)) quad E(p) = sqrt(p^2 + m_i^2)
    $
]
#remark([
    As a reminder of convention of statistical mechanics. the
    $(2 pi planck.reduce)^3$ or in the above formula $(2 pi)^3$ where
    we set $planck.reduce = 1$ is the density of phase space. and
    $g_i$ is the number of degrees of freedom of the particle, for
    example, for a photon we have $g_i = 2$ because it has two
    polarization states.

    For total number of partitcle, we need to integrate over the phase
    space $d^3 x d^3 p$, yet we leave the spacial part $d^3 x$ out
    because we are interested in the number density, which is the
    number of particle per unit volume. Thus we only integrate over
    the momentum space $d^3 p$.
])
Integrating over $f_i (p)$ gives the *number density* of the particle
and integrating with the weight of energy gives the *energy density*
of the particle:

- *Number Density*:
$
    N_i = integral f_i (p) d^3 p
$

- *Energy Density*:
$
    rho_i = integral E(p) f_i (p) d^3 p
$

=== Energy and Number Density in Relativistic Limit

The number density and energy density at equilibrium can be calculated
explicitly. For particles in the *relativistic limit*, we means really
high temperature::
$
    T >> m_i quad arrow.r.double quad T tilde E tilde |p|
$
and now we assume *zero chemical potential* we can caluclate the
number density and energy density as:

- *Energy Density*:
$
    rho_i = cases(
        (pi^2 / 30) g_i T^4 quad & "Boson",
        ,
        7/8( pi^2 / 30) g_i T^4 quad & "Fermion",
    )
$

- *Number Density*:

$
    N_i = cases(
        (zeta(3) / pi^2) g_i T^3 quad & "Boson",
        ,
        3/4 (zeta(3) / pi^2) g_i T^3 quad & "Fermion",
    )
$<eq:relativisticnumber>
We can also calculate the average energy of the particle in this
limit:
$
    angle.l E angle.r = rho_i / N_i
$
For the convenience of calculating energy density of system with
multiple particle species, we can define the *effective number of
species*:
$
    g_* = sum_("boson") g_i + (7/8) sum_("fermion") g_i
$
and the energy density of the system can be calculated as:
$
    rho = (pi^2 / 30) g_* T^4
$<eq:relativisticenergydensity>

=== Entropy Density in Relativistic Limit

From the second law of thermodynamics, we have:
$
    E = T S - P V + mu N
$
we take the assumption that the chemical potential is zero, then we
have:
$
    s = S/V = (rho + P) / T
$
where $rho$ is the energy density and $P$ is the pressure of the
system. For a relativistic particle remeber we have
@sec:differentparticles, we take $P = 1/3 rho$ for relativistic
particle, thus we have:
$
    s = 4/3 (rho / T)
$<eq:relaentropicdensity>

=== Energy and Number Density in Non-Relativistic Limit

For non-relativistic limit, we means that:
$
    m_i >> T quad arrow.r.double quad E tilde m_i + p^2 / (2 m_i)
$
Note that here $mu$ can be important. In this region the number
density and energy density can be calculated as:

- *Number Density*:
$
    N_i = g_i ((m_i T) / (2 pi))^(3/2) exp ((mu_i - m_i) / T)
$<eq:nonrelativisticnumber>

- *Energy Density*:
$
    rho_i = m_i N_i (T) + 3/2 N_i T
$
However, due to the fact that its a non-relativistic particle, the
rest mass energy is much larger than the kinetic energy, thus we can
approximate the energy density as:
$
    rho_i = m_i N_i
$
Moreover the pressure of the particle is given by:
$
    P_i = g_i N_i T << rho_i
$
Thus, we can see @sec:differentparticles that the pressureless dust
approximation is valid for non-relativistic particle.

== Temperature Today

=== Temperature Today (assuming Equilibrium)

With these preparation of thermaldynamics, we can calculate the
temperature today. We first assume that the universe is:

- $k = 0, Lambda = 0$ and dominated by relativistic particles that are
    in thermal equilibrium.

then the Friedmann equation gives @eq:friedmannmatter :
$
    H = ((8 pi G) / 3 rho_("rad"))^(1/2)
$
And from the thermaldynamics calculation we have
@eq:relativisticenergydensity, we then can see the temperature
dependency of the Hubble parameter:
$
    H = T^2/ M_0 quad M_0 = sqrt(45 / (4 pi^3 G g_*)) = M_"pl"/ (1.66 sqrt(g_*))
$<eq:friedmannmatterrad>
where $g_*$ is the effective number of species at the time.

For a radiation dominated universe, we have $a(t) tilde t^(1/2)$, or
if we choose a time $t_0$to define $a_0$ we have
$a(t) = a_0 (t / t_0)^(1/2)$. Then:
$
    H = dot(a) / a = 1/(2 t)
$
Finally, we arrive at the relation between temperature and time:
$
    T^2 / M_0 = 1/(2 t) quad arrow.r.double quad T = sqrt(M_0 / (2 t))
$<eq:temperaturetime>
Now we can esitimate with real numbers. for $g_*$ we can plug in the
standard model particles which gives $g_* tilde 100$. If we plug in
the age of the universe, then the temperature turns out to be quite as
the same of CMB.

The calculated temperature is not really the CMB, but a temperature
that we assume the universe has if its always radiation dominant and
in thermal equilibrium. However, in fact:

+ Today the universe is not radiation dominated.

+ The CMB temperature is the freeze-out temperature of the photon,
    which is the effective temperature after the photon decouples from
    the matter and stop interacting with it.

Yet its quite amazing that this really rough calculation can give us a
quite sensible result. In future discussions of effective temperature,
we will see how it works.

Here we can also draw a useful relation between $a(t)$ and $T$, for a
radiation dominated universe and roughly assuming the thermal
equilibrium, we have:
$
    a(t) / a_0 = (t / t_0)^(1/2) = (T_0 / T)
$<eq:scalingtemperature>


=== How to count $g_*$

In the above relation of the Hubble parameter in the radiation
dominated universe, we have:
$
    H = T^2/ M_0 = 1.66 sqrt(g_*) T^2 / M_"pl"
$
we know that $M_"pl" = 1.22 times 10^(19) "GeV"$, now we need to count
$g_*$. We currently use the standard model of particle physics, which
has the following particles:

- Scalar Fields

    - Higgs: $g_i = 1$ (one degree of freedom)

- Fermions (times $7/8$ to get effective number of species)

    - Electron: $g_i = 4$ (two spin states and particle-antiparticle)

    - Neutrino: $g_i = 2 times 3$ (one spin state and
        particle-antiparticle and there are 3 kinds of neutrino)

    - Muon: $g_i = 4$ (two spin states and particle-antiparticle)

    - Tau: $g_i = 4$ (two spin states and particle-antiparticle)

    - Quarks: $g_i = 6 times 2 times 3 times 2 = 72$ (two spin states
        and particle-antiparticle and there are 6 kinds of quarks and
        each quark has three color states)

- Vector Fields

    - Photon: $g_i= 2$ (two polarization states)

    - Gluon: $g_i = 8 times 2 = 16$ (eight gluons and two polarization
        states)

Thus in total we have:
$
    g_* tilde 106.75
$
