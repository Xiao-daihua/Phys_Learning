#import "../env/lib.typ": *

= Lecture 3: Cosmological Horizons, dS Spacetime and Distance

== Cosmological Horizons

We consider the Penrose diagram of a FRW metricw, generally the metric
can be written as:
$
    d s^2 = - d t^2 +a(t)^2 d x^2
$
Here we use $d x^2$ to represent the spactial metric. Then we can make
a change of vairables:
$ d eta = (d t)/(a(t)) $<eq:teta>
Thus we can have the metric using $(eta , x)$ coordinate as:
$
    d s^2 = a(eta)^2 (- d eta^2 + d x^2)
$
which is a conformally Minkowski metric. Then we need to fix the shape
of the Penrose diagram. To do this we have to know what value can we
take for $eta$ as $t$ goes from $t_0 = 0$ to $t = +infinity$. We can
integrate the relation @eq:teta and assume at $t = 0, eta = eta_*$:
$
    eta = integral_0^t (d t')/(a(t')) + eta_*
$<eq:integraleta>
We assume that the space is flat and the spacetime is filled with
$P = omega rho$ content. Then a general solution is:
$
    a(t) tilde t^(2/(3(1+omega)))
$
Then we can see that $omega > -1/3$ and $omega < -1/3$ gives two cases
for the behavior of $eta$ as $t$ goes to zero and infinity.


=== Case 1: $omega > -1/3$ decelerating universe

In the case, we can find that the integral @eq:integraleta converge at
$t = 0$ but diverge at $t = + infinity$. we can choose a suitable
$eta_*$ to make $eta$ go from $eta_*$ to $+ infinity$, and at
$t = 0, eta = eta_*$ the metric is singular. Thus the penrose diagram
behaves as:

#figure(
    image("../assets/penrose.png", width: 20%),
    caption: [Penrose diagram for a decelerating universe with
        $omega > -1/3$],
) <fig-penrose>


=== Case 2: $omega < -1/3$ accelerating universe

In this case, we find the integral @eq:integraleta diverge at $t = 0$
but converge at $t = + infinity$. This means that for an accerlating
universe, we can choose a suitable $eta_*$ to make $eta$ go from
$- infinity$ to a finite number and at $t = 0, eta = - infinity$ there
is a singularity. Thus the penrose diagram be like:

#figure(
    image("../assets/penrosedivini.png", width: 20%),
    caption: [Penrose diagram for an accelerating universe with
        $omega < -1/3$],
) <fig-penrosedivini>

We can see that in this case, there exist something called a
*Cosmological Horizon*. It is originate from the fact that two points
in the spacetime can never send information to each other, for the
light can never reach each other before touching the future infinity.

This is interpret as the Universe is accerlating in expanding, thus
the light can never catch up with the expansion of the universe.


Also notice that the general penrose diagram of the FRW metric with
$k = 0, Lambda = 0$ is like follows:

#figure(
    image("../assets/penrosefrw.png", width: 90%),
    caption: [Penrose diagram for the general FRW metric with
        $k = 0, Lambda = 0$],
) <fig-penrosefrw>



== De Sitter Spacetime

=== Cosmological Constant Case with Flat Spatial Curvature

<sec:cosmologicalconstant>

We now focus on a special case of $k = 0, Lambda = 0$ universe with
the matter content of $omega = -1$ which is the cosmological constant
case. Or equivalently $Lambda eq.not 0, rho = 0$. Note that it is not
include in the general matter case @sec:generalmatter, since the
solution is distinct.

In this case, the Friedmann Equation and Energy Conservation of Matter
becomes:
$
    (dot(a) / a)^2 = Lambda / 3, quad rho = "const" := Lambda / (8 pi G)
$
Thus we can get the solution that:
$
    a(t) = exp(H t), quad H = sqrt(Lambda / 3),
$
This solution we can see that $t$ goes from $- infinity$ to
$+ infinity$. There is a singularity at $t = - infinity$ where
$a(t) = 0$.
#remark([
    Here we take a convention that $a_0 = 1$ and in fact there are two
    solutions $e^(H t)$ and $e^(- H t)$. We can choose the solution
    $e^(H t)$ since it is more physical, which means that the universe
    is expanding. The other solution $e^(- H t)$ is a contracting
    universe, and singularity at $t = + infinity$ where $a(t) = 0$.
    However, this solution is not physical since we believe that the
    universe is expanding, thus we can discard this solution.
])

