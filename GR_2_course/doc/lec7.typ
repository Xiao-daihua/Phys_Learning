#import "../env/lib.typ": *
= Lecture 7: Big Bang Nucleosynthesis

This is the process before the freeze out discussed in the previous
lectures. During BBN the protons and neutrons combines into light
nuclei, such as deuterium, helium-3, helium-4 and lithium-7.

As a result of BBN, we have the unexplained facts we used in
recombination calculation of number density of hydrogen in
recombination:

- The abundance of protons are of order of 75% and the abundance of
    helium-4 is of order of 25% and others are negligible.

Now lets have a look at what happened during BBN.

== Neutron to Proton Ratio at the Beginning of BBN

=== Generation of Neutrons

At the beginning of BBN, the neutrons are produced and destroyed by
the weak interaction process:
$
    p + e^- <-> n + nu_e
$
protons and electrons can combine to produce neutrons and electron
neutrinos.
#remark([
    According to the time line, in fact neutrinos are already freeze
    out. However, freeze out doesn't really means to decouple, its
    just the interaction rate is smaller than the Hubble expansion
    rate, but it doesn't mean that there is no interaction at all.
])
One can calculate the freeze out temperature of the above process:
$
    T^* tilde T_nu^* tilde 2 "MeV"
$
Thus it happens quite the same time as neutrino freeze out. A more
precise calculation gives the freeze out temperature of the above
process to be around:
$
    T^* tilde 0.8 "MeV"
$
which is slightly after the neutrino freeze out.

=== Saha Equation

Then we calculate the number density. Remeber in recombination we
calculate the number density of electrons using Saha equation. Here we
will use the same method to calculate the number density of neutrons
and protons.

Remember the number density of massive particles:
$
    N_A = g_( A ) ( ( m_( A ) T ) / ( 2 pi ) )^( 3 slash 2 ) upright(e)^( ( mu_( A ) - m_( A ) ) slash T ),
$
and we assume that equilibrium holds, which means that the chemical
potential of the above process should satisfy:
$
    mu_p + mu_e = mu_n + mu_nu_e
$
If we approximate the mass of protons and neutrons to be the same,
then we have:
$
    N_n / N_p = exp(- ( m_n - m_p ) / T + ( mu_e - mu_nu_e ) / T)
$
note here we use $mu_n - mu_p = mu_e - mu_nu_e$ which is from the
chemical potential relation. We already know that
$m_n - m_p tilde 1.3 "MeV"$. We now try to argue that:
$mu_nu_e slash T$ and $mu_e slash T$ are negligible.

=== Negeligible Chemical Potential

There is a basic result in thermaldynamics that the difference of
number density between particle and antiparticle is given by:
#theorem[Particle-Antiparticle Asymmetry][
    The difference of number density between particle and antiparticle
    at $T >> m, mu$ is given by:
    $
        Delta N_i = cases(
            mu T^2 slash 6 quad "fermion",
            mu T^2 slash 3 quad "boson"
        )
    $
]
The proof is that we assume the Boltzmann distribution and take a
limit. Then we use the fact that the chemical potential of
antiparticle is the negative of the chemical potential of particle,
which means that $mu_(overline(i)) = - mu_i$.

With this result, we can see that:
$
    mu_e / T = 6 (Delta N_e) / T^3
$
if we assume the universe is charge neutral, then we have
$Delta N_e = N_p$, and we know that:
$
    N_p tilde eta N_gamma tilde eta T^3
$
Thus we see:
$
    mu_e / T tilde 6 eta << 1
$
We here just *assume* that the chemical potential of neutrinos is also
negligible.

=== Neutron to Proton Ratio

With above preparation, we can see that from the Saha equation, we
have:
$
    N_n / N_p = exp(- ( m_n - m_p ) / T)
$
We plug in the freeze out temperature $T^* tilde 0.8 "MeV"$ and the
mass difference $m_n - m_p tilde 1.3 "MeV"$, we can get the neutron to
proton ratio at the beginning of BBN:
$
    N_n / N_p tilde 1/5
$
#remark([
    There is another effect that we haven't considered, which is the
    neutron decay. However, one can see that the above process
    happened quite fast $tilde 1 s$ which is much smaller than the
    neutron decay time $tilde 880 s$, thus we can ignore the effect of
    neutron decay at the beginning of BBN.
])

== Nuclear Reaction I: Start of Nuclear Reaction

After we have neutrons and protons fixed, they can combine into light
nuclei.

=== General Picture

Here is a general picture of the chain of nuclear reaction during BBN:
$
    p + n <-> D + gamma \
    D+D <-> attach("H", tl: 3) + p, quad D + D <-> attach("He", tl: 3) + n \
    D + attach("He", tl: 3) <-> attach("He", tl: 4) + gamma \
    attach("He", tl: 3) + n <-> attach("H", tl: 4) + p\
    ...
