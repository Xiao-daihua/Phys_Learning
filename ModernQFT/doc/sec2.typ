#import "../env/lib.typ": *

= Conformal Transformations

We now focus on a theory on the RG fixed point. One can deduce that
the RG fixed point definition of the correlation function will lead to
the following identity:
$
    chevron.l cal(O)_1( lambda x_1) dots cal(O)_n (lambda x_n) chevron.r
    = lambda^(-Delta_1 - ... - Delta_n)
    chevron.l cal(O)_1( x_1) dots cal(O)_n (x_n) chevron.r.
$
One may find that this is exactly the definition of symmetry under
scaling transformations of certain covariant fields. In fact, at RG
fixed points we often have a larger symmetry group, the conformal
group. In this section we will discuss the conformal group and its
implications for correlation functions.

== Conformal transformations

=== The conformal Killing equation

A conformal transformation is a coordinate transformation $x -> x'$
for which

$
    g'_(mu nu)(x') = Omega(x) g_(mu nu)(x).
$
#remark([
    This is a very generalized equation, without having the metric
    fixed. Starting now, we will fix a metric and use the flat
    Euclidean metric $eta_(mu nu) = (1,1,1,...)$, which is the
    identity matrix. Notice that the Minkowski metric will also lead
    to a similar result.
])
For an infinitesimal map
$
    x'^mu = x^mu + epsilon^mu (x),
