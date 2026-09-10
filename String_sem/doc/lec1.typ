#import "../env/lib.typ": *

= Preliminary: Functional Formalism

In this section, we will discuss a functional formulation of quantum theory,
which is the basis of the path integral approach to quantum field theory. The
contents mainly follow the book @srednickiQuantumFieldTheory2007 and
@difrancescoConformalFieldTheory1997.

In quantum field theory we mainly care about the transition amplitude between
states and with operators inserted, which are called the correlation functions.
Among all correlation functions, we mainly care about transition amplitudes
between "vaccum states" with operators inserted:
$
  angle.l Omega(infinity)|cal(T) O(x_1) dots O(x_n)|Omega(- infinity) angle.r
$
It is proven that the correlation functions are related to the scattering
amplitudes of particles, through the LSZ reduction formula. Therefore, the
correlation functions are one of the main objects of interest in quantum field
theory. (note that $|Omega(t) angle.r$ becomes the time independent vaccum state
$|0 angle.r$ for a free theory)

Apart from the canonical quantization approach, there exist another approach in
quantum theory, which makes the calculation of correlation functions more
convenient. This approach is called the path integral approach, which is the
main topic of this lecture.

== Quantum Mechanics Path Integral

To formulate the path integral approach, we start with one dimensional quantum
mechanic system with a standard non-relativistic Hamiltonian:
$ H = p^2/(2 m) + V(x) $
and focus on the standard transition amplitude between two position eigen
states, then we generalize it to case with operator insertions and transition
amplitude between vaccum states, and finally we will generalize it to quantum
field theory.

=== Transition Amplitude as Functional Integral

We try to calculate the transition amplitude between two position eigen states
$|x angle.r$ and $|x' angle.r$, by definition the transition amplitude is:
- *Schrodinger Picture :* with $|x angle.r$ as eigen state of position operator,
  we have:
$ angle.l x'|e^(- i H t)|x angle.r $
- *Heisenberg Picture :* with $|x,t angle.r$ as eigen state of position operator
  $x(t)$ at time $t$, we have:
$ angle.l x', t|x, 0 angle.r $
These two definitions are equivalent, its only a matter of choice of picture.
#remark([
  In fact we can prove that $|x,t angle.r = e^(i H t)|x angle.r$, thus
  directly see the equivalence of the two definitions.
])
The discussion in this subsection is straightforward in schrodinger picture,
thus we will mainly work in schrodinger picture in this subsection.

We want to transform this operator expession into a functional integral, thus we
need to insert complete set of states to make operators into c-numbers. The
trick is as follows:

- #highlight[Step 1]: devide time interval into $N$ small intervals
  $t = sum_(i=1)^N delta t$ and then insert complete set of states in each
  small interval:
$
  angle.l x'|e^(- i H t)|x angle.r &= angle.l x'|e^(- i H delta t) e^(- i H delta t) dots e^(- i H delta t)|x angle.r \
  &= integral product_(i=1)^(N-1) d x_i angle.l x'|e^(- i H delta t)|x_(N-1) angle.r angle.l x_(N-1)|e^(- i H delta t)|x_(N-2) angle.r dots angle.l x_1|e^(- i H delta t)|x angle.r
$<initpathinte>
- #highlight([Step 2]): evaluate each infinitesimal transition amplitude
  $angle.l x_(i+1)|e^(- i H delta t)|x_i angle.r$ we notice that:
$
  e^( - i H delta t) = e^(- i p^2/(2 m) delta t) e^(- i V(x) delta t) e^(O\(delta t^2\))
$
#remark[
  The above formula is a consequence of the Baker-Campbell-Hausdorff formula,
  which states that for two operators $A$ and $B$, we have:
  $
    e^(A + B) = e^A e^B e^(-1/2 [A, B])dots
  $
]
Then we insert complete set of momentum eigen states $|p angle.r$:
$
  angle.l x_(i+1)|e^(- i H delta t)|x_i angle.r &= integral (d p_i)/(2 pi) angle.l x_(i+1)|e^(-i delta t p^2/(2 m) )|p_i angle.r angle.l p_i|e^(- i delta t V(x))|x_i angle.r \
  &= integral (d p_i)/(2 pi) exp[ i p_i (x_(i+1) - x_i) - i (p_i^2/(2 m) + V(x_i)) delta t ]
