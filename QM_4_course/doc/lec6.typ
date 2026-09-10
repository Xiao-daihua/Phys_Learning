#import "../env/lib.typ": *

= Lecture 6: Landau Levels
We now consider the eigenstates and eigenvalues of Hamiltonian of a
charged particle in a magnetic field. We will see that the energy
levels are quantized, and each level has a large degeneracy. These
quantized energy levels are called Landau levels.

== Magnetic Translation Operator

=== Translation Operator

In basic QM, we often define a *Unitary Operator* as the translation
operator satisfying:
$
    T_r_0|r angle.r = |r + r_0 angle.r
$
A realization of this operator is given by:
$
    T_r_0 = exp(-i/ planck.reduce r_0 dot hat(p))
$
An operator is called *Translation Invariant* if it commutes with the
translation operator:
$
    angle.l r|O|r angle.r = angle.l r + r_0 |O|r + r_0 angle.r quad arrow.l.r.double quad T_(r_0)^dagger O T_(r_0) = O
$
Notice that the commutation relation between the translation operator
and the position and momentum operator is given by:
$
    T_(r_0)^dagger hat(x) T_(r_0) = hat(x) + r_0, quad T_(r_0)^dagger hat(p) T_(r_0) = hat(p)
$
One can also define a translation operator in the momentum space:
$
    Q_(p_0) = exp(i/ planck.reduce p_0 dot hat(x)), quad Q_(p_0)|p angle.r = |p + p_0 angle.r
$
Its commutation relation with the position and momentum operator is
given by:
$
    Q_(p_0)^dagger hat(x) Q_(p_0) = hat(x), quad Q_(p_0)^dagger hat(p) Q_(p_0) = hat(p) + p_0
$
In fact if we compare the definition with the gauge transformation
operator. Then we see the momentum translation operator is just a
gauge transformation operator with a linear gauge function:
$
    Q_(p_0) = exp(i/ planck.reduce p_0 dot hat(x)) = exp(i e/ planck.reduce chi(hat(x))), quad chi(x) = 1/e p_0 dot hat(x)
$

=== Magnetic Translation Operator

If we consider a electron gass in a magnetic field, using the
*Symmetry Gauge*:
$
    A(x) = 1/2 B times x
$
then if the magenetic field is along the z direction, we have:
$
    hat(H) = ( 1 ) / ( 2 m ) [ ( hat(p)_( x ) + ( e B y ) / ( 2 ) )^( 2 ) + ( hat(p)_( y ) - ( e B x ) / ( 2 ) )^( 2 ) + hat(p)_( z )^( 2 ) ]
$
the translation operator is not a symmetry of the system anymore
[doesn't commute with the Hamiltonian]. However, we can introduce a
*Magnetic Translation Operator*:
#definition[Magnetic Translation Operator][
    For translation in the x direction, we have:
    $
        hat(T)_( x ; x_( 0 ) ) : = hat(T)_( ( x_( 0 ), 0, 0 ) ) hat(Q)_( ( 0, e B x_( 0 ) slash 2, 0 ) ) = e^( - ( i ) / ( planck.reduce ) x_( 0 ) hat(p)_( x ) ) e^( ( i e B x_( 0 ) ) / ( 2 planck.reduce ) hat(y) ),
    $
    and for translation in the y direction, we have:
    $
        hat(T)_( y ; y_( 0 ) ) : = hat(T)_( ( 0, y_( 0 ), 0 ) ) hat(Q)_( ( - e B y_( 0 ) slash 2, 0 ,0 ) ) = e^( - ( i ) / ( planck.reduce ) y_( 0 ) hat(p)_( y ) ) e^( - ( i e B y_( 0 ) ) / ( 2 planck.reduce ) hat(x) )
    $
]
Then one can check that the magnetic translation operator commutes
with the Hamiltonian:
$
    hat(T)_( x ; x_( 0 ) )^dagger hat(H) hat(T)_( x ; x_( 0 ) ) = hat(H), quad hat(T)_( y ; y_( 0 ) )^dagger hat(H) hat(T)_( y ; y_( 0 ) ) = hat(H)
$
#remark([
    One can understand this as performing a translation then perform a
    gauge transformation. Due to the fact that momentum translation
    operator is a gauge transformation.
])

=== Generators of Magnetic Translation

For these symmetry operators, we can also define the generators.

- For translation in the x direction, we have:
$
    t_x = hat(p)_( x ) - ( e B y ) / ( 2 ) quad hat(T)_( x ; x_( 0 ) ) = exp(- ( i ) / ( planck.reduce ) x_( 0 ) t_x)
