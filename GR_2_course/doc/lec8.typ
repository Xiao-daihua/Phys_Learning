#import "../env/lib.typ": *

= Lecture 8: Baryongenesis and Dark Matter

Before the BBN process, we need to first have a lot of baryons in the
universe. In cosmology we initially assume that:

- There are equal number of baryons and anti-baryons in the early
    universe.

#note([
    Note that this is different from the electron and positron case,
    where we assume that electric charge is conserved, thus we have
    more electrons than positrons in the early universe, to be equal
    to the number of protons, thus the universe is electrically
    neutral.
])

Thus it is clear that in the early universe, there should be a process
of:

+ Bayongenesis: the number of baryons and anti-baryons are not equal,
    there exist a:
    $
        (Delta n)/n <<1
    $
+ Baryons and anti-baryons annihilate each other, and only a small
    fraction of baryons survive after the annihilation process.


This process is currently not well tested, however, we can still talk
about some of the theoretical models of baryogenesis.

== General Picture

=== General Picture of Baryongenesis

A modern assumed picture of the process is as follows:

- At $T>> 1 "GeV"$ we have baryon symmetry:
$
    n_B tilde n_(overline(B)) tilde n_gamma tilde T^3
$

- Then some process of baryogenesis happens, that makes:
$
    (Delta n)/ n_B tilde eta_B tilde 10^(-10)
$
and now the asymetry is fixed and baryon number
$Delta n = n_B - n_(overline(B))$.

- Finally, the baryons and anti-baryons annihilate each other, and
    only a small fraction of baryons survive after the annihilation
    process.

#figure(
    image("../assets/baryongen.png", width: 50%),
    caption: [A picture of the process of baryogenesis.],
) <fig-baryongen>


=== Sakharov's Conditions

There are several conditions for baryogenesis to happen, which are
called the Sakharov's conditions:

+ *Baryon number violation*: there must be some process that violates
    the baryon number, making $B = n_B - n_(overline(B))$ unconserved,
    otherwise we cannot generate a baryon asymmetry.

+ *C and CP violation*: there must be some process that violates the C
    and CP symmetries.

+ *Departure from thermal equilibrium*: there must be some process
    that takes place out of thermal equilibrium, otherwise the baryon
    asymmetry will be washed out by the inverse process.

We then can see that the *standard model* is a good candidate for
baryogenesis, since it has all the three conditions.

== Baryongenesis Process

A fact is that the *standard model* statisfies all three Sakharov's
conditions, thus it is a good candidate for baryogenesis.

=== Sphaleron Process

Naively, the standard model preserved baryon number. In reality we
didn't see any protons decay.

- Indeed, perturbatively, the standard model preserved baryon number

- However, there are non-perturbative processes that violate baryon
    number, which are called the *sphaleron* processes.

The decay rate of the sphaleron process is given by:
$
    Gamma_("sph") tilde e^(-E_("sph") slash T ) quad E_("sph") tilde 100 "GeV"
$
we can see that at low temperture, the sphaleron process is highly
suppressed, however, at high temperture, the sphaleron process can be
very efficient.

Naively, we see a process of violating baryon number. However, if we
look deeper, it has the opposite effect we want. The sphaleron process
is of thermal equilibrium if $T>= 100"GeV"$. Thus, if we generate a
baryon asymetry throught whatever process in early universe, the
sphaleron process will wash out the baryon asymmetry.

- However, in SM $B-L$ is an exact symmetry, thus if some process
    generates a non-zero $B-L$ asymmetry, then the sphaleron process
    will not wash out the baryon asymmetry.
#remark[
    Note that $B$ here is baryon number $B = n_B - n_(overline(B))$
    and $L$ is lepton number $L = n_L - n_(overline(L))$.
]
Thus a crutial point of having baryongenesis to survive the sphaleron
process is to have a non-zero $B-L$ asymmetry. There are several
models of baryogenesis

+ *Beyond SM*: A common assumption is to add heavy particles in SM
    that can decay in a way that violates $B-L$ symmetry, thus
    generating a non-zero $B-L$ asymmetry.

+ *Within SM*: there is a possibility of generating a non-zero $B-L$
    asymmetry within the standard model, which is called the
    *electroweak baryogenesis*.

#remark([
    However, this is based on some assumptions that didn't really hold
    in reality, thus it is not a very good model of baryogenesis.
])


=== Electroweak Baryogenesis

This mechanism is based on a "wrong" assumption that the electroweak
phase transition is a first order phase transition, which is not the
case in reality. This subsection will just be a sketch and details
will be missing.

If we assume the electroweak phase transition is a first order phase
transition. Then as the phase transition happens, there will be two
local minima of the free energy coexisting, and there will be bubbles
of the true vacuum.
#note([
    Just imagine as the boiling water, there are bubbles of steam
    coexisting with the liquid water, and the steam is the true vacuum
    and the liquid water is the false vacuum, yet a local minima.
])