=== Penrose Diagram

We can make a change of variable:
$ eta = integral (d t) / (a(t)) = - e^(- H t) / H $
Thus we can get the metric in the $(eta, x)$ then the metric becomes:
$
    d s^2 = (a_0^2) / (H^2 eta^2) (- d eta^2 + d x^2)
$
we can see the range of the parameter $eta$:

- as $t arrow.r infinity$ $eta arrow.r 0^-$ which is far future.

- as $t arrow.r - infinity$ $eta arrow.r - infinity$ which is the past
    singularity.

Thus the penrose diagram of this spacetime is like: #figure(
    image("../assets/penrosedivini.png", width: 20%),
    caption: [Penrose diagram for cosmological constant case with
        $omega < -1$],
) <fig-penrosedesi>
which behaves just like the accerlating universe case in the general
matter solution @fig-penrosedivini.

=== Global de Sitter Spacetime

However, the singularity we get at $t = - infinity$ is not a real
singularity!! These can be seen by the behavior of the curvature. We
can prove that the curvature is a constant and don't have any
singularity at $t = - infinity$. Thus, we expect we can do an
extension of the spacetime to get rid of this coordinate singularity.

One approach to this is to investigate a seemingly different solution
of the EFE, which is the *vaccum solution with $k = 1$*. The EFE
reads:
$
    (dot(a) / a)^2 + 1 / a^2 = Lambda / 3, quad 2 (dot.double(a) / a) + (dot(a) / a)^2 + 1 / a^2 = Lambda
$
The solution to this equation is given by:
$
    a(t) = H^(-1) cosh(H t), quad H = sqrt(Lambda / 3),
$
This spacetime is called *Global dS Spacetime*.
$
    d s^2 = - d t^2 + H^(-2) cosh^2(H t) (d chi^2 + sin^2(chi) d Omega_2^2)
$
We can see that the metric is non-singular at any $t$ for the $cosh$
function is well behaved and have no zero point. More importantly, we
can prove:

- The cosmological constant case with flat spatial curvature is a
    patch of the global dS spacetime, which is called the *Poincare
    Patch*.

In penrose diagram, this can be shown as: #figure(
    image("../assets/penroseds.png", width: 25%),
    caption: [Penrose diagram for the global dS spacetime, where the
        blue region is the Poincare patch which is the cosmological
        constant case with flat spatial curvature],
) <fig-penroseds>
We can see that the blue line is a spacial slicing that make the
spacial metric flat, yet the price to pay is that it only cover a
patch of the global dS spacetime.

== Hubble Parameter and General Evolution of the Universe

<sec:generalmatterEOM>

We recap on the three equations we commonly use for solving EFE:
$
    &( dot(a) / a)^2 + k / a^2 = (8 pi G)/3 rho + Lambda / 3, quad "Friedmann Euqation" \
    &2 (dot.double(a) / a) + (dot(a) / a)^2 + k / a^2 = - 8 pi G p + Lambda, quad "Spacial EFE" \
    &dot(rho) + 3 (dot(a) / a) (rho + p) = 0 quad "Energy Conservation of Matter"
$
If we consider a certain kind of matter $p_i = omega_i rho_i$, the
enegy conservation gives us:
$
    rho_i = C a^(-3 (1 + omega_i)), quad p_i = omega_i rho_i
$
Moreover, we can define a parameter:
#definition[Hubble Parameter][
    The *Hubble Parameter* is defined as:
    $
        H = dot(a) / a
    $
]
Thus the Friedmann Equation with $k = 0, Lambda = 0$ can be written
as:
$
    H^2 = (8 pi G)/3 sum_i rho_i