$
The reaction happens so on and so on. One can naively think that the
neuclei with the largest binding energy per nucleon should be the most
abundant, for it takes more energy to break every nucleon out of the
nucleus. The binding energy is given by:
$
    I_A = Z m_p + (A - Z) m_n - m_A
$
and the binding energy per nucleon is given by:
$
    I_A / A = ( Z m_p + (A - Z) m_n - m_A ) / A
$
Here is a table of the binding energy per nucleon for light nuclei:
#align(center)[
    #table(
        columns: (auto, auto, auto, auto),
        align: center,
        stroke: none,
        table.hline(stroke: 1pt),
        table.header([Nucleus], [Z], [A], [I/A (MeV)]),
        table.hline(stroke: 0.5pt),
        [$attach("H", tl: 2)$ (deuteron)], [1], [2], [1.11],
        [$attach("H", tl: 3)$ (triton)], [1], [3], [2.83],
        [$attach("He", tl: 3)$], [2], [3], [2.57],
        [$attach("He", tl: 4)$], [2], [4], [7.07],
        [$attach("Li", tl: 6)$], [3], [6], [5.33],
        [$attach("Li", tl: 7)$], [3], [7], [5.61],
        [$attach("Be", tl: 9)$], [4], [9], [6.46],
        [$attach("B", tl: 11)$], [5], [11], [6.93],
        [$attach("C", tl: 12)$], [6], [12], [7.68],
        [$attach("O", tl: 16)$], [8], [16], [7.98],
        table.hline(stroke: 1pt),
    )
]

We can see that the binding energy per nucleon of helium-4 is a local
maximum. Thus, we may expect in the limit of time for reaction (due to
universe is expanding and cooling down), the most abundant nucleus
should be helium-4, which is consistent with the observation.

And time is not enough for the reaction to produce heavier nuclei,
thus we don't have C, O, etc. in that stage.

=== Producing of Deuterium

To produce all other nuclei, we need to first produce deuterium. The
reaction is:
$
    p + n <-> D + gamma
$
However, in the begining BBN as the neutrons just freeze out, the
temperature is too high, that even if the deuterium is produced, it
will be immediately destroyed by the high energy photons. The reaction
of creating deuterium can be viewed as not happening.

As temperature goes lower, the deuterium can survive. Thus, here we
want to calculate the temperature at which deuterium can survive and
being generated, this will be the beginning of neuclear reaction.

To do this we need assumptions:

+ We assume equilibrium holds. This is the same as we think as long as
    the reaction happens (deuterium survives), it happens fast enough
    to maintain equilibrium.

+ We assume only this nuclei reaction happens and turn off the others.

With equilibrium assumed, we can use the Saha equation to calculate
the number density of deuterium, and we take the temperature that :
$
    N_D / (N_n) tilde 1
$
as the temperature at which deuterium can survive and being generated.

The Saha equation for the above reaction is:
$
    (N_n N_p)/ N_D = ( ( m_p T ) / ( 2 pi ) )^( 3 slash 2 ) upright(e)^( -I_D slash T )
$
We can use the relation that $N_p = eta N_gamma$ and
$N_gamma tilde T^3$, and $I_D$ is the binding energy of deuterium
$I_D tilde 2.23 "MeV"$. Thus one can calculate the temperature at
which deuterium can survive and being generated:
$
    N_n / N_D tilde 1 quad -> quad T_"NS" tilde 70 "keV"
$
we can see this happens much later than the freeze out of neutron to
proton conversion, which is around $0.8 "MeV"$.

Notice that we assume that the neutrons have already freezed out.
However, in fact during the time after neutrons freeze out and
deuterium can survive, the neutrons may dacay. The actual neutron to
proton ratio at the time of deuterium survival is around $1slash 7$
instead of $1 slash 5$.


== Nuclear Reaction II: Abundance of Nuclei

=== Helium-4 Abundance (Rough Estimation)

After deuterium is produced, the reaction can go on and on. As we
analyzed before, the most abundant nucleus should be helium-4. We can
make a rough estimation that all neutrons are used to produce
helium-4, thus determines the abundance of helium-4.

First we have to define a quantity that capture the abundance of a
nucleus:
#definition[Abundance of Nucleus][
    The abundance of a nucleus is defined as :
    $
        x_A = (A N_A) / N_b quad sum_(A) x_A = 1
    $
    where $N_b$ is the number density of baryons, and $A$ is number of
    baryons in the nucleus, and $N_A$ is the number density of the
    nucleus.
]
This means how many percentage of baryons come and form a certain
nucleus.

Then if we assume all neutrons are used to produce helium-4, then we
have:
$
    x_("He") = (4 N_("He")) / N_b = (4 N_n slash 2) / N_b
$
we already know that $N_n / N_p tilde 1 slash 7$ at the time of
deuterium survival, and also by definition $N_p + N_n = N_b$, thus we
can calculate the abundance of helium-4:
$
    x_("He") tilde 4/2 (1 slash 7) / (1 + 1 slash 7) tilde 0.25
