#import "../env/lib.typ": *


= Path Integral Formulation

== From canonical quantisation to path integrals

Our goal is to describe the dynamics of a quantum system. In canonical quantisation, we start from a classical Lagrangian, identify conjugate momenta, and impose commutation relations. The path integral is another route from the classical theory to the quantum theory.

The two routes are expected to agree where both are defined. Derivative interactions can make canonical momenta difficult to identify. Anomalies, solitons, instantons, and other nonperturbative phenomena are also naturally discussed with path integrals. We first derive the path integral in a quantum-mechanical example and then use the result for field theory.

Schematically, the two constructions start from the same classical Lagrangian:
$
  cal(L)_"classical" -> "QFT (canonical quantisation)",
  quad
  cal(L)_"classical" -> "QFT (path integral)".
$

=== Quantum mechanics

Consider coordinates $q_i$ for $i=1,dots,N$, with
$
  L = frac(m,2) sum_(i=1)^N dot(q)_i^2 - V(q_1,dots,q_N),
  quad
  p_i = frac(partial L, partial dot(q)_i) = m dot(q)_i,
  quad
  H = sum_(i=1)^N frac(p_i^2,2m) + V(q).
$

Promote $q_i,p_i$ to operators satisfying
$
  [hat(q)_i,hat(p)_j] = i ħ delta_(i j),
  quad
  [hat(q)_i,hat(q)_j]=[hat(p)_i,hat(p)_j]=0.
$

In the Schrödinger picture, the transition amplitude between configurations at $-T$ and $T$ is
$
  K(q^"out",T;q^"in",-T)
  = ⟨q^"out"| e^(-2i T hat(H)/ħ) |q^"in"⟩.
$

To see the role of intermediate configurations, write $2T=I epsilon$ and insert position-space resolutions of the identity between short evolution operators. A discretised path is specified by
$
  q_i^(k) = q_i(-T+(k-1)epsilon),
  quad
  q_i^(1)=q_i^"in",
  quad
  q_i^(I+1)=q_i^"out".
$

For the kinetic term, the short-time kernel is Gaussian. Multiplying the kernels and then taking $I->infinity$ gives the action weighted by $e^(i S/ħ)$.

More explicitly, to leading order in $epsilon$,
$
  ⟨q^(k+1)|e^(-i epsilon hat(H)/ħ)|q^(k)⟩
  ≈ A^(-N) exp lr(
    frac(i epsilon,ħ)
    lr(frac(m,2)sum_(i=1)^N
       lr(frac(q_i^(k+1)-q_i^(k),epsilon))^2
       -V(q^(k)))
  ),
$
and the sum of the exponents tends to the action,
$
  S[q]
  = lim_(I->infinity) sum_(k=1)^I epsilon
    lr(frac(m,2)sum_(i=1)^N
       lr(frac(q_i^(k+1)-q_i^(k),epsilon))^2
       -V(q^(k)))
  = integral_(-T)^T upright(d)t L(q,dot(q)).
$

Slicing the time interval and inserting complete sets of position states leads to
$
  K(q^"out",T;q^"in",-T)
  = integral cal(D)q
    exp lr(frac(i,ħ) integral_(-T)^T upright(d)t L(q,dot(q)))
  = integral cal(D)q e^(i S[q]/ħ).
$

Here every path has endpoints $q(-T)=q^"in"$ and $q(T)=q^"out"$. The action depends on the entire path. With time step $epsilon=2T/I$, an illustrative definition of the measure is
$
  cal(D)q
  = lim_(I->infinity)
    product_(i=1)^N product_(k=2)^I
    frac(upright(d)q_i^(k),A),
  quad
  A = sqrt(frac(2pi i ħ epsilon,m)).
$

The first and last time slices are fixed by the boundary conditions. The overall normalisation of the measure will cancel in normalised correlators.

The notation $cal(D)q$ means that one integrates over the interior value of every component at every time slice. The path integral is a limit of ordinary integrals; the path itself, rather than only one value of $q$, is the integration variable.

=== Euclidean path integral

Real-time integrals contain rapidly oscillating phases, of the type $integral upright(d)x e^(i x^2)$. They can be defined by analytic continuation from convergent Gaussian integrals such as $integral upright(d)x e^(-x^2)$. The corresponding field-theory construction starts with the Euclidean path integral.

