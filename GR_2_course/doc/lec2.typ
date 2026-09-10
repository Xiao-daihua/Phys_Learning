#import "../env/lib.typ": *

= Lecture 2: Friedmann Equations and Solutions

We can rewrite the Einstein Field Equations with two ansatz:

- The metirc is given by the Friedmann-Robertson-Walker (FRW) metric

- The EM tensor of matter is given by a perfect fluid in the comoving
    frame

== Einstein Field Equations

We consider the general Einstein Field Equation with a cosmological
constant:
$
    R_(mu nu) - 1/2 R g_(mu nu) + Lambda g_(mu nu) = 8 pi G T_(mu nu)
$<EFE>

=== Matter Energy-Momentum Tensor in Comoving Frame

In @curvatureFRW we have calculated the curvature tensor in the
comoving frame, which is the LHS of @EFE. Now we need to calculate the
EM tensor of matter in the comoving frame. We focus on:

- The matter is a perfect fluid and being at rest in the comoving
    frame

which means that the EM tensor has the following form in the comoving
frame:
$
    T_(mu nu) = u_(mu) u_(nu) (rho + p) + p g_(mu nu)
$
And we assume that the matter is at rest in the comoving frame, which
means that the 4-velocity is given by $u^mu = (1, 0, 0, 0)$. Thus we
have the only non-zero component of the EM tensor is:
$
    T_(0 0) = rho, quad T_(i j) = p g_(i j) "  or  " T^(0 0) = rho, quad T^(i j) = p g^(i j)= p gamma^(i j)/a^2
$
Generally, the homogeneity and isotropy of the universe requires that
the EM tensor $rho(t), p(t)$ only depends on time. This suits that the
metric is also only depends on time.

Normally, we assume that there is a relation between the energy
density and pressure, depend on the matter itself. Thus, the EM tensor
has only one degree of freedom, which is the energy density $rho$.

=== Friedmann Equations

Now we can plug in the curvature tensor and the EM tensor into the
Einstein Field Equation, and we can get the $00$ component of the
Einstein Field Equation, which is called the Friedmann Equation:
#theorem[Friedmann Equation][
    The Friedmann Equation is given by the $00$ component of the EFE
    of a rest perfect fluid in the comoving frame, which is given by:
    $
        (dot(a) / a)^2 + k / a^2 = (8 pi G)/3 rho + Lambda / 3
    $
]
Let's now count the variable and equations, usually we *fix a $k$* for
the model we want to consider. Then, the EM Tensor have 1 DoF
$rho(t)$, the metric have 1 DoF $a(t)$, and we have 1 equation, which
is the Friedmann Equation. Thus we need another equation to solve the
system.

We first consider the other Terms of the Einstein Field Equation,
which is the $i j$ component. We can get another equation from the
$i j$ component of the EFE, which is given by:
#theorem[Spacial Component of EFE][
    The $i j$ component of the EFE of a rest perfect fluid in the
    comoving frame is given by:
    $
        2 (dot.double(a)) / a + (dot(a) / a)^2 + k / a^2 = -8 pi G p + Lambda
    $
]
#remark([
    We only have one spacial equation, this is due to the fact that
    the spacial metric is dependent on $gamma_(i j)$ up to one factor.
    Thus, the spacial component of the EFE only gives one equation.
])

Sometimes we combine the two equations together, and we can get rid of
the term $dot(a)$, whic is :
$
    (dot.double(a)) / a = - (4 pi G)/3 (rho + 3 p) + Lambda / 3
$
From this equation we can easily see when the universe is accelerating
or decelerating. If we assume that $Lambda=0$ then:

- If $rho + 3 p > 0$ then the universe is decelerating
    $dot.double(a) < 0$

- If $rho + 3 p < 0$ then the universe is accelerating
    $dot.double(a) > 0$

=== Energy Conservation of Matter

Another commonly used choice of the second equation is the energy
conservation of matter. Note theta this equation is not independent of
EFE, since its given by EFE and the Bianchi Identity.

#theorem[Energy Conservation of Matter][
    The energy conservation of matter is given by:
    $
        diff_t (rho a^3) + p diff_t a^3 = 0
    $
]
We can see that the energy conservation is equivalent to the first law
of thermodynamics, if we view the matter as a thermodynamic system
with volume $V = a^3$ and internal energy $U = rho a^3$.