$

- For translation in the y direction, we have:
$
    t_y = hat(p)_( y ) + ( e B x ) / ( 2 ) quad hat(T)_( y ; y_( 0 ) ) = exp(- ( i ) / ( planck.reduce ) y_( 0 ) t_y)
$
- Of course we also have the translation in the z direction:
$
    t_z = hat(p)_( z ) quad hat(T)_( z ; z_( 0 ) ) = exp(- ( i ) / ( planck.reduce ) z_( 0 ) t_z)
$
In a general form we have: #definition[Generator of Magnetic
    Translation][
    $
        t = hat(p) + e A(hat(x)) quad [t, hat(H)] = 0
    $
]<def:generator_magnetic_translation>

=== Path Integral of Magnetic Translation

In the symmetry gauge, the lagrangian can be written as:
$
    L = 1/2 m dot(x)^( 2 ) + ( e B ) / ( 2 ) ( x dot(y) - y dot(x) )
$
We consider a transition amplitude from $|r_i angle.r$ to
$|r_f angle.r$ in time $t_i, t_f$. Which is:
$
    G(r_f, t_f; r_i, t_i) = integral_(r_i)^(r_f) cal(D)[r] exp(i/ planck.reduce S[r(t)])
$
If we perform a shift of the initial and final position:
$
    G(r_f + r_0, t_f; r_i + r_0, t_i) = G(r_f, t_f; r_i, t_i) exp(i (e B) / ( planck.reduce ) ( x_( 0 ) ( y_( f ) - y_( i ) ) - y_( 0 ) ( x_( f ) - x_( i ) ) ))
$
we compare with the form of the gauge transformation of propagator
@eq:propagator_gauge_transform, we can see that translating the
initial and final position is equivalent to performing a gauge
transformation with a linear gauge function:
$
    chi(x) = B ( x_( 0 ) y - y_( 0 ) x )
$
we can see that this gauge transformation gives the operator that is
exactly the extra operator in the definition of magnetic translation
operator.


=== Non-Commutativity of Magnetic Translation

Now we want to translate a state around a small loop. We can do this
by performing:
$
    hat(T)_( y ; - y_( 0 ) ) hat(T)_( x ; - x_( 0 ) ) hat(T)_( y ; y_( 0 ) ) hat(T)_( x ; x_( 0 ))|r angle.r
$
Due to the extra gauge transformation, we have:
$
    hat(T)_( y ; - y_( 0 ) ) hat(T)_( x ; - x_( 0 ) ) hat(T)_( y ; y_( 0 ) ) hat(T)_( x ; x_( 0 )) |r angle.r = exp(-i e B (x_( 0 ) y_( 0 )) / planck.reduce) |r angle.r
$
We can define the quantum flux through the loop as:
$
    Phi_0 = ( 2 pi planck.reduce ) / e
$
Then the state will acquire a phase factor:
$
    exp(-i e B (x_( 0 ) y_( 0 )) / planck.reduce) = exp(-i 2 pi ( Phi / Phi_0))
$


=== Magnetic Translation Generator as a Conserved Quantity

In Classical mechanics, the motion of a charged particle in a magnetic
field has a conserved quantity:
$
    t = m dot(x) - e x times B
$
We know that the mechanical momentum when doing quantiztion gives
$pi = p - e A(x)$. Then we can also define a quantum version of this
conserved quantity:
$
    t = hat(p) - e A(hat(x)) - e hat(x) times B
$
Notice that in symmetry gauge we have $A(x) = 1/2 B times x$, then we
have:
$
    t = hat(p) + e A(hat(x))
$
which is exactly the generator of magnetic translation
@def:generator_magnetic_translation. Thus, everything is very
consistent.

== Landau Levels (Symmetry Gauge)

=== Symmetry Gauge

Now we consider the eigenstates and eigenvalues of the Hamiltonian of
a charged particle in a magnetic field. We first use the symmetry
gauge to write the Hamiltonian:
$
    hat(H) = ( 1 ) / ( 2 m ) [ ( hat(p)_( x ) - e hat(A)_( x ) )^( 2 ) + ( hat(p)_( y ) - e hat(A)_( y ) )^( 2 ) ] = ( hat(pi)_( x )^( 2 ) + hat(pi)_( y )^( 2 ) ) / ( 2 m )
$
#remark([
    Here we just neglect the translation in the z direction, which is
    just a free particle and does not contribute to the interesting
    physics of Landau levels.
])