$
If we do this for each term in @initpathinte, we will get:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') (product_(i=1)^(N-1) d x_i product_(j = 0)^(N-1) (d p_j)/(2 pi)) exp[ i sum_(i=0)^(N-1) (p_i (x_(i+1) - x_i) - (p_i^2/(2 m) + V(x_i)) delta t ) ]
$

- #highlight[Step 3]: then we integrate out $p_i$. This is a gaussian integral,
  thus we can get:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') (product_(i=1)^(N-1) d x_i f(delta t, m)) exp[ i sum_(i=0)^(N-1) (m/2 ((x_(i+1) - x_i)/delta t)^2 - V(x_i)) delta t ]
$
where $f(delta t, m)$ is caused by the gaussian integral.

#remark[
  In some contexts eg. Lattice field theory, we mainly don't integrate out
  $p_i$ and keep the path integral formula in terms of both $x$ and $p$.
]

- #highlight([Step 4]): we take the limit of $N arrow.r infinity$ and
  $delta t arrow.r 0$, then we can get the final path integral formula:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_(x(0) = x)^(x(t) = x') cal(D)x exp[ i integral_0^t d t (m/2 dot(x)^2 - V(x)) ]
$
Where we define the measure of the path integral as:
$
  cal(D)x = lim_(N arrow.r infinity) (product_(i=1)^(N-1) d x_i f(delta t, m))
$
Moreover, we notice that the exponent in the path integral is just the action of
the system, thus we can write the path integral formula in a more compact way:
$
  angle.l x'|e^(- i H t)|x angle.r = integral_x^(x') cal(D)x exp(i S[x])
$
#remark[
  Notice that the path integral measure is in fact a mathematically
  ill-defined object. Yet to make it physical meaningful, we have to impose
  some physical conditions on it.
]

=== Correlation Functions as Functional Integral

Correlation functions are transition amplitudes with time ordered operator
insertions, in Heisenberg picture, we can write the correlation functions as:
$
  angle.l x',t'|cal(T) O(t_1) dots O(t_n)|x,t angle.r
$
where $|x,t angle.r$ is the eigen state of position operator $x(t)$ at time $t$.
By repeating the same procedure as in the previous subsection, we can get the
path integral formula for the correlation functions:
$
  angle.l x',t'|cal(T) O(t_1) dots O(t_n)|x,t angle.r = integral_x^(x') cal(D)x O(t_1) dots O(t_n) exp(i S[x])
$
where in the LHS, $O(t)$ are operators, while in the RHS, $O(t)$ are c-numbers.

=== Correlation Functions with Vaccum States

We mainly care about the correlation functions between vaccum states at
$- infinity$ and $infinity$ time (while for a free theory the vaccum state is
independent of time, for a interacting theory we can define sth as the vaccum
state in infinity time which annilated by $a(infinity)$), which are defined as:
$ angle.l 0|cal(T) O(t_1) dots O(t_n)|0 angle.r $
#remark([
  For simplicity, we sometimes write the correlation function between vaccum
  states as $angle.l O(t_1) dots O(t_n)angle.r$
])

We can use a trick to transform this correlation function into something easier
to calculate.

- An Important Fact:
We notice that if we normalize the Hamiltonian to have the vaccum energy to be
zero, then the vaccum state can be generated by:
$
  |0 angle.r prop lim_(T arrow.r infinity) e^(- H T)|psi angle.r
$<limitvac>
This is because as $T arrow.r infinity$, the contribution from the excited
states will be exponentially suppressed only the vaccum state will survive as
long as $|psi angle.r$ has non-zero overlap with the vaccum state.