$
the Jacobian and its inverse are
$
    (partial x'^mu)/(partial x^alpha)
    = delta^mu_alpha + partial_alpha epsilon^mu,
    qquad
    (partial x^mu)/(partial x'^alpha)
    = delta^mu_alpha - partial_alpha epsilon^mu.
$
To first order, we have:

$
    g'_(mu nu)
    = g_(mu nu) - partial_mu epsilon_nu - partial_nu epsilon_mu.
$

Writing $Omega = 1-f$, one obtains the conformal Killing equation

$
    partial_mu epsilon_nu + partial_nu epsilon_mu
    = f(x) g_(mu nu),
    qquad
    f(x) = 2/d partial_mu epsilon^mu.
$

In flat space, differentiating and permuting indices gives

$
    2 partial_mu partial_nu epsilon_rho
    = eta_(rho nu) partial_mu f
    + eta_(rho mu) partial_nu f
    - eta_(mu nu) partial_rho f.
$

Tracing and differentiating imply

$
    2 partial^2 epsilon_rho = (2-d) partial_rho f,
$

$
    (2-d) partial_mu partial_nu f
    = eta_(mu nu) partial^2 f.
$

Hence

$
    cases(
        "no local constraint on" f quad & d=1,
        partial^2 f = 0 & d=2,
        partial_mu partial_nu f = 0 & d>2.
    )
$

=== Finite conformal transformations

For $d>2$, $f=A+B_mu x^mu$. We then take the ansatz of $epsilon^mu$
given as:
$
    epsilon^mu
    = a_mu + b_(mu nu) x^nu + c_(mu nu rho) x^nu x^rho
    quad (2.11)
$

Here $c_(mu nu rho) = c_(mu rho nu)$. For now $a_mu$, $b_(mu nu)$, and
$c_(mu nu rho)$ are arbitrary constants. Finally, we can plug this
form of $epsilon^mu$ into the conformal killing equation and require
the condition to be satisfied for all $x$. This leads to the
following:

- $a_mu$ is free of constraints, and corresponds to infinitesimal
    translations.

- $b_(mu nu) = alpha eta_(mu nu) + m_(mu nu)$, with
    $m_(mu nu) = -m_(nu mu)$. The trace part corresponds to an
    infinitesimal scale transformation. $m_(mu nu)$ corresponds to an
    infinitesimal Lorentz transformation/rotation.

- $c_(mu nu rho) = eta_(mu rho) b_nu + eta_(mu nu) b_rho
    - eta_(nu rho) b_mu$, for a constant vector $b_mu$.

The corresponding finite transformations are

$
    "translation:" & quad x'^mu = x^mu + a^mu, \
    "rotation/Lorentz:" & quad x'^mu = M^mu_nu x^nu, \
    "dilatation:" & quad x'^mu = lambda x^mu, \
    "SCT:" & quad x'^mu = (x^mu-b^mu x^2)/(1-2 b dot x+b^2 x^2).
$

An important transformation is called inversion is
$
    I: quad x'^mu = x^mu/x^2,
$
and an SCT can be written as inversion--translation of $-b$
--inversion.

== Representation

=== Representation on Functions

#definition[Scalar function][
    For a scalar function with zero intrinsic weight, we define it as
    transforming under the following rule with respect to any
    spacetime transformation $x -> x'$:
    $
        f'(x') = f(x),
    $
]
#definition[Generator][
    For a transformation acting on a function, a generator $G_a$ is
    defined by following with some real parameter $omega_a$:
    $
        f'(x) = e^(-i omega_a G_a) f(x).
    $
]
For a scalar function the generator for arbitrary transformation can
be easily derived: We consider an infinitesimal version of a
transformation, which is given by:
$
    x'^mu = x^mu + omega_a A_a^mu (x),
    qquad
    A_a^mu (x) = (partial x'^mu)/(partial omega_a) |_(omega=0),
$
then we have:
$
    f'(x) - f(x) = & - i omega_a G_a f(x) = f(x - omega_a A_a (x)) - f(x) \
                 = & -omega_a A_a^mu (x) partial_mu f(x).
$

$
    i G_a f(x) = A_a^mu (x) partial_mu f(x).
$

Then with certain conventions, one can easily find the generators of
the conformal group on a scalar function:
$
    & P_mu = -i partial_mu, \
    & L_(mu nu) = i(x_mu partial_nu-x_nu partial_mu), \
    & D = -i x^mu partial_mu, \
    & K_mu = -i(2x_mu x^nu partial_nu-x^2 partial_mu).
$
Notice that the definition of the generators are convention dependent,
however, $omega_a G_a$ is convention independent. To be more concrete,
we choose the convention that $omega_a$ is related to the parameters
of the finite conformal transformation as:
$
    omega_a G_a
    = a^mu P_mu
    + 1/2 theta^(mu nu) L_(mu nu)
    + lambda D
    + b^mu K_mu,
    qquad
    theta^(mu nu) = -theta^(nu mu).
$

The parameters have the following geometric meanings:

- $a^mu$ is the translation distance: $x'^mu = x^mu + a^mu$.

- $theta^(mu nu)$ specifies an infinitesimal rotation in Euclidean
    spacetime, or a rotation/boost in Minkowski spacetime. Its related
    to the coordinate transformation by the canonical exponential map:
$
    x'^mu = e^(1/2 theta^(rho sigma) L_(rho sigma)) x^mu quad L_(rho sigma) = x_rho delta_(sigma)^mu - x_sigma delta_(rho)^mu.
$
- $lambda$ is the logarithm of the dilation factor:
    $x'^mu = e^lambda x^mu$.

- $b^mu$ specifies a special conformal transformation. It has the
    dimension of inverse length. The corresponding finite
    transformation is
    $
        x'^mu
        = frac(
            x^mu - b^mu x^2,
            1 - 2 b_nu x^nu + b^2 x^2
        ).
    $

Together, these parameters give the infinitesimal coordinate
transformation

$
    x'^rho
    = x^rho + a^rho
    + theta^(rho nu) x_nu
    + lambda x^rho
    + 2(b_nu x^nu)x^rho - b^rho x^2
    + O(omega^2).
$

For example, a finite dilatation gives

$
    f'(r') = e^(-i alpha D) f(r')
    = e^(-alpha r' partial_(r')) f(r')
    = f(e^(-alpha)r') = f(r),
$

where $r'=e^alpha r$. by exponentialing the derivative we mean it by
Taylor expansions.

=== Conformal algebra

With the conventions above, we can find an algebra of the conformal
generators.
$
    [D,P_mu] & = i P_mu, quad
    [D,K_mu] = -i K_mu, quad
    [K_mu,P_nu] = 2i(eta_(mu nu)D-L_(mu nu)), \
    [L_(mu nu),P_rho] & = -i(eta_(mu rho)P_nu-eta_(nu rho)P_mu), quad
    [L_(mu nu),K_rho] = -i(eta_(mu rho)K_nu-eta_(nu rho)K_mu), \
    [L_(mu nu),L_(rho sigma)]
    & = -i(
        eta_(mu rho)L_(nu sigma)
        - eta_(mu sigma)L_(nu rho)
        - eta_(nu rho)L_(mu sigma)
        + eta_(nu sigma)L_(mu rho)
    ).\
    [P_mu,P_nu] & = [K_mu,K_nu] = [D,D] = [D,L_(mu nu)] = 0,
$

Defining
$
    J_(mu nu) = L_(mu nu), quad
    J_(-1,mu) = 1/2(P_mu-K_mu), quad
    J_(0,mu) = 1/2(P_mu+K_mu), quad
    J_(-1,0) = D,
$
one recognizes the algebra $"so"(d+1,1)$ in Euclidean signature. If we
consider Minkwoski spacetime with signature $(-,+,+,+,...)$, the
algebra is $"so"(d,2)$.

#remark([
    Above discussion is all in Euclidean spacetime, however, one can
    prove that the Minkowski version is just changing the metric.
])

