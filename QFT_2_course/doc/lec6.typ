#import "../env/lib.typ": *
= Lecture 6: Scattering Theory
Here we basically follows Weinberg's approach to scattering theory. In
fact the correct understanding of this should be based on the LSZ
reduction formula, but we will not go into that in this lecture.

== In and Out States
To set up the scattering theory, we need to define the in and out
states.

=== Free Partical States

In free QFT, we can define the one-particle or multi-particle states
as the eigen state of $P^mu$ with a series of labels ${alpha}$, these
states are:
$
    P^mu |phi.alt_alpha angle.r = p^mu_alpha |phi.alt_alpha angle.r
$
A wave packet state can be defined as a superposition of these states:
$
    |phi.alt angle.r = integral dif^3 alpha g(alpha)|phi.alt_alpha angle.r
$

=== In and Out States

For an interacting QFT, we can define the in and out states as being
asymptotically free, which means that they can be approximated by free
particle states at $t arrow.r plus.minus infinity$. Thus we have:
#definition[In and Out States][
    The in and out states are defined as being asymptotically free

    - *In states:* $|psi^+_alpha angle.r$ behaves as
        $|phi.alt_alpha angle.r$ when $t arrow.r minus infinity$.

    - *Out states:* $|psi^-_alpha angle.r$ behaves as
        $|phi.alt_alpha angle.r$ when $t arrow.r plus infinity$.
]

Here are som egeneral properties of the in and out states:

1. *Moller Operators:* We can define in and out state quantatively by
    the Moller operators:
    $
        Omega_plus.minus = lim_(t arrow.r minus.plus infinity) exp (i H (t - t_0)) exp (-i H_0 (t - t_0))
    $
    where $H$ is the Hamiltonian of the interacting theory and $H_0$
    is the Hamiltonian of the free theory. Then we have:
    $
        |psi^plus.minus_alpha angle.r = Omega_plus.minus |phi.alt_alpha angle.r
    $

2. *Moller Operator Commutation* The Moller operators commute with the
    full Hamiltonian $H$:
    $
        H Omega_plus.minus = Omega_plus.minus H_0
    $

3. *Energy Eigen States* The in and out states are eigen states of the
    full Hamiltonian $H$ with eigenvalue $E_alpha$:
    $
        H |psi^plus.minus_alpha angle.r = E_alpha |psi^plus.minus_alpha angle.r
    $
    where $E_alpha$ is the energy of the state
    $|phi.alt_alpha angle.r$.

4. *Normalization* we assume Moller operators are unitary, which means
    that the in and out states are normalized as the free particle
    states:
    $
        angle.l psi^plus.minus_alpha|psi^plus.minus_beta angle.r = angle.l phi.alt_alpha|phi.alt_beta angle.r = delta(alpha - beta)
    $
#remark([
    We use the notation $delta(beta - alpha)$ for the normalization of
    the states, which should be undertood as the combination of the
    relativistic delta function and the Kronecker delta function.
])

== Lippmann-Schwinger Equation


=== Formal Form

We want to derive a formal solution for the in and out states. The
result is the Lippmann-Schwinger equation:
#theorem[Lippmann-Schwinger Equation][
    The in and out states can be formally expressed as:
    $
        |psi^plus.minus_alpha angle.r = |phi.alt_alpha angle.r + (H_I)/(E_alpha - H_0 plus.minus i epsilon) |psi^plus.minus_alpha angle.r
    $
]
- Derivation 1: Matrix Inversion

This can be proven by the fact that the in and out states are eigen
states of the full Hamiltonian $H$ with eigenvalue $E_alpha$:
$
    H |psi^plus.minus_alpha angle.r = E_alpha |psi^plus.minus_alpha angle.r quad arrow.r.double quad (H_0 - E_alpha) |psi^plus.minus_alpha angle.r = - H_I|psi^plus.minus_alpha angle.r
$
Pluging in the ansatz of
$|psi^plus.minus_alpha angle.r = a|phi.alt_alpha angle.r + Delta|psi^plus.minus_alpha angle.r$
and rearranging the terms, we can get the Lippmann-Schwinger equation.

- Derivation 2: Moller Operators

Another QM style derivation is to use the Moller operators. We can use
the derivative and integral trick to prove that:
$
    (Omega_plus.minus - 1) |phi.alt_alpha angle.r = (H_I)/(E_alpha - H_0 plus.minus i epsilon) Omega_plus.minus |phi.alt_alpha angle.r
$
Thus gives us the Lippmann-Schwinger equation. In this derivation we
need to explicitly add the $plus.minus i epsilon$ term for in and out
states to make the integral of time converge. There is a sign
difference because the in and out states are defined at
$t arrow.r minus.plus infinity$.

Apart from the formal form we can plug in a complete bases of free
particle states to get a more explicit form of the Lippmann-Schwinger
equation:
$
    I = integral dif alpha |phi.alt_alpha angle.r angle.l phi.alt_alpha|
$
#remark[
    This complete condition is a good assumption for any lorentz
    symmety theoretical Hilbert Space.
]
Thus we have:
#theorem[Lippmann-Schwinger Equation with Free Particle Bases][
    The in and out states can be formally expressed as:
    $
        |psi^plus.minus_alpha angle.r = |phi.alt_alpha angle.r + integral dif beta (1)/(E_alpha - E_beta plus.minus i epsilon)angle.l phi.alt_beta|H_I|psi^plus.minus_alpha angle.r |phi.alt_beta angle.r
    $
    we often call the term
    $T_(beta alpha)^plus.minus = angle.l phi.alt_beta|H_I|psi^plus.minus_alpha angle.r$
    the T-matrix element, which is the transition amplitude from the
    free particle state $|phi.alt_beta angle.r$ to the in or out state
    $|psi^plus.minus_alpha angle.r$.
]