Introduce Euclidean time $t=-i tau$. Evolution by Euclidean time $2T_E$ is $e^(-2T_E H/ħ)$, and
$
  K_E (q^"out",T_E;q^"in",-T_E)
  = ⟨q^"out"|e^(-2T_E hat(H)/ħ)|q^"in"⟩
  = integral cal(D)q e^(-S_E[q]/ħ),
$
where
$
  S_E[q]
  = integral_(-T_E)^(T_E) upright(d)tau
    lr(frac(m,2) lr(frac(upright(d)q,upright(d)tau))^2 + V(q)).
$

The paths satisfy $q(-T_E)=q^"in"$ and $q(T_E)=q^"out"$. For this example, substituting $t=-i tau$ in the classical action $S=integral upright(d)t L$ gives
$
  t -> -i tau,
  quad
  frac(upright(d),upright(d)t)
  -> i frac(upright(d),upright(d)tau),
$
$
  S
  = integral upright(d)t
      lr(frac(m,2)lr(frac(upright(d)q,upright(d)t))^2-V(q))
  -> i integral upright(d)tau
      lr(frac(m,2)lr(frac(upright(d)q,upright(d)tau))^2+V(q))
  = i S_E.
$

Hence
$
  S_E = -i S|_(t=-i tau).
$

For a general theory we use the same Wick rotation to define $S_E$. Real-time amplitudes are recovered by analytic continuation, with the appropriate ordering prescription.

=== Correlation functions and vacuum projection

The Heisenberg operator is
$
  hat(q)_(H,i)(t)
  = e^(i hat(H)t/ħ) hat(q)_i e^(-i hat(H)t/ħ).
$

For the lowest-energy state $|0⟩$, define
$
  G_(i_1 dots i_n)(t_1,dots,t_n)
  = ⟨0|cal(T)[hat(q)_(H,i_1)(t_1)dots hat(q)_(H,i_n)(t_n)]|0⟩.
$

For ordered Euclidean times $tau_1>tau_2>dots>tau_n$, the continuation of the operator product contains positive Euclidean evolution intervals:
$
  ⟨0|hat(q)_(i_1)(tau_1)dots hat(q)_(i_n)(tau_n)|0⟩
  = ⟨0|e^(tau_1 H/ħ)hat(q)_(i_1)
    e^(-(tau_1-tau_2)H/ħ)hat(q)_(i_2)
    dots hat(q)_(i_n)e^(-tau_n H/ħ)|0⟩.
$

These factors suppress higher-energy intermediate states when successive time separations are positive. Euclidean time ordering is defined explicitly by
$
  cal(T)[A(tau_1)B(tau_2)]
  = cases(
      A(tau_1)B(tau_2) & "if" tau_1>tau_2,
      B(tau_2)A(tau_1) & "if" tau_2>tau_1
    ).
$

Euclidean time ordering places the operator with the larger $tau$ to the left. The Euclidean correlator is
$
  G_(E;i_1 dots i_n)(tau_1,dots,tau_n)
  =
  frac(
    integral cal(D)q
      q_(i_1)(tau_1)dots q_(i_n)(tau_n)e^(-S_E[q]/ħ),
    integral cal(D)q e^(-S_E[q]/ħ)
  ).
$

The ratio removes the overall normalisation of the measure. Taking the initial and final Euclidean times to infinity projects onto the vacuum, provided the boundary states have nonzero overlap with it. Indeed, if $⟨0|q^"in"⟩ != 0$ and $⟨q^"out"|0⟩ != 0$, then the lowest-energy contribution dominates the factors $e^(-T_E H/ħ)$. The boundary values can therefore be chosen conveniently in the infinite-time limit.

The correlator in real time follows by analytic continuation of the ordered Euclidean correlator. The ordering of the operators is retained during that continuation.

== A scalar field theory

Put a real scalar field on a cubic spatial lattice with sites $bold(x)_n=a bold(n)$, where $n_i=-N,dots,N$. At fixed time, the values
$
  phi_n(t)=phi(x_n,t)
$
play the role of the coordinates $q_i(t)$ above. For a theory without derivative interactions, the Lagrangian is
$
  L = integral upright(d)^3 x
    lr(frac(1,2)partial_mu phi partial^mu phi - V(phi))
  = integral upright(d)^3 x
    lr(frac(1,2)(partial_0 phi)^2
      -frac(1,2)sum_(i=1)^3(partial_i phi)^2
      -V(phi)).
$