- Trick:
We modify the Hamiltonian by adding a small imaginary part:
$ H arrow.r (1-i epsilon) H quad epsilon>0 $
Then we notice that consider an arbitrary state $|psi angle.r, |psi' angle.r$
with non-zero overlap with the vaccum state, we have:
$
  lim_(t' arrow.r infinity\ t arrow.r - infinity) angle.l psi'|e^(- i (1- i epsilon) H (t'-t) ) |psi angle.r prop lim_(t' arrow.r infinity\ t arrow.r - infinity) angle.l 0|e^(- i H (t'-t) )|0 angle.r
$
Thus we have:
$
  angle.l 0|0 angle.r prop integral cal(D) x e^(i S_epsilon [x])
$
- We don't write out the boundary condition for its arbitrary as long as we find
  suitable normalization of the measure.
- $S_epsilon [x]$ is the associate action with the modified Hamiltonian.
Similarly, for the correlation functions, we have:
$
  angle.l O(t_1) dots O(t_n) angle.r := angle.l 0|cal(T) O(t_1) dots O(t_n)|0 angle.r prop integral cal(D)x O(t_1) dots O(t_n) exp(i S_epsilon [x])
$<correlatorfunc>
#remark([
  We write proportional to instead of equal to because in @limitvac taking
  limit may cause some subtleties, yet as long as we keep some suitable
  normalization, we can get rid of the subtleties and get a rational result.
])

=== Generating Functional and Functional Derivative

Generating functional is a very useful tool to calculate correlation functions
in quantum theory. We define a generating functional as the following functional
integral:
$
  Z[J] = integral cal(D)x exp(i S_epsilon [x] + i integral d t J(t) x(t))
$
Then we can see that the correlation functions can be calculated by taking
functional derivatives of the generating functional:
$
  angle.l x(t_1) dots x(t_n) angle.r prop& integral cal(D)x x(t_1) dots x(t_n) exp(i S_epsilon [x] + i integral d t J(t) x(t))|_(J=0) \
  =& (-i)^n (delta^n )/(delta J(t_1) dots delta J(t_n))Z[J]|_(J=0)
$
Now we can discuss about the normalization. For free theory we can see that
$Z[0] prop angle.l 0|0 angle.r = 1$, thus long as we choose a normalization with
$Z[0]=1$ we can make the $prop$ an equal sign in all above formula. For a free
theory $Z[J]$ can be explicitly calculated, after the normalization is fixed, in
the following part of this note, we will use the normalization with $Z[0]=1$.

=== Euclidian path integral
Now we make an assumption that:

- The correlation function $angle.l x(t_1)...x(t_n) angle.r$ as a function of
  time $C(t_1,...t_n)$ can be analyticaly continued from real time to
  imaginary time.

Then we can make an analytical continuation of the correlation function from
real time to imaginary time $t = -i tau, tau in RR$, which is called the
Euclidian correlation function:
$
  angle.l x_E (tau_1) dots x_E (tau_n) angle.r := C(-i tau_1, dots - i tau_n)
$
Then due to the relation between the correlation function and the functional
integral @correlatorfunc, we can also get a functional integral formula for the
Euclidian correlation function(The RHS is called the Wick Rotation of the
original path integral):
$
  angle.l x_E (tau_1) dots x_E (tau_n) angle.r = integral cal(D) x_E x_E (tau_1) dots x_E (tau_n) exp(- S_E [x_E])
$
Where $x_E (tau) := x(- i tau) = x(t)$ and $S_E [x_E] = - i S[x]$ is the
Euclidian Action, we define it like this for simplicity. For example, a quantum
mechanical system:
$ S_E [x_E] = integral d tau (m/2 (partial_tau x_E)^2 + V(x_E)) $
In CFT we mainly care about Euclidian Path Integral of Euclidian Action on
Euclidian Space. If we want to get a correlation function of the related
Lorentzian theory, we just do an analytical continuation back by taking the
result function from $tau in RR$ to $tau = i t, t in RR$.
#remark([
  We no more have the $epsilon$ in the Euclidian path integral. In fact we can
  view $H arrow.r (1-i epsilon)H$ equivalently as $t arrow.r (1 -i epsilon) t$
  in the path integral. We are just considering an extreme case where
  $- i epsilon t$ dominantes.
])

== Free Scalar Field Path Integral
Now we generalize the path integral fomalism from quantum mechanics to quantum
field theory. We will mainly discuss about the path integral of free scalar
fields. In this section, we will mainly use the Lorentzian path integral. The
action of a free real scalar field is:
$
  S = integral d^4 x (-1/2 partial_mu phi partial^mu phi - 1/2 m^2 phi^2)
$

=== Generalize from QM

Path Integral of QFT can be obtained from the path integral of QM simply by
doing:

- $x(t) arrow.r phi_i (x,t)$
- $J(t) arrow.r J(x,t)$
And we integrate over space time in the action term and integrate over all field
configuration in the path integral.
$
  Z[J] = integral cal(D) phi exp(i S_epsilon [phi] + i integral d^4 x J(x) phi(x))
