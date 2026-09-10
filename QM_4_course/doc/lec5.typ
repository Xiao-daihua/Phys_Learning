#import "../env/lib.typ": *

= Lecture 5: Gauge Invariance of QM

== Classical Electromagnetism

=== Potential Convention

We here set up our convention for classical EM. The two Maxwell's
equations that are source independent can be satisfied if we use a
potential ansatz:
$
    B(x,t) = nabla times A(x,t), quad E(x,t) = -nabla phi(x, t) - partial_t A(x,t)
$
Note that due to the fact QM is not covariant theory, we will not use
the 4-vector notation which might make life complicate. One can show
that the definition is non-unique yet can be related by a gauge
transformation:
$
    phi_chi = phi - partial_t chi, quad A_chi = A + nabla chi
$

=== Electrodaynamics Lagrangian

Then if we have a charged particle in the EM field, the Lagrangian is
given by:
$
    L(x, dot(x), t) = 1/2 m dot(x)^2 - e phi(x, t) + e dot(x) dot A(x, t)
$
one can prove that the virational principle gives us the EoM with
lorentz force. We can see that the Lagrangian is not gauge invariant:
$
    L_chi = L + e (partial_t chi - dot(x) dot nabla chi) = L + e d/(d t) chi(x(t), t)
$
#remark([
    Note that here is a total derivative of $chi$, not a partial
    derivative!!
])
Yet the action is gauge invariant up to a boundary term:
$
    S_chi = S + e (chi(x_f, t_f) - chi(x_i, t_i))
$<eq:action_gauge_transform>

=== Electrodynamics Hamiltonian

Then in order to do canonical quantization, we need to find the
Hamiltonian. The canonical momentum is given by:
$
    p = (partial L) / (partial dot(x)) = m dot(x) + e A(x, t)
$
this is different from the commonly defined "QM" momentum
$pi = m dot(x)$. The Hamiltonian is then given by:
$
    H = p dot(x) - L = 1/(2 m) (p - e A(x, t))^2 + e phi(x, t)
$
We can see that the Hamiltonian is also not gauge invariant:
$
    p_chi = p + e nabla chi, quad H_chi = H - e partial_t chi
$

== QM with EM Field

=== Quantization

Then we can try to define a canonical quantized theory of this. Note
that the quantum theory is not unique, for the ordering of the
operators shall be defined. We define the following Hamiltonian:
#definition[QED Hamiltonian][
    We use the following Hamiltonian for quantization:
    $
        hat(H) = 1/(2 m) (hat(p)^2 - e (hat(p) dot A(x, t) + A(x, t) dot hat(p)) + e^2 A(x, t)^2) + e phi(x, t)
    $
    note that $A(hat(x),t)$ is a time dependent function of the space
    operator now and $hat(p)$ which is the canonical momentum
    operator.
]
We then impose the canonical commutation relation between operators:

#definition[Canonical Commutation Relation][
    We impose the following canonical commutation relation:
    $
        [hat(x)_i, hat(p)_j] = i planck.reduce delta_(i j), quad [hat(x)_i, hat(x)_j] = 0, quad [hat(p)_i, hat(p)_j] = 0
    $
]
note that with this commutation relation, it is $p$ that is the
canonical momentum operator and $p = -i planck.reduce nabla$ in the
position basis. We can also define a Mechanical Momentum operator:
$
    hat(pi) = hat(p) - e A(hat(x), t)
$
This doesn't satisfy the canonical commutation relation, but it is a
physical observable as we will see later.

Then we can also do path integral quantization. The transition
amplitude is given by:
$
    G(x_f, t_f; x_i, t_i) = integral_(x_i)^(x_f) cal(D)[x] exp(i/ planck.reduce S[x(t)])
$

=== Gauge Transformation of Operators

We can directly see that the Hamiltonian and the Action are not gauge
invariant. Yet we want the theory to be gauge invariant. One
requirement is that *the schrodinger equation should be gauge
invariant*. This means that the wavefunction should also transform
under gauge transformation:
$
    i planck.reduce partial_t |psi_chi (t)angle.r = hat(H)_chi (t) |psi_chi (t) angle.r
$
In order to have this equation to be well-defined, we must first
define what $O_chi$ means. Naively, we can just substitute the
classical gauge transformation of the observable into operators. Yet
this may cause problems with the Momentum Operator. if we have:
$
    p_chi tilde "????" tilde p + e nabla chi