To solve this Hamiltonian, a trick is to perform a canonical
transformation. We define the following operators:
$
    hat(X)_( 1 ) : = ( hat(pi)_( x ) ) / ( e B ), wide hat(P)_( 1 ) : = hat(pi)_( y ) quad hat(X)_( 2 ) : = ( hat(t)_( y ) ) / ( e B ), wide hat(P)_( 2 ) : = hat(t)_( x ).
$
we may see that they satisfy the canonical commutation relation:
$
    [hat(X)_( i ), hat(P)_( j )] = i planck.reduce delta_(i j), quad [hat(X)_( i ), hat(X)_( j )] = 0, quad [hat(P)_( i ), hat(P)_( j )] = 0
$
Then the Hamiltonian can be written as:
$
    hat(H) & = ( 1 ) / ( 2 m ) [ ( e B )^( 2 ) hat(X)_( 1 )^( 2 ) + hat(P)_( 1 )^( 2 ) ]\
    &= hat(P)_1^( 2 ) / ( 2 m ) + ( 1 ) / ( 2 ) omega_c^2 hat(X)_( 1 )^( 2 ) quad omega_c = e B / m
$

=== Landau Levels in Symmetry Gauge

We now see that the Hamiltonian is just a harmonic oscillator
Hamiltonian. Thus the energy levels are quantized and given by:
$
    E_n = planck.reduce omega_c ( n + 1/2 ) , quad n = 0, 1, 2, ...
$
and the eigenstates are given by:
$
    Psi_n (X_1, X_2) = phi.alt_n (X_1) psi(X_2)
$
where $psi(x)$ is arbitrary function and $phi.alt_n(x)$ is the n-th
eigenstate of the harmonic oscillator, written explicitly as:
$
    phi.alt_( n ) ( x ) prop H_( n ) ( ( x ) / ( l_( B ) ) ) "exp" ( - ( x^( 2 ) ) / ( 2 l_( B )^( 2 ) ) ) quad l_( B ) = sqrt(planck.reduce / ( e B ))
$
For a general inifinite plane, the level are highy degenerate due to
the fact that the wave function have infinite freedom in the $X_2$
direction.


== Landau Levels (Landau Gauge)

=== Landau Levels in Landau Gauge

To evaluate the degeneracy of a finite system, we prefer using the
Landau gauge:
$
    A(x) = ( 0, B x, 0 )
$
Now the Hamiltonian is given by:
$
    hat(H) = ( 1 ) / ( 2 m ) [ ( hat(p)_( x ) )^( 2 ) + ( hat(p)_( y ) - e B hat(x) )^( 2 ) ]
$
We now take an ansatz for the wave function:
$
    Psi(x, y) = exp(i/planck.reduce p_y y) phi.alt(x)
$
With this ansatz, the Schrodinger equation is given by:
$
    ( 1 ) / ( 2 m ) [ ( hat(p)_( x ) )^( 2 ) + ( p_y - e B hat(x) )^( 2 ) ] phi.alt(x) = E phi.alt(x)
$
This is just the form of a harmonic oscillator, with a position
shifted in $x$ direction by $p_y / ( e B )$. Thus the energy levels
are still given by:
$
    E_n = planck.reduce omega_c ( n + 1/2 ) , quad n = 0, 1, 2, ...\
    Psi_n (x, y) = exp(i/planck.reduce p_y y) phi.alt_n (x - x_0), quad x_0 = p_y / ( e B )
$

=== Degeneracy of Landau Levels

Now here is the set up of the system. We have a finite system with
size $L_x, L_y$ in the x and y direction. We impose:

- Periodic boundary condition in the y direction:
    $Psi(x, y) = Psi(x, y + L_y)$

This means that the momentum in the y direction is quantized:
$
    p_y = ( 2 pi planck.reduce ) / ( L_y ) k_y, quad k_y in Z
$
Then the LL wave function is given by:
$
    & Psi_(n,k_y) (x, y) = exp(i/planck.reduce p_y y) phi.alt_n (x - x_0),\
    &x_0 = p_y / ( e B ), quad p_y = ( 2 pi planck.reduce ) / ( L_y ) k_y, quad n, k_y in ZZ
$
where $phi_n$ is the n-th eigenstate of the harmonic oscillator. If
the system have finite size in the x direction, then the wave function
should be localized in the system. then the maximum value of $x_0$ is
$L_x$. Thus we have:
$
    (2 pi planck.reduce N_D)/ (e B L_y) tilde L_x quad arrow.l.r.double quad N_D = ( e B L_x L_y ) / ( 2 pi planck.reduce ) = ( Phi ) / ( Phi_0 )
$
The degeneracy of each Landau level is given by the number of flux
quanta through the system.