The lattice Lagrangian is, with the spatial differences displayed explicitly,
$
  L_a = a^3 sum_n lr(
    frac(1,2)dot(phi)_n^2
    - frac(1,2)sum_(i=1)^3
       lr(frac(phi_(n+hat(e)_i)-phi_n,a))^2
    -V(phi_n)
  ).
$

There are $(2N+1)^3$ coordinates $phi_n(t)$. The spatial differences and $V(phi)$ act as a potential for these coordinates, so the quantum-mechanical path integral applies directly. Its Euclidean action before the continuum limit is
$
  S_(E,a) = integral upright(d)tau a^3 sum_n lr(
    frac(1,2)(partial_tau phi_n)^2
    + frac(1,2)sum_(i=1)^3
       lr(frac(phi_(n+hat(e)_i)-phi_n,a))^2
    +V(phi_n)
  ).
$

Taking $a->0$ and $N->infinity$ while keeping the spatial size under control gives
$
  S_E[phi]
  = integral upright(d)tau upright(d)^3 x
    lr(frac(1,2)(partial_tau phi)^2
      +frac(1,2)sum_(i=1)^3(partial_i phi)^2+V(phi)).
$

With Euclidean coordinates $x_E=(tau,bold(x))$ and metric $delta_(mu nu)$, this becomes
$
  S_E[phi]
  = integral upright(d)^4 x_E
    lr(frac(1,2)partial_mu^(E) phi partial_mu^(E) phi+V(phi)).
$

For the Minkowski metric $(+,-,-,-)$, Wick rotation sends $x^0=t -> -i tau$ and $partial_0 -> i partial_tau$. The Euclidean kinetic term is positive. The formal field measure is a limit of ordinary integrals over every lattice site and Euclidean time slice:
$
  cal(D)phi
  ∝ lim_(a->0) lim_(epsilon->0)
    product_(n,k) upright(d)phi_n^(k).
$

For later reference, the transformation of spacetime components is
$
  x^0 -> -i x_E^0,
  quad x^i -> x_E^i,
  quad x_0 -> -i x_(E,0),
  quad x_i -> -x_(E,i),
$
$
  partial_0 -> i partial_0^(E),
  quad partial_i -> partial_i^(E).
$

For example, after integration by parts the Minkowski kinetic term $partial_mu phi partial^mu phi$ is $-phi square phi$; its continuation gives the positive Euclidean quadratic form $phi(-square_E)phi$.

The calculation of vacuum correlators follows three steps: choose the classical Lagrangian, derive $S_E$ by Wick rotation, and evaluate normalised Euclidean path integrals before analytic continuation.

The continuum measure is formal, but lattice regularisation makes it a finite-dimensional integral before the limits are taken. Lattice QFT can address questions that perturbation theory cannot. A lattice theory can also be defined at finite cutoff even when its continuum high-energy limit does not exist.

For example, a higher-derivative interaction of the schematic form
$
  cal(L) = frac(1,2)partial_mu phi partial^mu phi
    +phi^2(partial_mu phi partial^mu phi)^4 square phi
$
can be inserted into the path integral without first constructing an interacting canonical momentum. At fixed lattice spacing, the discretised Euclidean path integral is meaningful for a suitable stable action; taking a continuum limit is a separate question.

=== Vector fields

For a Lorentz vector, the Euclidean components must also be continued. With one common index convention,
$
  A_0 -> i A_(E,0),
  quad
  A_i -> A_(E,i).
$

Equivalently, for contravariant components one uses $A^0 -> i A_E^0$ and $A^i -> -A_E^i$ under this convention. This must be combined with the continuation of the derivatives when constructing $F_(E,mu nu)$.

Using the corresponding continuation of the coordinates and derivatives, the Minkowski Maxwell action
$
  S = -frac(1,4) integral upright(d)^4 x F_(mu nu) F^(mu nu)
$
becomes
$
  F_(0 i) -> i F_(E,0 i),
  quad F_(i j) -> F_(E,i j),
  quad F_(mu nu)F^(mu nu)
    = -2 sum_i F_(0 i)^2+sum_(i,j)F_(i j)^2,
$
$
  -i S|_(t=-i tau)
  = frac(1,4) integral upright(d)^4 x_E
    lr(2sum_i F_(E,0 i)^2+sum_(i,j)F_(E,i j)^2).
$
Thus
$
  S_E = frac(1,4) integral upright(d)^4 x_E
    F_(E,mu nu) F_(E,mu nu).