$<eq:friedmannmatter>
Further more we can define a parameter called *Critical Density* if we
use the energy density of *today* as a reference:
#definition[Critical Density][
    The *Critical Density* is defined as:
    $
        rho_c = (3 H_0^2) / (8 pi G), quad "equivalently" quad rho_c = sum_i rho_i (t = t_0)
    $
    where $H_0$ is the Hubble Parameter at present time $t_0$. And we
    can define $Omega_i$ which is :
    $
        Omega_i = (rho_i (t= t_0)) / rho_c , quad "thus" quad sum_i Omega_i = 1
    $
]
With all these preparation, we can rewrite the Friedmann Equation
(with $k eq.not 0, Lambda eq.not 0$ and with the energy conservation
already used) as:
$
    H^2 = H_0^2 (Omega_Lambda + Omega_k (a_0 / a)^2 + Omega_m (a_0 / a)^3 + Omega_gamma (a_0 / a)^4)
$<eq:friedmannrewrite>
The first two term is the contribution from the cosmological constant
and the spatial curvature, and the last two term is the contribution
from the matter and the radiation, with certain $omega_i$ determine
its behavior.

If we rewrite LHS back with $dot(a) / a$ and we group terms we can
get:
$
    dot(a)^2 = H_0^2 (Omega_Lambda a^2 + Omega_k a_0^2 + Omega_m a_0^3 / a + Omega_gamma a_0^4 / a^2)
$<eq:generalEoM>
Which can be interpreted as the equation of motion of a particle with
zero total energy moving in a potential:
$
    U(a) = - H_0^2 (Omega_Lambda a^2 + Omega_k a_0^2 + Omega_m a_0^3 / a + Omega_gamma a_0^4 / a^2), quad dot(a)^2 + U(a) = 0
$
Why do we prefer this form of the EoM of the metric?

This is because prameters here are mostly observables that we can
measure from looking into the ski.

- $H_0$ can be measured through measuring how stars go away from us.
    And therefore we can measure the critical density $rho_c$.

- $Omega_i$ can be measured by doing sky search, and seeing the energy
    density of different matter content in the universe.

== Distances in Cosmology

To investigate the cosmology, we need to define the lengths.

=== Redshift

Assume a process, a star emit a light at $t = t_1, r = r_1$ and the
light is observed by us at $t = t_0, r = 0$. The light travel along
null geodesics:
$
    d s^2 = - d t^2 + a(t)^2 (d r^2)/(1-k r^2) = 0 quad arrow.r.double quad d t = - a(t) (d r) / sqrt(1-k r^2)
$
There is a "-" sign since the light is traveling from $r_1$ to $0$.
Thus we can get evaluate a length of the light travel l(r):
$
    integral_(t_1)^t_0 (d t) / a(t) = integral_0^r_1 (d r) / sqrt(1-k r^2) = l(r_1)
$
We can calculate the length l(r) for different spatial curvature:
$
    l(r) = cases(
        op("arcsin")(r) & quad k = 1,
        r & quad k = 0,
        op("arcsinh")(r) & quad k = -1
    )
$<eq:nullgeodesiclength>

Then we can consider a process of two light signal emit at $t = t_1$
and $t = t_1 + delta t_1$ and the light is observed at $t = t_0$ and
$t = t_0 + delta t_0$. Since the two light signal travel along the
same null geodesics, we can get:
$
    (delta t_0) / a(t_0) = (delta t_1) / a(t_1)
$<redshiftinfitime>
The frequency of the light is inversely proportional to the time
interval $omega prop 1/t$, thus we can get:
$
    (omega_0) / (omega_1) = (delta t_1) / (delta t_0) = a(t_1) / a(t_0)
$

- Universe is Expanding: $a(t_0) > a(t_1)$ thus $omega_0< omega_1$
    which is called *Redshift*.

- Universe is Contracting: $a(t_0) < a(t_1)$ thus $omega_0 > omega_1$
    which is called *Blueshift*.

The redshift can be described by the following quantity:
#definition[Redshift][
    The *Redshift* is defined as:
    $ z = (lambda_0 - lambda_1) / lambda_1 = a(t_0) / a(t_1) - 1 $
    note that
    $t_0$
    is the time of getting the light and
    $t_1$
    is the time of emitting the light.
]<redshiftdef>
Usually, we know the $lambda_1$ of many processes, and we measure
$lambda_0$ from experiments. Thus, we can use $z$ as a measure of the
distance.


=== Physical Distance and Coordinate Distance

