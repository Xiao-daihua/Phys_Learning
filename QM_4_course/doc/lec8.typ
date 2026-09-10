#import "../env/lib.typ": *

= Lecture 8: Berry Phase

== Dirac Monopole

=== Non-Global Vector Potential

Now we consider a world with a magnetic monopole. The magnetic field
of a monopole is given by:
$
    B ( r ) = ( e_( M ) ) / ( 4 pi r^( 2 ) ) ( hat(r) ),
$
However, due to the definition of vector potential, if we have:
$
    B = nabla times A, quad nabla dot B = 0,
$
which is inconsistent with the fact that the magnetic field of a
monopole has a non-zero divergence. To solve this problem, we can
assume that the vector potential *is not globally defined*.

=== Dirac Quantiztion
#YL([The argument during the class is not understandable. I'll not
    think like this. Don't even try to understand this, it only makes
    things more confusing.])

Here I take the argument in the note of David Tong.


== Berry Phase 

=== Global Phase Transformation Invariant

We first want to have a well defined phase. Notice that quantum states
are *rays* in the Hilbert space, and doing a global phase
transformation does not change the physical state. For a series of
states:
$
    |psi_1 angle.r, |psi_2 angle.r, ..., |psi_N angle.r
$
we can always perform a global phase transformation:
$
    |psi_(i,Lambda) angle.r = exp(i Lambda_i)|psi_i angle.r, quad Lambda in R
$
and the states are unchanged. Thus the phase of a quantum state is not
well defined. Then we have a look if the phase difference


== AB Effect as Berry Phase


=== Set Up 
Consider the set up of a particle in EM field but confined in a box with center position $R $. The Hamiltonian is given by:


