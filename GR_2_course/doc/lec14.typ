#import "../env/lib.typ": *

= Lecture 14: Inflation and Quantum Fluctuation

== Inflation at Background Level II

=== Slow Roll Parameters

Remember in the slow roll inflation, we have two slow roll conditions:
$
    abs(dot.double(phi)/ (3 H dot(phi))) << 1 quad dot(phi)^2 / (2 V ( phi )) << 1
$
And we have two slow approximation EoMs:
$
    & dot(phi) = - 1/(3H ) V' ( phi ) quad "Equation of Motion (SR)" \
    & H = 1/(M_"pl") ((8 pi V)/3)^(1 slash 2) quad "Friedmann Equation (SR)"
$
We want to express the *slow roll condition purely in terms of the
potential*, thus we see using the EoM we can get a relation between
the kinetic energy and potential energy:
$
    dot(phi) = - ( M_( "pl" ) ) / ( ( 24 pi )^( 1 slash 2 ) ) ( V^( prime ) ) / ( V^( 1 slash 2 ) ).
$<eq-middleslrelat>
Taking it into the second slow roll condition, we can get the first
slow roll parameter:
$
    epsilon equiv ( M_( "pl" )^2 ) / ( 48 pi ) ( V^( prime ) / V )^2 << 1
$
Then we take a derivative of @eq-middleslrelat with respect to time,
we can get the relation:
$
    dot.double(phi) = - ( M_( "pl" ) ) / ( ( 24 pi )^( 1 slash 2 ) ) ( ( V'') / ( V^( 1 slash 2 ) ) - ( 1 ) / ( 2 ) ( V^( prime 2 ) ) / ( V^( 3 slash 2 ) ) ) dot(phi) = - ( M_( P l )^( 2 ) ) / ( 8 pi ) ( ( V'') / ( V ) - ( 1 ) / ( 2 ) ( ( V' ) / ( V ) )^( 2 ) ) H dot(phi),
$
The first slow roll condition can be expressed as:
$
    eta equiv ( M_( "pl" )^2 ) / ( 8 pi ) ( V'' / V ) << 1
$
We can see that if a potential have small slow roll parameters, then
it can drive a period of inflation.


=== Examples of Inflationary Potentials

For example, in fact the quadratic potential
$
    V ( phi ) = 1 / 2 m^2 phi^2
$
can drive inflation, and the slow roll conditions tells us:
$
    M_"pl"^2/ phi^2 << 1
$
Moreover, the energy cannot be too big, otherwise the quantum gravity
effect will be important, thus we have:
$
    m^2 phi^2 << M_"pl"^4
$
Thus, we need field configuration to be extremely large, yet the mass
of field should be very small.


== Inflation Perturbations

Now we focus on the perturbation during inflation.


=== Massless Scalar Field in Minkowski Spacetime

The Lagrangian is given by:
$
    S_( phi ) = ( 1 ) / ( 2 ) integral d^( 4 ) x eta^( mu nu ) diff_( mu ) phi diff_( nu ) phi = ( 1 ) / ( 2 ) integral d^( 4 ) x [ ( diff_( t ) phi )^( 2 ) - ( diff_( i ) phi )^( 2 ) ],
$
And the Hamiltonian is given by:
$
    E = ( 1 ) / ( 2 ) integral d^( 3 ) x [ ( diff_( t ) phi )^( 2 ) + ( diff_( i ) phi )^( 2 ) ].
$
The EoM leads to a mode expansion of the field:
$
    phi ( x, t ) = integral ( d^( 3 ) q ) / ( ( 2 pi )^( 3 slash 2 ) sqrt(2 omega_( q )) ) ( e^( i omega_( q ) t - i q x ) A_( q )^( dagger ) + e^( - i omega_( q ) t + i q x ) A_( q ))
$
And now $q,x$ are all three dimensional vectors and
$omega_q = abs(q)$. We do QFT by promoting $A_q$ and $A_q^dagger$ to
operators, and we have the commutation relation:
$
    [ A_( q ), A_( q' )^( dagger ) ] = delta^( 3 ) ( q - q' )
$
With the on shell mode expansion, the Hamiltonian can be expressed as:
$
    E = integral d^( 3 ) q omega_( q ) ( A_( q )^( dagger ) A_( q ) )
$
Now we are interested in the vaccum equal time correlation function of
the field:
$
    lr(angle.l 0 |) phi (x, t ) phi (y , t ) lr(| 0 angle.r)
$
By the on shell mode expansion, we can get:
$
    braket(0, phi(x, t=0)^2, 0) = integral ( d^( 3 ) q ) / ( ( 2 pi )^( 3 ) 2 omega_( q ) ) = integral_0^infinity q^2/(2 pi)^2 (d q)/q
$

=== Inflation Perturbations

Now we view the inflation field as following;
$
    phi_"full" ( x, t ) = phi.alt_( c ) ( t ) + phi ( x, t ).
$
where $phi.alt_c$ is the classical homogeneous background. We consider
the perturbation dynamical yet the background solution is fixed, and
we consider the effective action of the perturbation, which is given
by:
$
    S_( phi ) & = ( 1 ) / ( 2 ) integral d^( 4 ) x sqrt(- g) [ g^( mu nu ) diff_( mu ) phi diff_( nu ) phi - V''( phi.alt_( c ) ) phi^( 2 ) ] \ & = ( 1 ) / ( 2 ) integral d t d^( 3 ) x a^( 3 ) [ dot(phi)^( 2 ) - a^( - 2 ) ( diff_( i ) phi.alt )^( 2 ) - V''( phi.alt_( c ) ) phi^( 2 ) ].
$
In fact in the slow roll approximation, we have $V''$ small that we
can ignore it at the leading order. Thus, the EoM of the perturbation
is given by:
$
    dot.double(phi) + 3 H dot(phi) - ( 1 ) / ( a^( 2 ) ) diff_( i ) diff_( i ) phi = 0
$
We often work in conformal time, thus we can write the EoM as:
$
    phi''+ 2 ( a' ) / ( a ) phi' - Delta phi = 0, quad "where" Delta = diff_( i ) diff_( i )
$
We now expand the perturbation $phi$ in terms of Fourier modes,
remember that in dS $a(eta) tilde - 1/(H eta)$. Thus:
$
    Delta phi tilde k^2 quad a'/a phi' tilde 1/abs(eta) k
$
#remark([
    #YL([I still don't understand how the second relation comes out.
        why $phi' tilde k$])
])
Thus, we can consider two limit of the EoM:

- If $k/abs(eta) >> k^2$ which is $abs(eta k)<< 1$. The mode is
    *Outside the Horizon*. In this time, the EoM is given by:
$
    phi'' + 2 ( a' ) / ( a ) phi' = 0
$
where one classical solution is a constant:
$
    phi = "const"
$

- If $k/abs(eta) << k^2$ which is $abs(eta k)>> 1$. The mode is
    *Inside the Horizon*. The EoM is given by:
$
    phi'' - Delta phi = 0
$
This means that we have a wave solution for a massless scalar field.

As time goes, we notice that for dS spacetime:
$
    t arrow.r infinity quad eta arrow.r 0 quad abs(eta k) arrow.r 0
$
Thus, we see that as time goes on $abs(eta)$ decreases and modes will
exit the horizon, which is different from the usual radiation dominate
FRW case.

Thus, we expect the perturbation to be initially a wave solution
inside the horizon, then it will exit the horizon and become a
constant solution.

=== Quantization of Inflation Perturbation

To further investigate, it is useful to change a variable:
$
    chi = a(eta) phi
$
By doing some integral by parts and calculate we can get the action of
$chi$:
$
    S_( chi ) & = ( 1 ) / ( 2 ) integral d^( 3 ) x d eta [ ( chi' - ( a' ) / ( a ) chi )^( 2 ) - ( diff_( i ) chi )^( 2 ) ] \ & = ( 1 ) / ( 2 ) integral d^( 3 ) x d eta [ chi'^( 2 ) - ( diff_( i ) chi )^( 2 ) + ( a'') / ( a ) chi^( 2 ) ],
$
We can do an on shell mode expansion. Note that this action behaves
like a time dependent $omega$ harmonic oscillators.

- *Inside Horizon Limit* $abs(k eta) >> 1$: At
    $eta arrow.r - infinity$ limit, we can negelect the gravitational
    effect $a''/a chi^2$ term and it just gives us the mode expansion
    of a free scalar field:
$
    chi ( x, eta ) = integral ( d^( 3 ) k ) / ( ( 2 pi )^( 3 slash 2 ) sqrt(2 k) ) ( e^( i k eta - i k x ) A_( k )^( dagger ) + e^( - i k eta + i k x ) A_( k ) ),
$

- *Exit Horizon* $abs(k eta) tilde 1$: If we consider modes that are
    going to exit horizon, or at time to exit the horizon, then we
    need

$
    chi (x , eta )_( { k } ) = integral_( { k } ) ( d^( 3 ) k ) / ( ( 2 pi )^( 3 slash 2 ) sqrt(2 k) ) ( e^( - i k x ) chi_( k )^( ( + ) ) ( eta ) A_( k )^( dagger ) + e^( i k x ) chi_( k )^( ( - ) ) ( eta ) A_( k) ),
$
in the flat spacetime limit we have
$chi_k tilde e^(plus.minus i omega eta)$. In fact we can solve this
from EoM, the momentum space EoM is given by:
$
    chi'' - 2/eta^2 chi + k^2 chi = 0
$
Fixing the boundary condition to match the flat spacetime limit, we
can get the solution:
$
    chi_k^((plus.minus)) = e^(plus.minus i k eta ) ( 1 plus.minus i / ( k eta ) )
$

- *Outside Horizon* $abs(k eta) <<1$: If we consider modes that are
    outside the horizon, then the oscillation term is negligible, and
    we have:
$
    chi(x, eta)_({k}) = integral_({k}) frac(d^3 k, (2pi)^(3/2) sqrt(2k)) (-frac(1, k eta)) (e^(-i k x + i alpha_k) A_k^dagger + e^(i k x - i alpha_k) A_k)
$
Thus we can also find that:
$
    phi(x, eta)_({k}) = integral_({k}) frac(d^3 k, (2pi)^(3/2) sqrt(2k)) frac(H, k) (e^(-i k x + i alpha_k) A_k^dagger + e^(i k x - i alpha_k) A_k)
$
The result is consistent, since the field fluctuation is time
independent outside the horizon, as we expected.

#remark([
    Notice that all these discussion is based on a certain range of
    modes. We write the expansion as $chi_({k})$ shows that this
    expansion is only valid for some certain modes.
])

We now focus on the super horizon modes, and we want to know the
fluctuation of the field, which is given by the equal time correlation
function, the above on shell mode expansion gives us:
$
    angle.l phi(x, eta)^2 angle.r = integral ( d^( 3 ) k ) / ( ( 2 pi )^( 3 ) 2 ) ( H^2 / k^3 )
$
In momentum space, we have:
$
    angle.l phi(k, eta) phi(k', eta) angle.r tilde delta^( 3 ) ( k + k' ) ( H^2 / ( 2 k^3 ) )
$
This is gives us the famous $1/k^3$ dependent power spectrum instead
of the usual $1/k$ dependent in the flat spacetime.

=== From Quantum To Classical

It is important to address a picture. We usually evaluate a harmonic
oscillator state whether it is in the ground state or semiclassical
state by looking at the two point equal time correlation function.

Then we may notice that, if we consider the $chi$ field:

- At outside horizon limit:
$
    angle.l chi(k, eta) chi(k', eta) angle.r tilde delta^( 3 ) ( k + k' )1/ abs(k eta)^2 1/k
$

- At inside horizon limit:
$
    angle.l chi(k, eta) chi(k', eta) angle.r tilde delta^( 3 ) ( k + k' ) 1/k
$
At outside horizon limit the two point correlation function is much
larger than the inside horizon limit:
$
    angle.l chi(k, eta) chi(k', eta) angle.r_( { abs(k eta) << 1 } ) >> angle.l chi(k, eta) chi(k', eta) angle.r_( { abs(k eta) >> 1 } )
$
We can interpret this as the following result that the state we are
averaging upon is becoming more and more classical as time goes on,
this is effected by the time dependent perturbation term in the
action.

== Inflation Perturbation to CMB Anisotropy

=== Metric Perturbation from Inflation Perturbation

Finally, we want to explain the energy density perturbation, which
lead to the anisotropy that we observe in CMB. We develop the
following argument.

If we assume that the inflation ends (reheating) when the field value
reaches some critical value $phi_"critical"$,

#figure(
    image("../assets/inflationend.png", width: 50%),
    caption: [The end of inflation],
) <fig-inflationend>
then the presence of the perturbation will lead to that different
region of the universe will end inflation at different time. Remember
that we split the inflation field into a classical background and a
perturbation, thus we have:
$
    phi_"full" ( x, t ) = phi.alt_( c ) ( t ) + phi ( x, t )
$
for a certain $x$, the lag or lead of time to reach the critical value
is given by:
$
    delta t_r (x) = phi(x, t) / dot(phi.alt_( c ))
$
Because of this lag or lead in reheating, this cause the primordial
inhomogeneity in energy density and the gravitational field. We can
esitimate them from the lag or lead of reheating time, and we have:
$
    (delta a)/a = (dot(a) delta t_r)/a = H delta t_r
$
if we plug in the dS spacetime $a(t) tilde e^(H t)$, we can get:
$
    (delta a)/a = H delta t_r = H phi(x, t) / dot(phi.alt_( c ))
$
Note the $dot(phi.alt_( c ))$ is related to a small parameter (slow
roll parameter) $epsilon$ as @eq-middleslrelat:
$
    dot(phi.alt_( c )) tilde sqrt(V epsilon)
$
and from the Friedmann equation we have $H M_"pl" tilde sqrt(V)$, thus
we can get:
$
    phi.alt_((i)) tilde (delta a)/a tilde H phi(x, t) / dot(phi.alt_( c )) tilde H / sqrt(V epsilon) phi(x, t) tilde 1/ sqrt(epsilon) phi(x, t) / M_"pl"
$
Thus the metric perturbation is strongly related to the inflation
field perturbation, given that:
$
    angle.l phi.alt_((i)) phi.alt_((i)) angle.r tilde 1/(epsilon M_"pl"^2) angle.l phi phi angle.r tilde delta^3(k+k') 1/(epsilon M_"pl"^2) H^2 / ( k^3)
$
This eventually lead to the anisotropy in we measure as @eq-anisocmb.
Notice that if we want to match the observation, we need:
$
    H^2 / ( epsilon M_"pl"^2 ) tilde 10^(-10)
$


=== Slow roll Parameter Restriction

In reality, the correlation function is not exactly $1/k^3$ but with a
small deviation:
$
    P(k) tilde 1/k^(3+1-n_s)
$
This in fact will give us a restriction on the slow roll parameter
$epsilon, eta$. The result is:
$
    n_s - 1 = - 6 epsilon + 2 eta
$