== Matter Content and Solutions

Now we try to find solutions to the EFE. But we need to specify the
matter content exits in the universe.

=== Matter Content and Equation of State

We usually focus on Model behave as
$
    P = omega rho
$
And usually the coefficient $omega$ is given by:

- Pressureless Dust: $omega = 0$

- Relativistic Fluid (Radiation): $omega = 1/3$<sec:differentparticles>

- Cosmological Constant: $omega = -1$

We believe that $omega >= -1$ and cc is the lower bound, which is
called the null energy condition.
#remark([
    We can see from the EFE that a matter with $omega = -1$ gives out
    $rho = "const"$ in the energy consevation of matter, this is
    equivalent to having a cosmological constant of
    $Lambda = 8 pi G rho$.

    Btw, we may assume that $rho>0$ the matter have positive energy
    density. Thus, the "cosmological constant" case is in fact
    "positive cosmological constant" case.
])

=== Solution 1: Einstein Static Universe

If we assume that $rho eq.not 0$, $p = 0$ ; $dot(a) = 0$. which means
that the universe is full of pressureless dust and is static. Then the
two EFE becomes:
$
    k / a^2 = (8 pi G)/3 rho + Lambda / 3, quad k / a^2 = Lambda
$
If we take a positive cosmological constant, then we can get the
following solution:
$
    k = 1 quad a = sqrt(1 / Lambda) quad rho = Lambda / (4 pi G)
$
This solution is called the Einstein Static Universe, which is a
static universe with positive curvature and a positive cosmological
constant. However, this is unrealistic


=== Solution 2: Flat Matter Dominated Universe

We assume that $k = 0$, $Lambda = 0$, and the universe is full of
pressureless dust. Then the Friedmann Equation and the Energy
Conservation of Matter becomes:
$
    (dot(a) / a)^2 = (8 pi G)/3 rho, quad diff_t (rho a^3) = 0 "  or  " rho a^3 = C
$
we can get a differential equation:
$
    (dot(a) / a)^2 = (8 pi G)/3 C / a^3
$
The solution to this equation is given by:
$
    a(t) = a_0 (t - t_0)^(2/3) quad rho tilde 1/t^2
$
We can notice that this solution $dot(a)>0$ and $dot.double(a) < 0$,
which means that the universe is expanding and decelerating.


=== Solution 3: Flat General Matter Dominated Universe<sec:generalmatter>

Consider a more general case with $k = 0$, $Lambda = 0$, and the
matter content is given by a general equation of state
$P = omega rho$. This time the Friedmann Equation and the Energy
Conservation of Matter becomes:
$
    (dot(a) / a)^2 = (8 pi G)/3 rho, quad dot(rho) + 3 (dot(a) / a) (rho + p) = 0
$
This gives us a solution:
$
    rho = C a^(-3 (1 + omega)), quad a(t) = a_0 (t - t_0)^(2 / (3 (1 + omega)))
$
There are some special properties of this solution:

- *Null Energy Condition* : Notice that we believe that $omega >= -1$.
    Thus we can see that $a(t)$ will always have a singularity at
    $t = t_0$, for the metric in this coordinate.

- *Matter density time dependent* :We can see that the if one kind of
    matter dominante the univers, then:
$
    rho tilde 1/t^2
$
And if we have many kinds of matter and the effective $omega$ is given
by $omega$, then matter $rho_i$ evolve as:
$
    rho_i tilde t^(-2 (1 + omega_i) / (1 + omega))
$

- *Accelerating and Decelerating* : we can calculate $dot.double(a)$
    and we see that:
    - If $omega > -1/3$ then the universe is decelerating
        $dot.double(a) < 0$

    - If $omega < -1/3$ then the universe is accelerating
        $dot.double(a) > 0$

- *Spacial Curvature as Matter*: An interesting observation is that
    having non-zero spacial curvature $k$ is equivalent as choosing a
    matter of:
    $
        omega = -1/3
    $
    Thus in fact we can view the spacial curvature as a kind of matter
    content in the universe. We can also see that this matter makes
    the universe not accelerating nor decelerating,
    $dot.double(a) = "const"$.
