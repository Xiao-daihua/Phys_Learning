#import "../env/lib.typ": *

= Preparations

First we'll give some preparations for the discussion of the QHE.
We'll start with some basic concepts in CMT and QM. I won't give a
detailed explanation, yet just list out some important results as a
reference for later use. Most contents are explained in @qhelecture.

== Band Theory and Conductivity

In a crystalline solid, the periodic ionic potential causes the
allowed electron energies to split into *energy bands*, separated by
*band gaps*. The key results are:

#theorem[Bloch's Theorem][
    The eigenstates of an electron in a periodic potential
    $V(bold(r) + bold(R)) = V(bold(r))$ take the form
    $
        psi_(bold(k))(bold(r)) = e^(i bold(k) dot bold(r)) u_(bold(k))(bold(r)),
    $
    where $u_(bold(k))$ shares the lattice periodicity
    $u_(bold(k)) (r+R) = u_(bold(k)) (r)$and $bold(k)$ lives in the
    first Brillouin zone.
]

Solving the Schrödinger equation with Bloch boundary conditions yields
a discrete family of dispersion relations $E_n (bold(k))$, labelled by
the band index $n$. Each band accommodates $2N$ electrons ($N$ =
number of unit cells in the object, factor $2$ from spin).

Here is a rough sketch of the band structure:

#figure(
    image("../assets/band.png", width: 35%),
    caption: [Band structure],
) <fig-band>

*Fermi energy and band filling.* At $T = 0$, electrons fill all states
up to the Fermi energy $E_F$.

- *Insulator / Semiconductor:* $E_F$ lies inside a band gap; the
    valence band is completely full.

- *Metal:* $E_F$ lies inside a band; there exists a Fermi surface.

- *Semimetal:* valence and conduction bands overlap slightly.



== Landau Levels

=== Magnetic Field in QM

Consider a electron moving in a 2D plane under a perpendicular
magnetic field $B$. The Hamiltonian in Landau Gauge is:
$
    H = ( 1 ) / ( 2 m ) ( p_( x )^( 2 ) + ( p_( y ) + e B x )^( 2 ) )
$
Then the energy spectrum is quantized into *Landau levels*:

- *Wave Functions*
$
    psi_( n, k ) ( x, y ) tilde e^( i k y ) H_( n ) ( x + k l_( B )^( 2 ) ) e^( - ( x + k l_( B )^( 2 ) )^( 2 ) slash 2 l_( B )^( 2 ) )
$
with $H_n exp (-x^2/2)$ the $n$-th Harmonic oscillator wave function
and $l_B = sqrt(planck.reduce slash e B)$ the magnetic length. And
$n in NN$ is the Landau level index, $k in ZZ$ is the momentum along
$y$ direction.

- *Energy Spectrum* The energy of the $n$-th Landau level is:
$
    E_n = ( n + 1/2 ) planck.reduce omega_(B) quad omega_(B) = e B / m
$
And each level have a degeneracy of
$
    N_B = e B A slash 2 pi planck.reduce quad n = B/ Phi_0
$
which is the number of flux quanta through the system. These energy
levels can be drawn in the following CMT style:

#figure(
    image("../assets/landaulevel.png", width: 45%),
    caption: [Landau levels],
) <fig-landaulevel>


=== Landau Levels with Electric Field

If we add a uniform electric field $E$ along $x$ direction, then the Hamiltonian becomes:
$ 
H = ( 1 ) / ( 2 m ) ( p _ ( x ) ^ ( 2 ) + ( p _ ( y ) + e B x ) ^ ( 2 ) ) - e E x
$
Then we solve the Schrödinger equation and find the energy spectrum is still quantized into Landau levels, but with a shift:

- *Wave Functions* 
$ 
psi ( x, y ) = psi _ ( n, k ) ( x - m E slash e B ^ ( 2 ), y )
$
- *Energy Spectrum*
$ 
E _ ( n, k ) = planck.reduce omega _ ( B ) ( n + ( 1 ) / ( 2 ) ) + e E ( k l _ ( B ) ^ ( 2 ) - ( e E ) / ( m omega _ ( B ) ^ ( 2 ) ) ) + ( m ) / ( 2 ) ( E ^ ( 2 ) ) / ( B ^ ( 2 ) )
$
We now see that different $k$ states are not degenerate anymore, and the landau levels are tilted in the energy-momentum space: 

#figure(
  image("../assets/landauE.png", width: 33%),
  caption: [Landau levels with electric field],
) <fig-landaue>

- *Group Velocity* If the wavefunction is a wave packet that is superposition of the landau level states with different $k$, then the group velocity of the wave packet is:
$ 
v_y = ( 1 ) / ( planck.reduce ) ( diff E _ ( n, k ) ) / ( diff k ) = E / B
$
it means that the wave packet will drift along $y$ direction with a velocity. 