=== Asymptotic Behavior

We mainly care about the asymptotic behavior of the in and out states.
With the Lippmann-Schwinger equation, we can explicitly see that:
#remark[Heisenberg Picture][
    All calculation in the scattering theory is based on Heisenberg
    picture. We don't say we evlove a state in time, but we say the
    assymptotic behavior of the state is like this or that, which is
    the behavior of the state:
    $
        e^(- i H t) |psi angle.r
    $
    Please understand this as acting an operator on the time
    independent state, not as evolving the state in time.
]
In scattering theory, we prefer to use a wave packet or we can't
physically "localize" a state as a particle. Thus we have:
$
    |psi^plus.minus angle.r & = integral dif alpha g(alpha)|psi^plus.minus_alpha angle.r \
    & = integral dif alpha g(alpha) (|phi.alt_alpha angle.r + integral dif beta (1)/(E_alpha - E_beta plus.minus i epsilon) T^plus.minus_(beta alpha) |phi.alt_beta angle.r) \
$
Here we focus on the in state's asymptotic behavior, the out state is
quite the same. Consider the assymtotic state of $|psi^plus angle.r$:
$
    e^(- i H t) |psi^plus angle.r &= integral dif alpha g(alpha) e^(- i E_alpha t) |psi^+_alpha angle.r\
    &= integral dif alpha g(alpha) e^(- i E_alpha t) |phi.alt_alpha angle.r + integral dif alpha g(alpha) e^(- i E_alpha t) integral dif beta (1)/(E_alpha - E_beta plus i epsilon) T^plus_(beta alpha) |phi.alt_beta angle.r
$

- $t arrow.r - infinity$ Behavior

When $t arrow.r - infinity$, we want to integrate out the $E_alpha$
variable, to do this we have to use the compex integral of *Upper Half
Plane* to make $e^(- i E_alpha t)$ converge. Thus the second term
vanishes for there are no poles in UHP and we have:
$
    e^(- i H t) |psi^plus angle.r & = integral dif alpha g(alpha) e^(- i E_alpha t) |phi.alt_alpha angle.r
$
which is exactly the definition of the in state.


- $t arrow.r + infinity$ Behavior

When $t arrow.r + infinity$, we want to integrate out the $E_alpha$
variable, to do this we have to use the compex integral of *Lower Half
Plane* to make $e^(- i E_alpha t)$ converge. Thus we have:
$
    e^(- i H t) |psi^plus angle.r & = integral dif alpha g(alpha) e^(- i E_alpha t) (|phi.alt_alpha angle.r - 2 pi i integral dif beta delta(E_alpha - E_beta) T^plus_(beta alpha) |phi.alt_beta angle.r)
$

== S-Matrix

Finally we can define the S-matrix as the observable of the scattering
process.

=== Definition and Properties

The S-matrix element is defined as;
#definition[S-Matrix Element][
    The S-matrix element is defined as the transition amplitude from
    an in state to an out state:
    $
        S_(beta alpha) = angle.l psi^-_beta|psi^+_alpha angle.r
    $
]
Here are some basic properties of the S-matrix:

- *Non interacing limit* In the non-interacting limit, the in and out
    states are the same, thus we have:
    $
        S_(beta alpha) = delta(beta - alpha)
    $

- *Unitarity* The S-matrix is unitary, which means that:
    $
        integral dif beta S^*_(beta alpha) S_(beta gamma) = delta(alpha - gamma)
    $
- *Moller Operators* The S-matrix can be expressed in terms of the
    Moller operators as:
    $
        S = Omega_-^dagger Omega_+ quad S_(beta alpha) = angle.l phi.alt_beta|Omega_-^dagger Omega_+|phi.alt_alpha angle.r
    $


=== S Matrix Element from Lippmann-Schwinger Equation

With the Lippmann-Schwinger equation, we can express the S-matrix
element in terms of the T-matrix element, we play a trick of inserting
an identity operator in the middle:
$
    S_(beta alpha) = angle.l psi^-_beta|psi^+_alpha angle.r = angle.l psi^-_beta|e^(i H t) e^(- i H t)|psi^+_alpha angle.r
$
If we take the limit of $t arrow.r plus infinity$ and use the
asymptotic behavior of the in and out states, we can get:
$
    S_( beta alpha ) = delta ( alpha - beta ) - 2 pi i delta ( E_( alpha ) - E_( beta ) ) T_( beta alpha )^( + )
$
One then also can see that the asymptotic behavior of the in and out
states is related to the S-matrix element:
$
    |psi^+_alpha angle.r tilde integral dif beta S_(beta alpha)|phi.alt_beta angle.r
$

=== First Born Approximation

The first Born approximation is to approximate the T-matrix element
by:
$
    T_(beta alpha)^(+) tilde angle.l phi.alt_beta|H_I|phi.alt_alpha angle.r = V_(beta alpha)
$
This gives us a simple approximation of the S-matrix element:
$
    S_(beta alpha) tilde delta(beta - alpha) - 2 pi i delta(E_alpha - E_beta) V_(beta alpha)
$