#remark([
    Why functions instead of the defining representation? This
    question in fact we have encountered in Poincare representation.
    Its hard to get the commutation of the spacetime translation and
    the lorentz transformation using the defining representation. Thus
    we often just use representation on functions or an abstract
    representation on Hilbert space to get the algebra.
])

=== Action on local operators

Now we consider the action of the conformal group on the Hilbert
space. For a quantum field theory, the symmetry transformations are
represented by unitary operators on the Hilbert space (and generators
are Hermite operators, at least for Lorenzian Theory a theory in
Euclidean spacetime may be more subtle to consist with the Wick
rotation).
#remark([
    In fact the Hermite conjugation's definition is dependent on the
    quantization. For lorentizan theory, we usually don't have this
    subtleties (one may think of Unrul effect in Rindler spacetime but
    this is not quite a same problem.). In Euclidean signature,
    different choice of time will lead to different consist definition
    of Hermite conjugation and in this case we may not really have the
    generators to be Hermite.

    Here we naively assume unitary, we can think of this as we're
    working in Lorentzian theory.
])
Consider a field that transforms under some transformation as:
$
    x' = F(x),
    qquad
    phi'(x') = F(phi(x)),
$
#definition[Quantum generator][
    For a quantum operator, it is assumed to be unitary operator and
    it act on local fields as:
    $
        phi'(x) = U^(-1) phi(x) U,
        qquad
        U = e^(-i omega_a hat(G)_a).
    $
    Now $hat(G)_a$ is the quantum generators of the theory and is
    assumed to be a Hermite operator.
]
#remark([
    A more general definition is that the quantum generators transform
    local operators as:
    $
        phi'(x') = O^(-1) phi(x) O,
        qquad
        O = e^(-i omega_a hat(G)_a).
    $
    where $O$ may not be unitary under certain quantization time
    choice.
])


Here we will define $omega_a$ just as the parameters we used for the
transformation on scalar functions.

#remark([This relation should be understood as a definition for a
    quantum generator. In QFT canonical quantization scheme we often
    find the quantum generators are the conserved charges exactly
    which lead to this convention.])

The infinitesimal action WLOG can contain both an orbital part and a
finite-dimensional spin part:

$
    [hat(G)_a, phi(x)]
    = -G_a phi(x) + i R(G_a) phi(x).
$
For the momentum generators, we have:
$
    phi'(x) = e^(i a dot hat(P)) phi(x) e^(-i a dot hat(P)), quad phi'(x) = phi(x-a). quad phi(x+a) = e^(- i a dot hat(P)) phi(x) e^(i a dot hat(P)).
$
Thus we have:
$
    phi(x) = e^(-i x dot hat(P)) phi(0) e^(i x dot hat(P)),
$
#remark([This might look a bit different from the books using
    $(+,-,-,-)$ conventions, here we are using $(+,+,+,+)$
    conventions. This note is self consistent with this convention.])
The infinitesimal action of the translation generator is then:
$
    [hat(P)_mu, phi(x)] = i partial_mu phi(x).