$

In particular, the Minkowski contraction $F_(mu nu)F^(mu nu)$ has different signs for electric and magnetic components, whereas the Euclidean contraction is a sum of squares.

== Free theories and generating functionals

Split the Euclidean action into a part we can solve and an interaction:
$
  S_E = S_0+S_"int".
$

The solvable part is quadratic,
$
  S_0[phi]
  = frac(1,2) integral upright(d)^4 x upright(d)^4 y
      phi(x)K_(x y)phi(y).
$

Here $K_(x y)$ may contain derivatives acting on the field. Calling $S_0$ quadratic means that every term contains exactly two fields; it does not imply that every quadratic term of the full action must be placed in $S_0$. We choose the split so that the Gaussian integral is well defined and the remainder can be expanded perturbatively. For local theories,
$
  K_(x y)=K_x delta^4(x-y).
$

For a local massive scalar,
$
  S_0
  = frac(1,2) integral upright(d)^4 x
      lr(partial_mu phi partial_mu phi+m^2 phi^2)
  = frac(1,2) integral upright(d)^4 x
      phi(x)(m^2-square_x)phi(x),
$
so $K_x=m^2-square_x$ and $K_(x y)=K_x delta^4(x-y)$.

=== Gaussian integral

Introduce a source $J(x)$:
$
  Z_0[J]
  = integral cal(D)phi
    exp lr(-S_0[phi]+integral upright(d)^4 x J(x)phi(x)).
$

Functional derivatives generate correlators:
$
  ⟨phi(x_1)dots phi(x_n)⟩_0
  = frac(1,Z_0[0])
    lr(
      frac(delta^n Z_0[J],
        delta J(x_1)dots delta J(x_n))
    )_(J=0).
$

The finite-dimensional Gaussian identity behind this result is
$
  integral upright(d)^N q
    e^(-frac(1,2)q^T A q+b^T q)
  = Z_0[0] e^(frac(1,2)b^T A^(-1)b),
$
up to a measure-dependent normalisation. It requires a positive quadratic form. Let $D=K^(-1)$, meaning
$
  -frac(1,2)q^T A q+b^T q
  = -frac(1,2)(q-A^(-1)b)^T A(q-A^(-1)b)
    +frac(1,2)b^T A^(-1)b.
$

Shifting the integration variable leaves a source-independent Gaussian integral. The same calculation in field space uses the inverse kernel $D=K^(-1)$, meaning
$
  integral upright(d)^4 z K_(x z)D_(z y)
  = delta^4(x-y).
$

The positivity of $K$ matters: a negative eigenvalue gives an exponentially unbounded direction of integration. If this happens, the chosen quadratic action does not provide a stable Gaussian starting point; additional terms in $S_E$ may be needed.

Completing the square gives
$
  Z_0[J]
  = Z_0[0]
    exp lr(
      frac(1,2)
      integral upright(d)^4 x upright(d)^4 y
        J(x)D_(x y)J(y)
    ).
$

In particular, the Euclidean two-point function is
$
  ⟨phi(x)phi(y)⟩_0
  = frac(1,Z_0[0])
    (frac(delta^2 Z_0[J],delta J(x)delta J(y)))_(J=0)
  = D_(x y).
$

=== Momentum-space propagator

Use the Fourier convention
$
  f(x)=integral frac(upright(d)^4 p,(2pi)^4)
       e^(-i p dot x)tilde(f)(p),
  quad
  tilde(f)(p)=integral upright(d)^4 x e^(i p dot x)f(x).
$

For a translation-invariant local operator $K_x$,
$
  K_x e^(-i p dot (x-y))
  = tilde(K)(p)e^(-i p dot (x-y)).
$

The delta function has the Fourier representation
$
  delta^4(x-y)
  = integral frac(upright(d)^4 p,(2pi)^4)
      e^(-i p dot (x-y)).
$

Substituting the Fourier ansatz for $D$ into $K_x D_(x y)=delta^4(x-y)$ gives
$
  integral frac(upright(d)^4 p,(2pi)^4)
      e^(-i p dot (x-y))tilde(K)(p)tilde(D)(p)
  = integral frac(upright(d)^4 p,(2pi)^4)
      e^(-i p dot (x-y)).
$

Thus
$
  D_(x y)
  = integral frac(upright(d)^4 p,(2pi)^4)
      e^(-i p dot (x-y))tilde(D)(p),
  quad
  tilde(D)(p)=frac(1,tilde(K)(p)).
