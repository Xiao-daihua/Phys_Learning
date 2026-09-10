#import "../env/lib.typ": *

= Lecture 12: Discrete Symmetries I

== Overview of Discrete Symmetries

There are 3 discrete symmetries important in QFT: $C,P,T$.

=== Free Field Theory
In free field theory, most theory preserve all $C,P,T$ symmetry.
However, not Weyl Fermion. First, in Weyl fermion $C$ and $P$, must go
together, remember in analysis of adjoint representation, we have seen
that:
$
    P: (1/2,0) arrow.r (0,1/2)
$
For a Weyl fermion, to have it represent a $P$ symmetry, we need to
define the symmetry transformation as:
$
    P: psi_L (x) arrow.r epsilon psi_L^* (P x)
$
This automatically does a $C$ transformation at the same time, due to
the fact that the charge change from $1$ to $-1$ when we take the
complex conjugate. So we have:
$
    psi_L arrow.r e^(i q) psi_L quad epsilon psi_L^* arrow.r e^(-i q) epsilon psi_L^*
$

=== Interacting Theory

Generally, interactions break some of the discrete symmetries.
However, they never break $C P T$ symmetry, which is a fundamental
theorem in QFT.

#theorem[CPT Theorem][
    In any local, (P,O)Lorentz invariant quantum field theory, will
    always have an exact $C P T$ symmetry:
    $
        Theta = C P T
    $
]
Experimentally, this is a fact:

- In standard model, both P and T are broken.

- In QED C and P exist.

- In QCD and standard model strong interaction, preserves P and T.
    This is a puzzle called the strong CP problem, why nature chooses
    to preserve this symmetry.

== Parity Symmetry

=== Definition

- *Non-relativistic Classical and Quantum Mechanics*

Classically, we can define parity as a transformation on the canonical
variables, it is a symmetry when preserving the dynamics of the
system.
$
    P: x^i arrow.r -x^i, p^i arrow.r -p^i
$
we call object transform like this a vector and object transform like:
$
    P: L^i arrow.r L^i, S^i arrow.r S^i
$
as a pseudovector. Now we perform a canonical quantization. As Wigner
theorem tells us, the symmetry transformation are realized as unitary
or anti-unitary operators on the Hilbert space. For parity operator,
we can define a unitary operator $U_P$ such that:
$
    U_P^dagger x^i U_P = -x^i, quad U_P^dagger p^i U_P = -p^i
$
One can see that this transformation is a canonical transformation:
#YL[Put back important stuffs]

- *Relaticistic Quantum Field Theory*
Now we generalize this discussion to relativistic quantum field
theory. We define the parity transformation as a transformation on the
spacetime coordinates:
$
    P: x^mu arrow.r tensor(P, +mu, -nu) x^nu, quad tensor(P, +mu, -nu) = "diag"(1,-1,-1,-1)
$
Notice that the matrix satisfies:
$
    tensor(P, +mu, -rho) tensor(P, +rho, -sigma) = delta^mu_sigma
$
And it satisfies all sort of commutation relation with the generators
of the Lorentz group.

As a analogue of the continuous symmetry we discussed before.

- In QFT, the symmetry is realized by a unitary operator $U_P$ on the
    Hilbert space. And forms a Unitary representation of the parity
    transformation, with suitable commutation relations with other
    symmetry operators.
$
    U_P^dagger P^mu U_P = tensor(P, +mu, -nu) P^nu, quad U_P^dagger J^(mu nu) U_P = tensor(P, +mu, -rho) tensor(P, +nu, -sigma) J^(rho sigma)
$

- Usually the Hilbert space can be labeled by momentum and spin and
    other quantum numbers. Due to the commutation relation of the
    momentum operator, angular momentum operator and the parity
    operator, we have:
$
    U_P ket({p_i} {sigma_i}) = product_i eta_i ket({tensor(P, +mu, -nu) p_i^nu} {sigma_i})
$
Note here we don't consider other quantum number that may transform
under parity transformation.

- Dynamical fields transform under the parity transformation as:
$
    U_P^dagger phi_a (x) U_P = hat(P)_(a b) phi_b (P x)
$
where $hat(P)$ is a representation of the parity transformation on the
field space.

=== Faithful or Not

In fact we have the degree of freedom to choose how field transform
under the parity transformation, thus $hat(P)_(a b)$ can be chosen. Of
course, there are some standards, we always would like the parity to
be a symmetry for the theory (of course, may fail!) and the
presentation to the faithful (of course may fail too).

Now let's consider, when will we fail to have a faithful
representation of the parity transformation on a QFT. This is the case
of *Majorana fermion*.

Generally, the parity transformation operator $U_P$ is a *faithful
representation* if $U_P^2 = 1$. In term of the acting on the fields,
we have:
$
    (U_P^2)^dagger phi_a (x) (U_P^2) = hat(P)^2_(a b) phi_b (x) = phi_a (x)\
    U_P^2 ket({p_i} {sigma_i}) = product_i eta_i^2 ket({p_i} {sigma_i}) = ket({p_i} {sigma_i})
