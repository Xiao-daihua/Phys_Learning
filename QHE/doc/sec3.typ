#import "../env/lib.typ": *

= Fractional Quantum Hall Effect

The fractional quantum Hall effect (FQHE) is a quantum phenomenon
observed in two-dimensional electron systems subjected to low
temperatures and strong magnetic fields, where the Hall conductance
exhibits quantized plateaus at fractional values of:
$
    sigma_(x y) = frac(e^2, 2 pi planck.reduce) nu, quad nu = 1/3, 2/5, 3/7, ...
$
#figure(
    image("../assets/fqhe.png", width: 75%),
    caption: [experimental observation of FQHE],
) <fig-fqhe>
#footnote[
    David Tong gives some illustration of how FQHE happens in the
    beginning, but I think what he wrote is wrong and only make things
    more confusing.
]
The explanation of FQHE is more complicated than IQHE.

== Laughlin States

For FQHE, with the conductivity as:
$
    sigma_(x y) = frac(e^2, 2 pi planck.reduce) frac(1, m), quad m = 3, 5, 7, ...
$
Laughlin give an explanation of this FQHE effect in
@laughlinAnomalousQuantumHall1983. What he did is to directly write
down a ground state wave function for the state of interacting
electrons in magnetic field with the number of:
$
    N_e = N_L nu, quad N_L = frac(B A, 2 pi planck.reduce), quad nu = 1/m
$
which has the number of elecrons as a fraction of the number of Landau
levels. We often call $nu$ the filling fraction, which is the ratio of
the number of electrons to the number of available states in the
lowest Landau level.

Now, lets take a look at what this ground state wave function is and
why a systems at this state can give rise to a fractional quantum Hall
effect.

=== Laughlin's Wave Function

The Laughlin wave function is given by:
#theorem[Laughlin Wave Function][
    For a system of $N_e$ electrons in a magnetic field, the Laughlin
    wave function at filling fraction $nu = 1/m$ is given by:
    $
        psi(z_1, z_2, ..., z_(N_e)) = product_(i < j) (z_i - z_j)^m exp(-frac(1, 4 l_B^2) sum_(i=1)^(N_e) |z_i|^2)
    $
    where $z_i = x_i + i y_i$ is the complex coordinate of the $i$-th
    electron, $l_B = sqrt(frac(planck.reduce, e B))$ is the magnetic
    length, and $m$ is an odd integer.
]

This wave function in fact gives a description of a new type of phase
of matter called the topological order, which is a type of order that
cannot be described by the traditional Landau symmetry breaking
theory.

From a mathematical calculation, we can see that:

- The Laughlin wave function can describe $N_e = N_L nu$ particles.

This is

- At $nu = 1$ the Laughlin wave function reduces to the Slater
    determinant of the lowest Landau level wave functions.


=== Plasma Analogy


=== Toy Model Hamiltonian



== Excitations: Quasiparticles/Quasiholes

Ground state wave function is not enough to explain the FQHE, we also
need to understand the excitations of the system, which are called
quasiparticles.