$
Thus, we may see that we only need to define the action of conformal
generators on the local operators at the origin, their commutation
relation will tell us how they act on local operators at any points.

=== Primary and Descendant Fields

#definition[Primary Fields][
    We define a certain series of local operators $phi_alpha$ to
    commute with the generators as:
    $
        [hat(D),phi_alpha (0)] & = i Delta phi_alpha (0), quad [hat(L)_(mu nu),phi_alpha (0)]
                                 = i(S_(mu nu))_(alpha beta) phi_beta (0). quad
                                 [K_mu,phi_alpha (0)] & = 0.
    $
]
The commutation relations beyond the origin can be derived from the
algebra with the translation generator.
$
    [P_mu, phi_alpha (x)]
    &= i partial_mu phi_alpha (x) \
    [D, phi_alpha (x)]
    &= i(Delta + x^mu partial_mu) phi_alpha (x) \
    [L_(mu nu), phi_alpha (x)]
    &= -i(x_mu partial_nu - x_nu partial_mu) phi_alpha (x)
    + i (S_(mu nu))_(alpha beta) phi_beta (x) \
    [K_mu, phi_alpha (x)]
    &= 2i x_mu Delta phi_alpha (x)
    + i(2x_mu x^nu partial_nu - x^2 partial_mu) phi_alpha (x)
    + 2i x^rho (S_(rho mu))_(alpha beta) phi_beta (x)
$
One can also derive the finite transformation of the primary field,
for example under the dilation transformation, we have:
$
    phi'(lambda x) = e^(i lambda hat(D)) phi(lambda x) e^(-i lambda hat(D))
    = lambda^(-Delta) phi(x).
$
For a scalar primary field, the finite transformation under a general
conformal transformation is:
$
    phi'(x') = Omega(x)^(-Delta/d) phi(x). quad Omega(x) = det (partial x'^mu)/(partial x^nu)
$


// Thus by the definition of quantum generators we have for a finite dilatation $x' = lambda x$,
// $
//     phi'(lambda x) = U^dagger phi(lambda x) U = lambda^(-Delta) phi(x).
// $
//
// For a scalar primary, conformal invariance is compatible with
//
// $
//     chevron.l phi(x_1) phi(x_2) chevron.r
//     = 1/(x_12^2)^Delta,
//     qquad Delta >= 0.
// $


For a generic scaling field that commute as:
$
    [D,phi(0)] = i Delta phi(0).
$

The algebra shows that $P_mu$ raises the dimension by one, while
$K_mu$ lowers it by one:

$
    [D,P_mu phi(0)] & = i(Delta+1)P_mu phi(0), \
    [D,K_mu phi(0)] & = i(Delta-1)K_mu phi(0).
$

In a unitary theory the spectrum of dimensions is bounded below. Thus
we can see that by acting the $P_mu$ operators on a primary field we
can generate a seires of scaling field with highier scaling
dimensions:
$
    [P_(mu_1) dots P_(mu_n),phi(0)]
    tilde partial_(mu_1) dots partial_(mu_n) phi(0).
$
We call these fields descendants of the primary field.

== Noether's theorem and the stress tensor

For an action

$
    S = integral d^d x cal(L)(phi,partial_mu phi),
$

Noether's theorem associates a conserved current to every continuous
symmetry. In a general infinitesimal transformation, one convenient
form is

$
    j_a^mu
    = [ (partial cal(L))/(partial(partial_mu phi)) partial_nu phi
        - delta^mu_nu cal(L) ]
    (partial x^nu)/(partial omega_a)
    - (partial cal(L))/(partial(partial_mu phi))
    (partial tilde(F))/(partial omega_a),
    qquad
    partial_mu j_a^mu = 0.
$

The translation current is the canonical stress tensor,

$
    T_"c"^(mu nu)
    = -eta^(mu nu) cal(L)
    + (partial cal(L))/(partial(partial_mu phi)) partial^nu phi,
    qquad
    partial_mu T_"c"^(mu nu) = 0.
$

By an improvement one may choose a specific symmetric tensor
$T^(mu nu)=T^(nu mu)$. Under a general coordinate transformation
$x'^mu=x^mu+epsilon^mu (x)$, we have:

$
    delta S
    = -1/2 integral d^d x T^(mu nu)
    (partial_mu epsilon_nu+partial_nu epsilon_mu)
$
If we choose this general transformation to be a conformal
transformation, we have due to the conformal killing equation:
$
    delta S = -1/2 integral d^d x f(x) tensor(T, +mu, -mu)
$

Scale invariance means that $delta S = 0$ when $f(x) = "const"$ this
will lead to:

$
    tensor(T, +mu, -mu) = partial_mu V^mu,
$

with a virial current $V^mu$. If we also have conformal invariance, we
have $delta S = 0$ for SCT, then:
$
    tensor(T, +mu, -mu) = 0.
$

In summary, in CFT we always can have a improved symmetric and
traceless stress tensor $T^(mu nu)$, which is conserved.

== Implications for correlation functions

For a QFT we define the correlation function as:
$
    chevron.l cal(O)_1 (x_1) dots cal(O)_n (x_n) chevron.r = (1/Z) integral D phi cal(O)_1 (x_1) dots cal(O)_n (x_n) e^(-S[phi]),
$
notice that we always work in the Euclidean signature. One can prove
that for a symmetry we have the result that:
$
    ⟨phi(x'_1) dots.h phi(x'_n)⟩
    =
    ⟨cal(F)(phi(x_1)) dots.h cal(F)(phi(x_n))⟩
$
By $cal(F)(phi(x))$ we means the RHS of the definition of field
condiguration transformation:
$
    phi'(x') = cal(F)(phi(x)).