$

For the massive scalar,
$
  tilde(K)(p)=p_E^2+m^2,
  quad
  Delta_F^(E)(x-y)
  = integral frac(upright(d)^4 p_E,(2pi)^4)
      frac(e^(-i p_E dot (x_E-y_E)),p_E^2+m^2).
$

The free generating functional determines every correlator. For example, differentiating it four times and setting $J=0$ gives
$
  frac(delta Z_0,delta J(x_1))
  = (D dot J)(x_1)Z_0[J],
$
$
  frac(delta^2 Z_0,delta J(x_1)delta J(x_2))
  = lr(D_12+(D dot J)(x_1)(D dot J)(x_2))Z_0[J].
$

Two further derivatives produce three terms without sources at $J=0$:
$
  frac(delta^3 Z_0,
    delta J(x_1)delta J(x_2)delta J(x_3))
  = lr(
      D_12(D dot J)(x_3)
      +D_13(D dot J)(x_2)
      +D_23(D dot J)(x_1)
      +product_(i=1)^3(D dot J)(x_i)
    )Z_0[J].
$

The fourth derivative at $J=0$ therefore gives
$
  ⟨phi(x_1)phi(x_2)phi(x_3)phi(x_4)⟩_0
  =
  D_12 D_34+D_13 D_24+D_14 D_23,
  quad D_(i j)=D_(x_i x_j).
$

These are the Wick contractions of the canonical approach.

In general, odd correlators vanish for a centred Gaussian, while even correlators sum over all pairings of their insertion points.

=== Several bosonic fields

Let $phi_M(x)$ denote all components of the bosonic fields. For
$
  S_0
  = frac(1,2) integral upright(d)^4 x upright(d)^4 y
    phi_M(x)K_(M x,N y)phi_N(y),
$
the source functional is
$
  Z_0[J]
  = Z_0[0]
    exp lr(
      frac(1,2) integral upright(d)^4 x upright(d)^4 y
      J_M(x)D_(M x,N y)J_N(y)
    ),
$
where repeated component labels are summed and
$
  integral upright(d)^4 z
  K_(M x,R z)D_(R z,N y)
  = delta_(M N)delta^4(x-y).
$

For local $K$, Fourier transformation reduces this to matrix inversion:
$
  K_(M x,N y)=delta^4(x-y)(K_x)_(M N),
  quad
  (K_x)_(M N)e^(-i p dot (x-y))
    = tilde(K)_(M N)(p)e^(-i p dot (x-y)).
$

Writing
$
  D_(M x,N y)
  = integral frac(upright(d)^4 p,(2pi)^4)
      e^(-i p dot (x-y))tilde(D)_(M N)(p),
$
the inverse-kernel equation becomes
$
  tilde(K)_(M R)(p)tilde(D)_(R N)(p)
  = delta_(M N),
  quad
  tilde(D)(p)=tilde(K)(p)^(-1).
$

== Analytic continuation to Minkowski space

The free theory above was solved in Euclidean signature. To recover real-time correlators, we continue the time coordinate and choose a pole prescription. Consider a generic scalar kinetic polynomial $tilde(K)(p_E^0,bold(p))$:
$
  Delta_F^(E)(x_E)
  = integral frac(upright(d)^3 bold(p),(2pi)^3)
      e^(-i bold(p) dot bold(x))
    integral_(RR) frac(upright(d)z,2pi)
      frac(e^(-i z x_E^0),tilde(K)(z,bold(p))).
$

For a massive scalar,
$
  frac(1,tilde(K)(z,bold(p)))
  = frac(1,z^2+E_p^2),
  quad E_p=sqrt(bold(p)^2+m^2),
$
with poles at $z_+=i E_p$ and $z_-=-i E_p$. More generally, when the kinetic polynomial depends on $p_E^2$, its zeros occur in pairs. Assuming no pole lies on the real Euclidean energy axis, the Euclidean energy integral is well defined.

Write
$
  I_E(x_E^0)
  = integral_(RR) frac(upright(d)z,2pi)
      frac(e^(-i z x_E^0),tilde(K)(z,bold(p))).
$