For two comoving objects at $r = r_1$ and $r = r_2$, the coordinate
distance is:
$
    l_c = l(r_1) - l(r_2)
$
which is the distance separated in the spacial coordinate. However,
its not the distance in the general metric. The physical distance is
given by:
$
    l_p = a(t) (l(r_1) - l(r_2)) = a(t) l_c
$
We know that for a comoving object, the spacial coordinate is fixed
when moving in geodesics. Yet, the physical distance is time dependent
due to the $a(t)$ parameter:
$
    (d l_p) / (d t) = dot(a) l_c = H l_p, quad H = dot(a) / a
$
This is the *Hubble Law*, which fits well with the observation of the
universe, which is one of the evidences for the expanding universe.

#remark([
    We here have three notion of "length":

    - $r$, the spacial coordinate variable, which is NOT the
        coordinate distance.

    - $l(r)$, the coordinate distance, which is the distance in the
        spacial metric.

    - $l_p$, the physical distance, which is the distance in the full
        metric.
])

#note([
    It is also important to note that we assume the bodies in the
    universe have fixed co-moving coordinates in space, which means
    that the coordinate distance and spacial coordinates are all
    constants. However, due to the expansion of the universe the
    physical distance is time dependent.
])

=== Luminosity Distance

We first define something as:

- *Standard Candle* : which is a object with known luminosity $L$,
    where $L = (d E)/(d t)$ is defined as the energy emitted by the
    object per unit time in the object's rest frame.

Then we consider a comoving telescope observing the standard candle,
we can define a quantity called *Luminosity Distance* as:
#definition[Luminosity Distance][
    The *Luminosity Distance* is defined as:
    $
        P = L S/ (4 pi d^2)
    $
    where $P$ is the measured energy recieved per unit time by the
    telescope, and $S$ is the area of the telescope. The luminosity
    distance $d$ is defined as the distance that make the above
    equation hold.
]
Then we can calculate the luminosity distance and its relation with
other quantities for a comoving telescope and star in the FRW metric
set up.

In the FRW metric set up, the actual $P$ can be calculated as:
$
    P = L (S/(S_("tot") ) ) ((planck.reduce omega_0)/(planck.reduce omega_1) ) ((delta t_1) / (delta t_0) )
$
Lets explain each term, we set convension of $t_1$ the time of
emitting the light and $t_0$ the time of getting the light:

- $L$ is the Energy emitted per unit time when the energy is emitted.

- $S$ is the area of the telescope. $S_("tot")$ is the total area of
    light front, due to the expansion of the universe it takes form
    of:
$
    S_("tot") = 4 pi a(t_0)^2 r^2(t_1,t_0)
$
where $r(t_1,t_0)$ is the difference in coordinate $r$ between the
star and the telescope (which is NOT the coordinate distance), which
follow the null geodesic equation as:
$
    d t = - a(t) (d r) / sqrt(1-k r^2) arrow.r.double integral_(t_1)^t_0 (d t) / a(t) = integral_0^r (d r) / sqrt(1-k r^2)
$<eq:nullgeodesic>
where $r$ then is implicitly a function of $t_1$ and $t_0$.

#remark([
    Why do this $S_("tot")$ is the total area of the light front?

    We can see this from the FRW metric @comovingFRW, for a fixed time
    $t_0$, and a fixed $r$, the area of the sphere is given by:
    $
        d s^2 = a^2 (t_0) r^2 d Omega_2^2
    $
    we integrate over the angular coodiantes we can get the area of
    the sphere as:
    $
        S = 4 pi a^2 (t_0) r^2
    $
  notice that the integral is over $a(t)^2 r sin(theta) d theta d phi$. 
])

- $omega_0 / omega_1$ is the ratio of the frequency of the light when
    getting and emitting, which is given by the redshift as:
$ (omega_0) / (omega_1) = a(t_1) / a(t_0) $

- $(delta t_1) / (delta t_0)$ is the time given by the difference of
    infinitesimal time changes. This is also given by the redshift,
    see @redshiftinfitime:
$
    (delta t_1) / (delta t_0) = a(t_1) / a(t_0)
$