$
This gives an answer to the result used in recombination that the
abundance of helium-4 is around 25% and the abundance of protons is
around 75%.

=== Saha Equation for Nuclear Reaction

We want to make a more precise calculation of the abundance for all
nuclei. To do this, we still make assumptions of equilibirum for all
reactions. And view the reaction as a whole, we can write the reaction
as:
$
    Z p + (A - Z) n <-> attach("Nucleus", tl: A) + gamma
$

Then we use can derive a Saha equation for the reaction. Equilibrium
means that the chemical potential of the reaction should satisfy:
$
    Z mu_p + (A - Z) mu_n = mu_A
$
this gives us a Saha equation for the reaction:
#theorem[Saha Equation for Nuclear Reaction][
    The Saha equation for the nuclear reaction is given by:
    $
        N_( A ) = N_( p )^( Z ) N_( n )^( A - Z ) 2^( - A ) g_( A ) A^( 3 slash 2 ) ( ( 2 pi ) / ( m_( p ) T ) )^( ( 3 ) / ( 2 ) ( A - 1 ) ) e^( I_( A ) slash T ),
    $
    where $I_A$ is the binding energy of the nucleus, and $g_A$ is the
    degeneracy of the nucleus.
    $
        I_A = Z m_p + (A - Z) m_n - m_A
    $
    and in the non-exponential part, we assume that $m_A = A m_p$.
]
This equation can be written in terms of abundance:
$
    x_( A ) = x_( p )^( Z ) x_( n )^( A - Z ) N_( b )^( A - 1 ) 2^( - A ) g_( A ) A^( 5 slash 2 ) ( ( 2 pi ) / ( m_( p ) T ) )^( ( 3 ) / ( 2 ) ( A - 1 ) ) e^( I_( A ) slash T ).
$
and we know that the number density of baryons is given by:
$
    N_b = eta N_gamma = eta ( 2 zeta(3) / pi^2 ) T^3
$
we now do an apporximation that the number density of protons are
quite the number density of baryons, $x_p tilde 1$ then we can have a
relation between number density of He and the number density of
neutrons, if we inverse the identity we have:
$
    x_n = x_"He"^(1 slash 2) eta^(3 slash 2) (T/ m_p )^( - 9 slash 4 ) e^( - I_( "He" ) slash ( 2 T ) )
$
Then we make a second approximation that the number density of He is
quite the number density of baryons, $x_"He" tilde 1$, then we can
have the number density of neutrons.

Now we have the ingrediant of $N_B, x_n, x_p$ we can calculate the
abundance of any particles at certain temperature, the final relation
is

#theorem[Abundance of Nucleus][
    The abundance of a nucleus is given by:
    $
        x_A &tilde [eta (T/m_p)^(3 slash 2) ]^(3 slash 2 Z - 1 slash 2 A - 1 ) exp ( I_A slash T - ( (Z - A)/ 2 ) I_( "He" ) slash T ) \
        &tilde exp (I_A/(A-Z) slash T - I_( "He" )/2 slash T )
    $
    This relation is mainly based on that He dominant.
]

Here we can see that the abundance is highly depend of the binding
energy per neutron:
$
    I_A / (A - Z)
$
This also justifies why He dominant for it has the largest binding
energy per neutron.


== Abundance of Deuterium

Using this formula, we can calculate the abundance of deuterium,
helium-3, lithium-7, etc. at the temperature of $T_"NS"$ which gives
us:
$
    x_D tilde 10^(-120)
$
however, in reality the abundance of deuterium is around $10^(-5)$.
This is because the assumption of equilibrium doesn't hold for
deuterium, they freeze out before they are all used to produce
helium-4.

Consider the reactions:
$
    p + n <-> D + gamma \
    D + D <-> attach("H", tl: 3) + p, quad D + D <-> attach("He", tl: 3) + n \
$
we now write out the Boltzmann equation for deuterium:
$
    (d N_D) / (d t) + 3 H N_D = - angle.l sigma v N_D angle.r N_D
$
we now calculate the abundance of deuterium at the time of freeze out,
if we take $N_p tilde N_b$ then we have:
$
    N_p tilde eta N_gamma tilde eta T^3 \
    H tilde T^2 / M_0 tilde Gamma = sigma v N_D
$
Thus we have:
$
    N_D/ N_p tilde 1/(sigma v M_0 eta T)
$
we can plug in some numbers:
$
    T tilde T_"NS" quad sigma v tilde 10^(-17) "cm"^3/s quad M_0 tilde 10^(18) "GeV" quad eta tilde 10^(-9)
$
Finally we can get the abundance of deuterium at the time of freeze
out:
$
    x_D tilde 10^(-5)
$
Notice that this number is quite sensitive to the value of $eta$, thus
we can use the abundance of deuterium to constrain the value of $eta$.