$
Thus we have $hat(P)^2 = 1$ and $eta_i^2 = 1$.

We observe that $U_P^2$ is a symmetry operator of a interal symmetry.
As we have discussed, this internal symmetry can be chosen quite
arbitrarily for certain field.

- *If it is a Lie Group Symmetry*

Then we have:
$
    U_P^2 = e^(i alpha_a Q_a)
$
Where $Q_a$ is the generator of the internal symmetry. Then we can
redefine the parity transformation as:
$
    U_P' = U_P e^(-i alpha_a Q_a / 2)
$
Then it gives us a faithful representation of parity transformation,
if we redefine the parity transformation from $U_P$ to $U_P'$:
$
    U_P'^2 = U_P e^(-i alpha_a Q_a / 2) U_P e^(-i alpha_a Q_a / 2) = U_P^2 = 1
$
#note[Note that the internal symmetry generator should commute with a
    spactime symmetry, for they are naturally different.]

- *If it is a Discrete Symmetry* (Majorana Fermion)

However, sometimes parity transformation for some field may limit
$U_P^2$ to be a discrete symmetry and representation will never be
faithful. This is the case of Majorana fermion, where we have:
$
    U_P^2 = (-1)^F
$
In this case, we can never redefine. Of course, one may think that
$(-1)^F = e^(i 2 pi J^3)$, yet $J^3$ is a spactime symmetry, the
commutation may not be garanteed.

In Majorana Fermions, the mass term gives us:
$
    m psi_L^T epsilon psi_L + h.c.
$
If we want the mass term to preserve the parity symmetry, we need to
have:
$
    U_P: psi_L (x) arrow.r eta epsilon psi_L^* (P x) quad eta^2 = -1
$
This lead to a fact that:
$
    U_P^2: psi_L (x) arrow.r -psi_L (x)
$

There is a statement that:
#theorem[
    Besides Majorana Fermion, all other fields can be given a good
    faithful representation of which the parity transformation is.
]
Thus now we focus on the faithful representation case. In this case,
one can prove that the parity transformation on the field $hat(P)_(a b) $ can be diagonalized, thus we can choose a basis such that the parity transformation on the field is diagonal, and we have:
$
    U_P^dagger phi_a (x) U_P = eta_a phi_a (P x) quad eta_a^2 = 1
$
where $eta_a$ is called the intrinsic parity of the field.

=== Scalar Field

Consider a faithful representation of parity transformation on a
scalar field. We have two cases:
$
    U_P^dagger phi (x) U_P = phi (P x) quad U_P^dagger phi (x) U_P = -phi (P x)
$
The first case is called scalar field, the second case is called
pseudoscalar field.

- *Klein-Gordon Field*

Focus on KG field, we can explicitly calculate how parity act on the
creation and annihilation operator and so on all operators. By
assuming:
$
    U_P^dagger phi (x) U_P = eta phi (P x) quad eta^2 = 1
$
we can have:
$
    U_( P )^( dagger ) a_( k ) U_( P ) & = eta_( P ) a_( -k ) quad U_( P )^( dagger ) a_( k )^( dagger ) U_( P ) & = eta_( P ) a_( -k )^( dagger )
$
This tells us the vaccum is invariant under parity transformation, and
we can also derive the transformation of conserved currents, which
exactly match the adjoint representation of parity on poincare
algebra.
$
    U_P^dagger P^mu U_P = P_mu quad U_( P )^( dagger ) K^( i ) U_( P ) & = - K^( i ) quad U_( P )^( dagger ) J^( i ) U_( P ) & = J^( i )
$

- *Complex Scalar Field*

For a complex scalar field, we ordinarily define the parity
transformation as:
$
    U_( P )^( dagger ) phi.alt ( x ) U_( P ) & = eta_( P ) phi.alt ( P x ) quad U_( P )^( dagger ) phi.alt^( * ) ( x ) U_( P ) & = eta_( P ) phi.alt^( * ) ( P x )
$

=== Spinor Field

Consider Dirac Fermion, under lorentz transformation, we have:
$
    U_Lambda^dagger psi (x) U_Lambda = S(L) psi (Lambda x) quad S(L) = mat(Lambda_L, 0; 0, Lambda_R)
$
Due the fact that parity transformation act on lorentz generators as:
$
    U_P^dagger J^( i ) U_P = J^( i ) quad U_P^dagger K^( i ) U_P = -K^( i )
$
It exchanges the left and right handed representation of the field
configuration, thus we need to define the parity transformation on
dirac field as:
$
    & U_P: psi (x) arrow.r eta gamma^0 psi (P x) quad gamma^0 = mat(0, II; II, 0)\
    & U_P^dagger psi (x) U_P = eta gamma^0 psi (P x)
$

Remember that we expand the Dirac field as:
$
    psi(x) = integral d Omega_( p ) [ sum_( r ) e^( - i p x ) a_( r ) ( p ) u_( r ) ( p ) + e^( i p x ) tilde(b)_( r )^( dagger ) ( p ) v_( r ) ( p ) ]
$
The above transformation relation, we have:


=== Vector Field