== Berry Phase

When a quantum system has a parameter dependent Hamiltonian
$H(lambda_i)$ and the parameters vary adiabatically along a closed
loop $C$ in the parameter space, the system's ground state wave
function acquires a geometric phase known as the *Berry phase*.

=== Abelian Berry Phase

Consider the ground state energy is always normalized to 0, no matter
which parameter we choose, then after a close loop of parameter
variation, the wave function will acquire a phase factor:
$
    |psi ( lambda_i ) angle.r arrow.r e^( i gamma ) |psi ( lambda_i ) angle.r
$
where $gamma$ is the Berry phase, which can be expressed as an
integral of the Berry connection $A_i$ along the loop

- *Berry Connection and Curvature* The Berry connection is defined as:
$
    A_( i ) ( lambda ) = - i angle.l n|( diff ) / ( diff lambda^( i ) )|n angle.r
$
where $|n(lambda_i) angle.r$ is a series of designated eigenstates of
the Hamiltonian with fixed phase choices. And the Berry curvature is
defined as:
$
    F_( i j ) ( lambda ) = partial_( i ) A_( j ) - partial_( j ) A_( i )
$
notice that $i,j$ are indices of the parameters, not the spatial
coordinates.

- *Gauge Transformation* if we change the choise of phase of the
    designated eigenstates by a gauge transformation
    $|n(lambda_i) angle.r arrow.r e^( i alpha ( lambda ) ) |n(lambda_i) angle.r$,
    then the Berry connection transforms as:
$
    A_( i ) ( lambda ) arrow.r A_( i ) ( lambda ) + partial_( i ) alpha ( lambda )
$
which is similar to the gauge transformation of the electromagnetic
vector potential. However, the Berry curvature is gauge invariant.

- *Berry Phase* can be expressed as the integral of the Berry
    connection along the loop:
$
    i gamma = -i integral.cont_(C) A_( i ) ( lambda ) d lambda^( i )
$
or equivalently as the integral of the Berry curvature over the area
enclosed by the loop:
$
    i gamma = -i integral.cont_(S) F_( i j ) ( lambda ) d S^( i j )
$

- *Chern Number* In a parameter space if we want the berry phase to be
    well-defined, then the integral of the Berry curvature over a
    closed surface must be quantized in units of $2 pi$:
$
    C = ( 1 ) / ( 2 pi ) integral.cont_(S) F_( i j ) ( lambda ) d S^( i j ) in ZZ
$
this integer $C$ is called the Chern number, which is a topological
invariant of the system.


=== Non-Abelian Berry Phase

When the system has degenerate ground states, the Berry phase becomes
non-Abelian. We can see this from the fact that the designated
eigenstates should span the degenerate subspace:
$
    |n(lambda_i) angle.r arrow.r {|n_a (lambda_i) angle.r}_a
$
Then we generalize the definition of Berry connection to a
matrix-valued one.

- *Non-Abelian Berry Connection and Curvature* The non-Abelian Berry
    connection is defined as:
$
    A_( i ) ( lambda )_( a b ) = - i angle.l n_a|( diff ) / ( diff lambda^( i ) )|n_b angle.r
$
and the non-Abelian Berry curvature is defined as:
$
    F_( i j ) ( lambda ) = partial_( i ) A_( j ) - partial_( j ) A_( i ) - i [ A_( i ), A_( j ) ]
$

- *Gauge Transformation* if we change the choice of basis of the
    degenerate subspace by a gauge transformation
    $|n_a (lambda_i) angle.r arrow.r U_( a b ) ( lambda ) |n_b (lambda_i) angle.r$,
    where $U(lambda)$ is a unitary matrix, then the non-Abelian Berry
    connection transforms as:
$
    A_( i ) ( lambda ) arrow.r U ( lambda ) A_( i ) ( lambda ) U^dagger ( lambda ) + i ( partial_( i ) U ( lambda ))U^dagger ( lambda )
$
Then we notice that the berry connection is a $U(N)$ gauge field, that
take valve of $u(N)$ Lie algebra. And the non-Abelian Berry curvature
transforms as:
$
    F_( i j ) ( lambda ) arrow.r U ( lambda ) F_( i j ) ( lambda ) U^dagger ( lambda )
$

- *Berry Holonomy* The non-Abelian Berry phase (in fact its a matrix)
    can be expressed as a path-ordered exponential of the Berry
    connection along the loop:
$ 
    U = P exp ( - i integral.cont_(C) A_( i ) ( lambda ) d lambda^( i ) )
$