If $x_E^0<0$, the exponential decays when the contour is closed in the upper half-plane. For the two-pole example, only $z_+$ is enclosed, so the residue theorem gives
$
  I_E(x_E^0)
  = i "Res"_(z=z_+)
      frac(e^(-i z x_E^0),tilde(K)(z,bold(p)))
  = i e^(-i x_E^0 z_+)
      "Res"_(z=z_+) frac(1,tilde(K)(z,bold(p))).
$

Since
$
  "Res"_(z=i E_p)frac(1,z^2+E_p^2)
  = frac(1,2i E_p),
$
we obtain
$
  integral_(RR) frac(upright(d)z,2pi)
      frac(e^(-i z x_E^0),z^2+E_p^2)
  = frac(e^(E_p x_E^0),2E_p)
  = frac(e^(-E_p|x_E^0|),2E_p)
  quad (x_E^0<0).
$

For $x_E^0>0$, close in the lower half-plane instead; together the two cases give $e^(-E_p|x_E^0|)/(2E_p)$. This exponential decay at large Euclidean time is the vacuum-projection behaviour discussed earlier.

For $x^0<0$, the analytic continuation $x_E^0=i x^0$ gives
$
  I_M(x^0)=I_E(i x^0)
  = frac(e^(i E_p x^0),2E_p),
$
and therefore
$
  Delta_F(x)
  = integral frac(upright(d)^3 bold(p),(2pi)^3)
      e^(-i bold(p) dot bold(x))
      frac(e^(i E_p x^0),2E_p)
  quad (x^0<0).
$

The $x^0>0$ continuation yields the other time ordering. One can package both answers into a four-momentum integral by deforming the Euclidean energy contour so that it passes the poles in the Feynman way.