Now sphaleron processes at the bubble wall will violate the baryon
number, and create more baryons in the bubbles. And as we all end up
in the true vacuum, the sphaleron process will stop as the temperature
drops, thus the baryon asymmetry generated in the bubbles will be
preserved.

== Residue of Antibaryons

We now try to calculate how much of the anti-baryons can survive after
all the annihilation process. See page 316 of
@gorbunovIntroductionTheoryEarly2017 for details.

Before calculating the freeze out temperature, we compare $Gamma$ with
$H$. Now we use a different but equivalent way of doing this. Remember
the Boltzmann equation:
$
    ( d N_( X ) ) / ( d t ) + 3 H N_( X ) = - angle.l sigma_( "ann") dot.c v angle.r dot.c ( N_( X )^( 2 ) - N_( X )^( e q ) zwj^( 2 ) ).
$
We ask when the annihilation process freezes out, we see that:

- The expansion of universe make the equilibrium number density
    $N^( e q )$ decrease.

- To maintain the equilibrium, the annihilation process need to be
    efficient enough to follow this decrease, and the characteristic
    speed of this process is given by:
$
    - angle.l sigma_( "ann" ) v angle.r dot.c N^(e q 2)
$
Thus we now have a different way of comparing $Gamma$ with $H$, which
is to compare:
$
    angle.l sigma_( "ann" ) v angle.r dot.c N^( e q 2) quad "and" quad d/(d t) N^( e q )
$
The freeze out temperature is then given by the condition:
$
    angle.l sigma_( "ann" ) v angle.r dot.c N^( e q 2) tilde d/(d t) N^( e q )
$

Now we generalize this to the case of baryons and anti-baryons. We
have the Boltzmann equation:
$
    ( d ( N_( B ) a^( 3 ) ) ) / ( d t ) = - angle.l sigma_( "ann" ) v angle.r dot.c ( N_( B ) N_( overline(B) ) a^( 3 ) - N_( B )^( e q ) N_( overline(B) )^( e q ) a^( 3 ) )
$
Thus the freeze out temperature is given by the condition:
$
    abs((d  N_( overline(B) )^( e q ) a^( 3 ) ) / ( d t ) ) tilde lr(angle.l sigma_( "ann" ) v angle.r) dot.c N_( B )^( e q ) N_( overline(B) )^( e q ) a^( 3 ).
$
#remark([
    We use this freeze out condition is because this is an annhilation
    process the number density appears in $Gamma$ is that of the other
    particles.
])

Now we use some trick to evaluate this condition. A fact is that the
particle and anti-particle have opposite chemical potential, thus we
have at equilibrium:
$
    N_B^( e q ) = ( ( m_( p ) T ) / ( 2 pi ) )^( 3 slash 2 ) e^( - ( m_( p ) - mu_( B ) ) / ( T ) ), quad N_( overline(B) )^(e q ) = ( ( m_( p ) T ) / ( 2 pi ) )^( 3 slash 2 ) e^( - ( m_( p ) + mu_( B ) ) / ( T ) ).
$
Thus we know that:
$
    N_( B )^( e q ) N_( overline(B) )^( e q ) = ( ( m_( p ) T ) / ( 2 pi ) )^( 3 ) e^( - 2 m_( p ) / ( T ) )
$
Then we use a trick of plugging in the number density of baryons in
terms of photons (quite a common trick for evaluation)
$N_B = eta N_gamma$ and $N_gamma tilde T^3$, we have:
$
    N_(overline(B))^(e q) tilde ( m_p^3 / ( eta) ) e^( - 2 m_( p ) / ( T ) )
$<eq:approxnumberdensityanti>
We can see that the number density of anti-baryons is exponentially
suppressed by the factor $e^( - 2 m_( p ) / ( T ) )$, this dominate
the time evolution of $a^3 N_(overline(B))^(e q)$ on the LHS. Thus we
approximate:
$
    abs((d N_( overline(B) )^( e q ) a^( 3 ) ) / ( d t )) tilde abs((d N_( overline(B) )^( e q ) ) / ( d t )) a^( 3 )
$
Now remember in the radiation dominate era, we have:
$
    T = sqrt(M_0/(2 t)) "thus" abs((dot(T)) / ( T )) = 1/(2 t) = H
$
Thus the LHS of the freeze out condition is given by:
$
    abs(a^( 3 ) ( d N_( overline(B) )^( e q ) ) / ( d t )) tilde a^( 3 ) ( m_( p ) ) / ( T ) H dot.c N_( overline(B) )^( e q ). quad "where" H = T^2/M_0
$
Now the freeze out condition is purely a function of temperature and
constants, we can solve it to get the freeze out temperature. The
result is:
$
    T tilde 10 "keV"
$
We plug in this temperature into @eq:approxnumberdensityanti to get
the number density of anti-baryons at freeze out, and we get:
$
    N_( overline(B) )^( e q ) tilde 10^(-10^5)
$
which is an extremely small number, thus we can safely say that there
is no anti-baryons left after the annihilation process.