$
which is the transformation purely of field (not the spacetime point).
Notice that this is pure path integral and have nothing to do with
whether the transformation is Unitary in certain time choice or not.


=== Two-point functions

Translation and rotation invariance imply dependence only on
$x_12=x_1-x_2$. Dilatations give

$
    chevron.l cal(O)_1(x_1) cal(O)_2(x_2) chevron.r
    = C_12/(abs(x_12))^(Delta_1+Delta_2).
$

Under an SCT,

$
    x_12'^2 = x_12^2/(gamma_1 gamma_2),
    qquad
    gamma_i = 1-2b dot x_i+b^2 x_i^2.
$

SCT covariance requires $Delta_1=Delta_2$. In an orthonormal basis of
scalar primaries,

$
    chevron.l cal(O)_i(x_1) cal(O)_j(x_2) chevron.r
    = (C_i delta_(i j))/(x_12^2)^(Delta_i).
$

=== Three-point functions

For scalar primaries, conformal symmetry fixes the position dependence
completely:

$
    chevron.l cal(O)_1(x_1) cal(O)_2(x_2) cal(O)_3(x_3) chevron.r
    = lambda_123 / [
        (x_12^2)^((Delta_1+Delta_2-Delta_3)/2)
        (x_13^2)^((Delta_1+Delta_3-Delta_2)/2)
        (x_23^2)^((Delta_2+Delta_3-Delta_1)/2)
    ].
$

=== Four-point functions and cross-ratios

For four identical scalar primaries of dimension $Delta$,

$
    chevron.l cal(O)(x_1) cal(O)(x_2) cal(O)(x_3) cal(O)(x_4) chevron.r
    = 1/[(x_12^2)^Delta (x_34^2)^Delta] \, cal(G)(u,v),
$

where

$
    u = (x_12^2 x_34^2)/(x_13^2 x_24^2) = z overline(z),
    qquad
    v = (x_14^2 x_23^2)/(x_13^2 x_24^2)
    = (1-z)(1-overline(z)).
$
Notice that the definition of $z$ and $overline(z)$ is conventionally
not the same for Euclidean and Lorentzian theory (though the corrator
will always take the same form).

In Euclidean signature $overline(z)=z^*$. In Lorentzian signature $z$
and $overline(z)$ are independent real variables in the standard
kinematic region.

A standard Lorentzian configuration is

$
    x_1=0,
    qquad
    x_2=(t,x,0,dots),
    qquad
    x_3=(0,1,0,dots),
    qquad
    x_4=infinity.
$

Then

$
    u=x^2-t^2,
    qquad
    v=(1-x)^2-t^2,
    qquad
    z=x-t,
    qquad
    overline(z)=x+t.
$