$
and the correlation functions can be calculated by taking functional derivatives
of the generating functional:
$
  angle.l phi(x_1) dots phi(x_n) angle.r = & integral cal(D) phi phi(x_1) dots phi(x_n) exp(i S_epsilon [phi] + i integral d^4 x J(x) phi(x))|_(J=0) \
  =& (-i)^n (delta^n )/(delta J(x_1) dots delta J(x_n))Z[J]|_(J=0)
$

=== Exact Generating Functional

Generating functional of a free theory can be exactly calculated. We first look
at the action:
$
  S_epsilon [phi] + integral d^4 x J(x) phi(x) = integral d^4 x (-1/2 partial_mu phi partial^mu phi - 1/2 (m^2- i epsilon' ) phi^2 + J phi)
$
notice that we use a trick of taking $-i epsilon H$ as a correction to the mass
term: $- i epsilon H = - 1/2 i epsilon' phi^2$. Then the action is just the
standard action with a imaginary shift to the mass, in the following we will
just write $m^2$ but really means $m^2 - i epsilon'$.

After an integration by part, we can rewrite the action as:
$
  S_epsilon [phi] + integral d^4 x J(x) phi(x) =& -1/2 integral d^4 x phi (- partial^2 - m^2) phi + integral d^4 x J phi\
  =& integral d^4 x (-1/2 phi M phi + J phi)
$
where $M = - partial^2 - m^2$ is a linear operator. We know that how to do
integral with this stuff on the exponential, see that:
$
  integral d^( n ) x exp ( - ( 1 ) / ( 2 ) x^( T ) M x - J^( T ) x ) = ( 2 pi )^( n slash 2 ) ( "det" M )^( - 1 slash 2 ) exp ( ( 1 ) / ( 2 ) J^( T ) M^( - 1 ) J)
$
We generalize this into a functional case with a imaginary $i$ ahead, then we
can get:
$
  Z[J] = exp(i/2 integral d^4 x d^4 y J(x) D_F (x-y) J(y)) Z[0]
$
where $D_F (x-y)$ can be viewed as the inverse of the operator $M$, satisfying
the following equation:
$
  (- partial^2 - m^2) D_F (x-y) = delta^4 (x-y)
$
and can be explicitly written as:
$
  D_F (x-y) = integral (d^4 p)/(2 pi)^4 exp(- i p (x-y))/(p^2 + m^2 - i epsilon)
$
this turns out to be exactly the Feymann propagator of the free scalar field.
#remark([
  Surely, this is not a rigorous derivation, but a fast way to believe the
  result is correct.
])

=== Calculation of Correlation Functions

Now we can calculate the correlation functions of the free scalar field by
taking functional derivatives of the generating functional. For example, the two
point correlation function is:
$
  angle.l phi(x) phi(y) angle.r = -i delta^2 /(delta J(x) delta J(y)) Z[J]|_(J=0) = - i D_F (x-y)
$
We can see that indeed $D_F (x - y)$ is the Feymann propagator of the free
scalar field.

Here we can easily see the Wick's theorem for free theory, that the correlation
function can be written as a sum of products of two point correlation functions.
This is because the generating functional is a exponential of a quadratic term
of $J$, thus when we take functional derivatives, we will get a sum of products
of two point correlation functions.

== Quantum Conservation and Ward identity

Classically, Noether's theorem states that for a system with a continuous
symmetry, there is a conserved current $J^mu$ and a conserved charge $Q$. In a
quantum theory, we can find that the symmetry will lead to constraints on the
correlation functions, which are called the Ward identities. In this section, we
will discuss about this using a Euclidian path integral.

=== Noether's Theorem