$
then the canonical momentum operator will not commute with each other
after a gauge transformation, which is not consistent with the
canonical quantization result. In order to preserve the canonical
commutation relation, we take the following definition for gauge
transformation of momentum operator:
$
    hat(p)_chi = hat(p) , quad hat(pi)_chi = hat(pi) - e nabla chi(hat(x), t)
$
One should note that with this definition, the lagrangian and
Hamiltonian might change differently from the classical case in the
operator form.

=== Gauge Transformation of Wave Function

In order to preserve this form of schrodinger equation:
$
    i planck.reduce partial_t |psi_chi (t)angle.r = hat(H)_chi (t) |psi_chi (t) angle.r
$
We can have the following transformation rule of the wavefunction:
$
    |psi_chi (t)angle.r = U_chi (t) |psi(t)angle.r quad U_chi (t) = exp((i e)/ planck.reduce chi(hat(x), t))
$
If we write this gauge transformation in the position basis, we have:
$
    psi_chi (x, t) = e^((i e)/ planck.reduce chi(x, t) ) psi(x, t)
$

=== Gauge Transformation of Propagator

Then we can also see how the propagator transforms under gauge
transformation. We know that the action transforms as
@eq:action_gauge_transform, so the propagator transforms as:
$
    G_chi (x_f, t_f; x_i, t_i) = e^((i e)/ planck.reduce (chi(x_f, t_f) - chi(x_i, t_i)) ) G(x_f, t_f; x_i, t_i)
$<eq:propagator_gauge_transform>
This is also consistent with the fact that the wave function can be
written in terms of the propagator:
$
    psi(x_f, t_f)& = integral d^3 x_i G(x_f, t_f; x_i, t_i) psi(x_i, t_i)\
    psi_chi (x_f, t_f)& = integral d^3 x_i G_chi (x_f, t_f; x_i, t_i) psi_chi(x_i, t_i)\
    &= integral d^3 x_i e^((i e)/ planck.reduce (chi(x_f, t_f) - chi(x_i, t_i)) ) G(x_f, t_f; x_i, t_i) e^((i e)/ planck.reduce chi(x_i, t_i) ) psi(x_i, t_i)\
    &= e^((i e)/ planck.reduce chi(x_f, t_f) ) psi(x_f, t_f)
$

=== U-Picture

We before make the wave function transform under gauge transformation.
As Schrodinger picture to Heisenberg picture, in fact we can also
define a "U-picture" where the operators transform under gauge
transformation with an additional $U_chi (t)$ operatro and the wave
function is invariant.

We can define the following transformation of the operator:
$
    O^((U))_chi (t) = U_chi^(dagger) (t) O_chi (t) U_chi (t)
$
where $O_chi (t)$ is naively subsituting the classical gauge
transformation into the operator.

Note that consider the expectation value of an operator, if we have:
$
    hat(O)^((U))_chi (t) = hat(O) (t)
$
Then we view the observable as gauge invariant. We take all these
observables to be the physical observables of the theory. In this way,
we can have a gauge invariant quantum theory.

There are some examples of this transformation:
$
    & hat(x)_chi = hat(x) = hat(x)^((U))_chi, \
    & hat(p)_chi = hat(p), quad quad quad &hat(p)^((U))_chi = hat(p) + e nabla chi(hat(x), t), \
    & hat(pi)_chi = hat(pi) - e nabla chi(hat(x), t), quad quad quad &hat(pi)^((U))_chi = hat(pi)
$
Thus we can also see here that the mechanical momentum is physical
observable while the canonical momentum is not, though the canonical
momentum form is gauge independent.

=== Probability Density and Current

In basic QM, we have the probability density and current defined as:
$
    rho(x, t) = |psi(x, t)|^2, quad J(x, t) = (1/(2 m)) (psi^* (-i planck.reduce nabla) psi + c.c.)
$
They satisfy the conservation law:
$
    partial_t rho + nabla dot J = 0
$
However, in the presence of EM field the probability current in this
form will be not gauge invariant. We can define a gauge invariant
probability current.
#definition[Gauge Invariant Probability Current][
    We can define the following gauge invariant probability current:
    $
        J(x, t) = (1/(2 m)) (psi^* (-i planck.reduce nabla - e A(x, t)) psi + c.c.)
    $
]
Then with the probability density defined as
$rho(x, t) = |psi(x, t)|^2$, we can also show that the conservation
law is still satisfied:
$
    partial_t rho + nabla dot J = 0
$