For a generic kinetic polynomial, define $tilde(K)'(z')=tilde(K)(-i z')$ and put $z'=i z$. Zeros $z_±$ of $tilde(K)$ map to real-energy zeros $z'_±=i z_±$ of $tilde(K)'$. The contour deformation relates the residues. For the $x^0<0$ choice used above, the energy integral can be written schematically as
$
  I_M(x^0)
  = -i integral_("F.C.") frac(upright(d)z',2pi)
      frac(e^(-i x^0 z'),tilde(K)'(z')).
$

The precise contour specifies how each real-axis pole is bypassed. The Euclidean-to-Minkowski momentum substitution is
$
  p_E^0=-i p^0,
  quad p_E^i=-p^i,
  quad p_(E,i)=p_i,
  quad x_E^0=i x^0,
  quad x_E^i=x^i.
$

Consequently, $p_E^2 -> -p^2$ and $p_E dot x_E -> p dot x$. For the scalar,
$
  frac(1,p_E^2+m^2)
  -> frac(1,-p^2+m^2).
$

The measure and contour rotation supply the additional factor that gives the Minkowski propagator. With the convention used here,
$
  Delta_F(x)
  = integral frac(upright(d)^4 p,(2pi)^4)
      frac(i e^(-i p dot x),p^2-m^2+i epsilon).
$

The infinitesimal $i epsilon$ encodes the same pole bypass as the Feynman contour: the positive-energy pole lies just below, and the negative-energy pole just above, the real $p^0$ axis.

Equivalently, one may keep the infinitesimal displacement of the poles in a specified Feynman contour integral. The Euclidean energy and time are related to their Minkowski counterparts by
$
  p_E^0=-i p^0,
  quad
  x_E^0=i x^0,
  quad
  p_E^2=-p^2.
$

The spatial covariant components remain the same under the chosen convention, while the contravariant spatial components change sign. The general prescription is to continue a Euclidean momentum integral by deforming the energy line into the Feynman contour while avoiding poles; one does not merely replace $p_E^0$ in an unevaluated integral and forget the contour.

== Interaction vertices

For $S_E=S_0+S_"int"$, the interacting Euclidean correlator is
$
  ⟨phi(x_1)dots phi(x_n)⟩_E
  =
  frac(
    integral cal(D)phi
      phi(x_1)dots phi(x_n)e^(-S_0-S_"int"),
    integral cal(D)phi e^(-S_0-S_"int")
  )
  =
  frac(
    ⟨phi(x_1)dots phi(x_n)e^(-S_"int")⟩_0,
    ⟨e^(-S_"int")⟩_0
  ).
$

Expand the interaction:
$
  e^(-S_"int")
  = sum_(k=0)^infinity frac((-S_"int")^k,k!).
$

For example, the unnormalised numerator of an interacting correlator is
$
  integral cal(D)phi
    phi(x_1)dots phi(x_n)e^(-S_0)
    sum_(k=0)^infinity frac((-S_"int")^k,k!).
$

Each term is a Gaussian expectation value of fields and can be evaluated with Wick contractions. The denominator removes the vacuum diagrams disconnected from all operator insertions.

The relation to canonical perturbation theory is especially transparent in the interaction picture. With the usual identification of the interaction part,
$
  integral upright(d)t H_I(t)
  = -S_"int"^(M)
  = -integral upright(d)t L_"int"(t),
$
the Wick-rotated expansion corresponds to the Dyson expansion of time-ordered products. For derivative interactions, this identification requires care in canonical language; the path-integral expansion is defined directly from the action.

The source method packages the perturbative expansion into
$
  Z[J]
  = integral cal(D)phi
    e^(-S_0[phi]-S_"int"[phi]+integral upright(d)^4 x J(x)phi(x))
  =
  exp lr(-S_"int"[frac(delta,delta J)])Z_0[J].
$

More explicitly,
$
  Z[J]
  = sum_(k=0)^infinity frac(1,k!)
      lr(-S_"int"[frac(delta,delta J)])^k Z_0[J].
$

For a field insertion, $phi(x)$ is replaced by $delta/(delta J(x))$. This is a formal identity understood through its power series. As in canonical perturbation theory, insertions of $S_"int"$ generate interaction vertices.

At first order,
$
  Z^(1)[J]
  = -S_"int"[frac(delta,delta J)]Z_0[J].
$

When every derivative in $S_"int"[delta/(delta J)]$ acts on the exponential rather than on a preceding $D dot J$, its contribution is
$
  Z_"selected"^(1)[J]
  = -Z_0[0] S_"int"[D dot J]
       e^(frac(1,2)J dot D dot J).
$

The subscript ``selected'' refers to this one contribution; the other terms contain contractions among fields in the interaction itself.

Writing $Z_0[J]=Z_0[0]e^(J dot D dot J/2)$, one derivative acting on the exponential produces
$
  frac(delta,delta J(x))
    e^(J dot D dot J/2)
  = (D dot J)(x)e^(J dot D dot J/2),
  quad
  (D dot J)(x)
  = integral upright(d)^4 y D_(x y)J(y).
$

Further derivatives can also act on the factors $D dot J$. These terms are internal contractions. For the connected $L$-point function at first order, the term with all $L$ external legs attached to the interaction is
$
  frac(delta,delta J(x))
    lr(integral upright(d)^4 y D_(z y)J(y))
  = D_(z x).
$

For example, two derivatives acting at the same interaction point can contract with each other, producing $D_(x x)$. In diagrams this is a loop at the vertex. When one seeks the basic $L$-leg vertex, one retains the term where each of the $L$ source derivatives supplies a distinct external leg.

The first-order connected correlator from that term is
$
  ⟨phi(x_1)dots phi(x_L)⟩_"conn"^(1)
  =
  -integral product_(j=1)^L upright(d)^4 y_j
    frac(
      delta^L S_"int"[phi],
      delta phi(y_1)dots delta phi(y_L)
    )_(phi=0)
    product_(j=1)^L D_(x_j y_j).
$

The functional derivative of the interaction is therefore the amputated vertex factor, with external propagators supplied separately.

If $S_"int"$ contains a monomial with exactly $L$ fields, its $L$-th functional derivative evaluated at $phi=0$ supplies the contact vertex. A monomial with fewer fields cannot supply $L$ distinct external legs at this order; a monomial with additional fields may also generate internal contractions, but those belong to other diagrams.

=== Local $phi^4$ example

For the Minkowski interaction $cal(L)_"int"=-lambda phi^4/4!$, Wick rotation gives
$
  S_"int"^(E)
  = -i S_"int"^(M)|_(t=-i tau)
  = -i lr(-frac(lambda,4!)integral upright(d)^4 x phi(x)^4)_(t=-i tau)
  = frac(lambda,4!) integral upright(d)^4 y phi(y)^4.
$

Thus
$
  S_"int"^(E)
  = frac(lambda,4!) integral upright(d)^4 y phi(y)^4.
$

Four functional derivatives give
$
  frac(
    delta^4 S_"int"^(E),
    delta phi(y_1)delta phi(y_2)
    delta phi(y_3)delta phi(y_4)
  )_(phi=0)
  =
  lambda integral upright(d)^4 y
    product_(j=1)^4 delta^4(y-y_j).
$

The connected first-order correlator is
$
  ⟨phi(x_1)phi(x_2)phi(x_3)phi(x_4)⟩_"conn"^(1)
  =
  -lambda integral upright(d)^4 y
    product_(j=1)^4 D_(x_j y).
$

The four delta functions in the functional derivative set all field positions at the same vertex position $y$; only its one spacetime integral remains. The $4!$ ways to attach the four identical fields cancel the $1/4!$ in the action.

Thus the Euclidean amputated vertex is $-lambda$. Continuing to Minkowski signature gives the familiar vertex factor $-i lambda$.

=== Derivative interactions in momentum space

With the Fourier convention above, each derivative on a field of incoming momentum $p$ produces $-i p_mu$. A local interaction takes the form
$
  S_"int"[phi]
  = integral product_(j=1)^L
      frac(upright(d)^4 p_j,(2pi)^4)
    (2pi)^4 delta^4 lr(sum_(j=1)^L p_j)
    cal(I)(p_1,dots,p_L)
    product_(j=1)^L tilde(phi)(p_j),
$
where $cal(I)$ contains the couplings and the momentum factors from derivatives. All momenta are taken as incoming. The delta function enforces momentum conservation. The vertex is obtained by differentiating the interaction with respect to its momentum-space fields; the external propagators are then removed.

To see the delta function explicitly, Fourier transform every external propagator. For each attachment to a vertex at $y_j$ one gets an integral of the form
$
  integral upright(d)^4 y_j
    e^(i k_j dot y_j)e^(-i q_j dot y_j)
  = (2pi)^4 delta^4(k_j-q_j).
$

It removes the corresponding internal momentum integral. The remaining vertex-position integral produces
$
  integral upright(d)^4 y
    e^(-i (k_1+dots+k_L) dot y)
  = (2pi)^4 delta^4(k_1+dots+k_L).
$

Consequently the Fourier-space connected correlator at first order has external propagator factors and an amputated interaction factor:
$
  tilde(G)_L^(1)(k_1,dots,k_L)
  = product_(j=1)^L frac(1,tilde(K)(k_j))
    cal(V)_E(k_1,dots,k_L)
    (2pi)^4 delta^4 lr(sum_(j=1)^L k_j),
$
$
  cal(V)_E(k_1,dots,k_L)
  = -frac(
      delta^L S_"int"^(E),
      delta tilde(phi)(k_1)dots delta tilde(phi)(k_L)
    )_"without the momentum delta".
$

The Minkowski vertex is obtained by the same continuation as the propagator. Because a local vertex has no propagator pole, its energy arguments are continued directly, together with the overall Wick-rotation factor.

When several field species are present, take the derivatives with respect to the corresponding momentum-space fields, retaining their component labels and the order of their momentum arguments.

=== Scalar QED example

Expanding the scalar-QED kinetic term gives interactions of the schematic form
$
  cal(L)_"int"
  = i e A^mu
      (phi^dagger partial_mu phi
       -(partial_mu phi^dagger)phi)
    + e^2 A_mu A^mu phi^dagger phi.
$

The free charged-scalar term is $partial_mu phi^dagger partial^mu phi-m^2|phi|^2$. To see the momentum dependence of the interaction, write for each field
$
  phi(x)=integral frac(upright(d)^4 p,(2pi)^4)
    e^(-i p dot x)tilde(phi)(p),
  quad
  partial_mu phi(x)=integral frac(upright(d)^4 p,(2pi)^4)
    (-i p_mu)e^(-i p dot x)tilde(phi)(p).
$

Substituting these into the cubic interaction produces the momentum-dependent factor
$
  i e lr((-i p_+)_mu-(-i p_-)_mu)
    tilde(phi)^dagger(p_-)
    tilde(phi)(p_+)
    tilde(A)^mu(k),
$
along with $(2pi)^4 delta^4(p_++p_-+k)$. Here $p_+$ labels $phi$ and $p_-$ labels $phi^dagger$ in this incoming-momentum convention. Including the overall $i$ from the Minkowski interaction insertion, the three-point vertex factor is
$
  i e (p_+ - p_-)_mu,
$
and the two-photon, two-scalar contact vertex is
$
  2i e^2 eta_(mu nu).
$

The momentum factors arise from the derivatives in the interaction, while the factor of two in the contact vertex comes from differentiating twice with respect to the photon field.