We define a symmetry transformation in the following way:
#definition[Global Symmetry Transformation][
  A symmetry transformation is a coordinate transformation with a constant
  parameter $omega$ :
  $
    x arrow.r x'^mu = f^mu (x, omega) quad phi_i (x) arrow.r phi'_i (x') = F_i (phi(x), omega)
  $
  $
    phi'_i (x) = F_i (phi(f^(-1)(x)), omega) quad delta phi_i (x) = phi'_i (x) - phi_i (x) = - i omega_a G_a phi_i (x)
  $
  Such that the action is invariant under this transformation:
  $
    S[phi'(x)] = S[phi(x)] quad "or infinitesimally" quad delta S = 0
  $
]
With this definition, if we lift the parameter $omega_a$ to depend on the
spacetime $omega_a (x)$. Then the viration of the action will not be zero, but
will be propotional to the derivative of $omega_a (x)$. We can write the
viration of the action as:
$
  delta S = integral d^4 x -J_a^mu partial_mu omega_a (x) = integral d^4 x (partial_mu J_a^mu) omega_a (x)
$
Thus if we consider on-shell condition, that under any viration of the field,
the action is invariant, then we can get the classical conservation law:
$
  partial_mu J_a^mu = 0
$
This is known as the Noether's theorem.

=== Coorelation Functions under Symmetry Transformation

For a quantum theory, we not only need the action to be invariant under the
symmetry transformation, but also need the path integral measure to be invariant
under the symmetry transformation $cal(D)phi' = cal(D)phi$. Then we consider the
following Euclidian correlation function:
$
  angle.l phi(x'_1) dots phi(x'_n) angle.r = integral cal(D) phi phi(x'_1) dots phi(x'_n) exp(- S [phi])
$
We simple rename the integral variable from $phi(x)$ to $phi'(x)$, then we can
get:
$
  angle.l phi(x'_1) dots phi(x'_n) angle.r = integral cal(D) phi' phi'(x'_1) dots phi'(x'_n) exp(- S [phi'])
$
We then use the two symmetry conditions to transform the measure and the action
$cal(D) phi' = cal(D) phi$ and $S[phi'] = S[phi]$, then we can get:
$
  angle.l phi(x'_1) dots phi(x'_n) angle.r = integral cal(D) phi phi'(x'_1) dots phi'(x'_n) exp(- S [phi]) = angle.l phi'(x'_1) dots phi'(x'_n) angle.r
$
Thus we can see that the correlation function should satisfy following relation:
$
  & angle.l phi'(x_1)...phi'(x_n) angle.r = angle.l phi(x_1) dots phi(x_n) angle.r \
  "or equivalently" & angle.l F(phi(x_1), omega) dots F(phi(x_n), omega) angle.r = angle.l phi(x'_1) dots phi(x'_n) angle.r
$
=== Ward Identity
We can also derive another type of constraint infinitesimally. We consider a
local transformation by lifting the parameter $omega_a$ to depend on the
spacetime $omega_a (x)$. Then we notice that:
$
  angle.l phi(x_1) dots phi(x_n) angle.r = integral cal(D) phi' phi'(x_1) dots phi'(x_n) exp(- S [phi'])
$<wardidentity>
We consider to expand the RHS to the first order of $omega_a (x)$, now:

$ phi'(x_i) = phi(x_i) - i omega_a (x_i) G_a phi(x_i) $
$
  S[phi'] = S[phi] + delta S = S[phi] + integral d^4 x (partial_mu J_a^mu) omega_a (x)
$
Then we can expand the RHS of @wardidentity to the first order of $omega_a (x)$,
we can get:
$
  &angle.l phi(x_1) dots phi(x_n) angle.r \
  = & integral cal(D) phi (phi(x_1) - i omega_a (x_1) G_a phi(x_1)) dots (phi(x_n) - i omega_a (x_n) G_a phi(x_n)) exp(- S [phi] - integral d^4 x (partial_mu J_a^mu) omega_a (x)) \
  =& integral cal(D) phi phi(x_1) dots phi(x_n) exp(- S [phi]) + i integral d^4 x omega_a (x) integral cal(D) phi (partial_mu J_a^mu) phi(x_1) dots phi(x_n) exp(- S [phi]) \
  &- i sum_(i=1)^n omega_a (x_i) integral cal(D) phi phi(x_1) dots G_a phi(x_i) dots phi(x_n) exp(- S [phi])
$
Finally, due to the arbitrary choice of $omega_a (x)$, we compare the integrant,
and this leads to the Ward identity:
$
  partial_mu angle.l J_a^mu (x) phi(x_1) dots phi(x_n) angle.r = - i sum_(i=1)^n delta^4 (x-x_i) angle.l phi(x_1) dots G_a phi(x_i) dots phi(x_n) angle.r
$