If we put all these together, we can get:
$
    P = L (S/(S_("tot") ) ) ((planck.reduce omega_0)/(planck.reduce omega_1) ) ((delta t_1) / (delta t_0) ) = L (S/(4 pi a(t_0)^2 r^2)) (a(t_1) / a(t_0))^2 = L S a(t_1)^2 / (4 pi a(t_0)^4 r^2)
$
This gives us the luminosity distance as: #corollary[Luminoity
    Distance in FRW Metric][
    The luminosity distance in the FRW metric is given by:
    $
        d = a(t_0)^2/ a(t_1) r(t_1,t_0) = (1 + z) a(t_0) r(t_1,t_0)
    $
    where $z$ is the redshift, see @redshiftdef.
]<cor:luminositydistance>

== Distances in Cosmology II

=== Luminosity Distance and Redshift

We want a formula for the luminosity distance $d_L$ as a function of
redshift $z$. Thus, if we both measure $d_L$ and $z$ then we can find
measure parameter $a(t)$.

We start from the expression @cor:luminositydistance, we can see that
$r(t_0,t_1)$ can be calculated using the null geodesic
@eq:nullgeodesic, using the result of @eq:nullgeodesiclength gives:
$
    r(t_0,t_1) = cases(
        integral_(t_1)^(t_0) ((d t) / a(t)) quad & k = 0,
        sin(integral_(t_1)^(t_0) ((d t) / a(t))) quad & k = 1,
        op("sinh")(integral_(t_1)^(t_0) ((d t) / a(t)))quad & k = -1,
    )
$
Then we want to calculate the integral:
$
    integral_(t_1)^(t_0) ((d t) / a(t))
$
For a general universe, the Friedmann equation and Energy conservation
equation gives @eq:friedmannrewrite. We copy it here:
$
    H^2 = H_0^2 (Omega_Lambda + Omega_k (a_0 / a)^2 + Omega_m (a_0 / a)^3 + Omega_gamma (a_0 / a)^4)
$
// #remark([
//     Note that in this equation we set a time $t_0$ to define $H_0$
//     ,$a_0$ and $Omega_i$ these constants. Here in the context of
//     distance, we take $t_0$ to be the time when the light is emitted
//     (note this conficted with the previous convention where we take
//     $t_0$ to be the time when the light is observed, and $t_1$ to be
//     the time when the light is emitted).
// ])
We make a change of variable $x = a / a_0$, then we have:
$
    dot(x) = H_0 A(x) x, quad A(x)^2 = ( Omega_Lambda + Omega_k x^(-2) + Omega_m x^(-3) + Omega_gamma x^(-4) )
$
With these preparation we can calculate the integral:
$
    integral_(t_1)^(t_0) ((d t) / a(t)) = 1/(a_0 H_0) integral_(x_1)^(x_0) ((d x) / ( A(x) x^2)) quad x_0 = 1, x_1 = a(t_1) / a_0 = 1 / (1 + z)
$
Then the final formula for the luminosity distance is given by:
#corollary[Luminosity Distance ito Redshift][
    The luminosity distance can be calculated as a function of
    redshift as:
    $
        d(z) = a_0 (1+z) 1/sqrt(-k) op("sinh") ( sqrt(-k)/(a_0 H_0) integral_(1/(1+z))^1 ((d x) / ( A(x) x^2)) )
    $
    This is combining the three cases of $k$ into one formula, for
    $k = 0$ we take the limit $k arrow.r 0$ and use the fact that
    $lim_(x arrow.r 0) (sinh(x) / x) = 1$.
]


=== Parallax

Consider we have a source very far from the sun and we want to measure
the distance between another star, which is much closer to the sun
(though still very far from us). We can measure the angle between the
source and the star at two different time (for example, at two
different position of the earth in its orbit around the sun). This is
called parallax.

See the diagram for illustration:

#figure(
    image("../assets/parallax.png", width: 80%),
    caption: [Parallax measurement. ],
) <fig-parallax>

The parallax is defined as:
#definition[Parallax][
    The parallax is defined as the angle between the source and the
    star at two different time.
    $
        alpha_2 - alpha_1
    $
]
A distance can be calculated from the parallax as:
$
    d = (2 r) / (alpha_2 - alpha_1)
$
where $r$ is the distance between the sun and the earth.





