#import "../env/lib.typ": *

= Lecture 1: FRW Metric 
For a cosmological model, we need to make some assumptions about the
universe. The most common assumption is the cosmological principle:
#theorem[Cosmological Principle][
    The universe is homogeneous and isotropic on large scales.
]
The cosmological principle strongly constains the form of the metric.
We assume that we can select a space slice at each time in some
coordinate system, and consider the induced metric on each time slice.

== Space Slices Metric
The cosmological principle requires that the metric on each time slice
is homogeneous and isotropic, which means that the metric on each time
slice is a maximally symmetric space. A maximally symmetric space is a
space that has the maximum number of symmetries, which means that the
Riemann curvature tensor has the following form:
$
    & R^((3)) = "constant" \
    & R_(i j) = 1/3 R^((3)) g_(i j) \
    & R^((3))_(i j k l) = 1/6 R^((3)) (g_(i k) g_(j l) - g_(i l) g_(j k))
$<br>

Thus we can see that a spactial metric can be classified into three
types, and in fact each type of metric can be written in a simple
form:

- $R^((3)) = 0$, the metric is $RR^3$ 3-plane

- $R^((3)) > 0$, the metric is $SS^3$ 3-sphere

- $R^((3)) < 0$, the metric is $HH^3$ 3-hyperbolic space (Euclidean
    AdS space)

The metirc of $RR^3$ is trivial, we will consider the other two cases
in the following:

=== $SS^3$ 3-sphere

The metric of a 3-sphere can be given by inducing from a 4-dimensional
Euclidean space with Cartesian coordinates $x^i$ and the metric
$d s^2 = delta_(i j) d x^i d x^j$. We can induce a coordinate and
metric by the following constaint and parametrization:

- Constraint: $sum_i x^(2)_i = a^2$
- Parametrization:
$
    x_1 & = R sin theta cos phi \
    x_2 & = R sin theta sin phi \
    x_3 & = R cos theta \
    x_4 & = sqrt(a^2 - R^2)
$
The induced metric is given by:
$
    d s^2 = (a^2 d r^2) / (a^2 - r^2) + r^2 d Omega_2^2
$
We can calculate the Ricci Scalar of this metric, and we find that
$R^((3)) tilde 1 / a^2$.


=== $HH^3$ 3-hyperbolic space

Similarly we can embed the 3-hyperbolic space into a 4-dimensional
Minkowski space with Cartesian coordinates $x^i$ to get the metric.
Another easy way of seeing the result is simply take the metric of the
3-sphere and replace $a^2$ with $-a^2$. This will definitely give us a
solution to the constraints @br with negative curvature. Thus we can
write the metric of the 3-hyperbolic space as:
$
    d s^2 = (a^2 d r^2) / (a^2 + r^2) + r^2 d Omega_2^2
$

=== Unified Form of Spacial Metric

With above preparations, we can write three types of metrics in a
unified form:
$
    d s^2 = a^2 ( (d r^2) / (1 - k r^2) + r^2 d Omega_2^2)
$
Here $k = -1,0,1$ stands for the three types of metrics. $k = 1$ gives
$SS^3$ and $k = -1$ gives $HH^3$.

== FRW Metric

=== Definition in Comoving Coordinates

With the spacial slice metric prepared, we can add a time coordinate
to make it a full 4 dimensional metric ansatz. A typical form of the
metric is given by: #definition[FRW Metric][
    The FRW metric is given by:
    $
        d s^2 & = -d t^2 + a^2 (t) ( (d r^2) / (1 - k r^2) + r^2 d Omega_2^2) \
              & = -d t^2 + a^2 (t) gamma_(i j) d x^i d x^j
    $
]<comovingFRW>
Mathematically, we can rigorously show that the FRW metric is the only
metric that satisfies the cosmological principle. Physically, we can
also understand that the FRW metric is the most general metric that
can describe a homogeneous and isotropic universe.

#remark([
    However, we shall notice that such metric is only defined on a
    patch of the manifold. Different manifold with different topology
    can have the same local metric. Thus, the global structure of the
    spacetime is undetermined.
])

=== Unit of the Scale Factor

We can see that:

- For $k eq.not 0$:, the scale factor $a(t)$ has the physical meaning
    of radious of spacial curvature. Thus, we can assign it a unit of
    length and take the spacial coodinate dimesionless.

- For $k = 0$: the scale factor $a(t)$ can be taken as dimensionless,
    and the spacial coordinate can be taken as having a unit of
    length.

In fact in this case, at fixed time, $a(t = t_0)$ is meaningless, what
physical is the ratio $a(t) / a(t_0)$.

=== Remark on Comoving Coordinates

@comovingFRW is certainly written in a certain coordinate system,
which is called the *comoving coordinates*. This means that the
particles at rest in this frame (at rest means at rest spacially and
moving in the time coordinate) are free (which means they move in
geodesics) We can see that indeed $u^0 = 1$ is a solution to the
geodesic equation.

=== Connection and Curvature
<curvatureFRW>

We can calculate the Levi-Civita connection and the curvature of the
FRW metric in the comoving coordinates:
- Metric:
$
    g_(0 0) = -1, quad g_(i j) = a^2 gamma_(i j) quad g^(0 0) = -1, quad g^(i j) = a^(-2) gamma^(i j)
$

- Curvature:
$
    & R_(00) = -3 (dot.double(a)) / a quad R_(0 i) = 0 \
    & R_(i j) = (a dot.double(a) + 2 dot(a)^2 + 2 k) gamma_(i j) \
    & R = 6 (a dot.double(a) + dot(a)^2 + k) / a^2
$
where $gamma_(i j)$ is the spacial metric. We can see that the
curvature is determined by the scale factor $a(t)$ and the curvature
parameter $k$.
