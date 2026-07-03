#import "../env/lib.typ": *

= Gauging a Discrete Symmetry

Now we turn to the main topic of this note, gauging a discrete
symmetry. To do this we may first define what we mean by a discrete
gauge field, and a discrete symmetry of a QFT.

== Discrete Symmetry

Wigner Theorem tells us that a Quantum theory has a symmetry is given
by a Unitary or Anti-Unitary operator, forming a representation of the
symmetry group on the Hilbert space. We can characterize the symmetry
with these operators.

A discrete symmetry is a symmetry whose symmetry group is a discrete
group, which can be finite or infinite. The Hilbert space forms a
Unitary or Anti-Unitary representation of the symmetry group, and
those operator

- *Group Structure*:
$
    U(g_1) U(g_2) = U(g_1 g_2)
$
- *Conserved*:
$
    U(g) H U(g)^(-1) = H
$
- *Generate transformation*:
$
    U(g) O(x) U(g)^(-1) = R(g) O(x)
$
- *Ward Identity*: they also have some Ward identities, which can be
    used to constrain the correlation function. A simple example is
    the $ZZ_2$ symmetry of free scalar field theory, which acts as
    $phi(x) arrow.r -phi(x)$, and the Ward identity tells us that the
    correlation function of odd number of $phi$ must vanish.
- ...

Remember the slogan we introduced before, we can generalize to
characterize symmetries with *symmetry generators*. Imposing consistency
conditions and observing the relation with Ward identities, we can
find out all these symmetry generators and identify them with
symmetries.

== BF Approach to Discrete Gauge Field

What is a discrete gauge field and what mathematical language
characterize these objects? For discrete symmetry we don't have a Lie
algebra, the Lie algebra of a discrete group is 0 thus:
$
    A = 0 ,quad F = 0
$
Naively we only have trivial objects that are meaningless. However, we
remember that a gauge field may not be globally defined, but only on
patches. Though we have 0 for the gauge field locally, we may have
non-trivial holonomy when going through patches:
$
    "Hol"(C) = exp (i integral.cont_(C) A) = g in G
$
In fact to characterize this data, we don't need to introduce the
gauge field but the transition function between patches:
$
    g_(i j) : U_i inter U_j arrow.r G
$

In this section, we will see that a $ZZ_n$ p-form discrete gauge field
can be gain from a p-form U(1) gauge field by a BF theory. The BF
theory serves as a symmetry brokening term that break the U(1) gauge
symmetry down to a $ZZ_n$ gauge symmetry, thus we can view the BF
theory as a way to construct a discrete gauge field from a continuous
one.

=== BF Theory
<sec:zznbf>

The BF theory is a topological field theory with the following action
#definition[BF Theory][
    $
        S_("BF" ) = ( n ) / ( 2 pi ) integral_( M_( d ) ) a_( p + 1 ) and d b_( d - p - 2 )
    $
    where $a$ and $b$ are U(1) higher form gauge fields.
]

We finally can see that if $b$ field is dynamical, then the $a$ field
is a $ZZ_n$ gauge field, and if $a$ field is dynamical, then the $b$
field is a $ZZ_n$ gauge field.

We first need to justify that the BF theory is a valid gauge theory
that has gauge invariance. We may notice that the action is not gauge
invariant but the partition function is. Consider the gauge
transformation:
$
    a_( p + 1 ) -> a_( p + 1 ) + d lambda_( p ), wide b_( d - p - 2 ) -> b_( d - p - 2 ) + d hat(lambda)_( d - p - 3 ).
$
We take the gauge transformation of $a$ field then we have:
$
    delta_( lambda ) S_( B F ) = ( n ) / ( 2 pi ) integral_( M_( d ) ) d lambda_( p ) and d b_( d - p - 2 ),
$
Naively, this is 0, due to the stokes theorem, we can rewrite it as a
total derivative. However, we should notice that the stokes theorem
may not be valid here due to we are considering gauge field but not a
globally well defined one form.

Thus, here $d lambda_p$ and $d b_(d-p-2)$ are some forms that of
course *closed* due to $d^2 = 0$ but *not necessarily Exact*. Don't be
fooled by the fact they can write as a total derivative, they are not
total derivatives of a globally well defined form, but a gauge field.
For such integral of closed but not exact forms, there is also a way
to control the integral of wedge product of them.


Consider the integral of two U(1) gauge fields $a$ and $b$:
$
    integral_( M_( d ) ) d a_( p ) and d b_( d - p - 2 )
$
One critical observation is that this integral depends only on the de
Rham cohomology class of $d a$ and $d b$. This is because, if we shift
$d a$ by an exact form, say $d a -> d a + d lambda$, then the integral
shift by:
$
    integral_( M_( d ) ) d lambda and d b_( d - p - 2 ) = integral_( M_( d ) ) d ( lambda and d b_( d - p - 2 ) ) = 0
$
The second step is valid for stokes theorem, since $lambda and d b$ is
a globally well defined form.

- *The wedge product integral is an integer*
Combining the two facts — (i) the integral depends only on the
cohomology classes of $d lambda$ and $d b$, and (ii) the gauge field
has integer flux — one can show the following clean statement. On a
closed, orientable manifold $M_d$, the wedge product of two
integer-flux $U(1)$ field strengths integrates to $(2 pi)^2$ times an
integer:
$
    ( 1 ) / ( ( 2 pi )^( 2 ) ) integral_( M_( d ) ) d a_( p ) and d b_( d - p - 2 ) =: N in ZZ.
$
Intuitively, we may add some $d lambda$ to concentrate the flux of
$d a$ onto a $( p + 1 )$-dimensional cycle $Sigma_( p + 1 )$ and the
flux of $d b$ onto the complementary $( d - p - 1 )$-dimensional cycle
$Sigma_( d - p - 1 )$. The two cycles have dimensions adding up to
$d$, so they meet only at isolated points. The wedge product is
nonzero only where both fluxes overlap, i.e. at these intersection
points, and each intersection contributes the product of the two
integer fluxes:
$
    ( 1 ) / ( ( 2 pi )^( 2 ) ) integral_( M_( d ) ) d a and d b
    = underbrace(( 1 ) / ( 2 pi ) integral_( Sigma_( p + 1 ) ) d a, in ZZ)
    thin
    underbrace(( 1 ) / ( 2 pi ) integral_( Sigma_( d - p - 1 ) ) d b, in ZZ)
    thin
    underbrace(\#( Sigma_( p + 1 ) inter Sigma_( d - p - 1 ) ), in ZZ)
    in ZZ.
$
All three factors are integers, so $N in ZZ$.

#remark([
    Above illustration is guaranteed by many mathematical facts, and
    my illustration is not rigorous.
    #YL([I in fact still don't fully understand when we can do this
        kind of splitting.])
])

- *Conclusion: gauge invariance fixes $n in ZZ$*
Plugging this back into the gauge variation:
$
    delta_( lambda ) S_( B F ) = ( n ) / ( 2 pi ) integral_( M_( d ) ) d lambda_( p ) and d b_( d - p - 2 )
    = 2 pi n dot N, wide N in ZZ.
$
The action is *not* invariant — it shifts by $2 pi n N$. But the path
integral only sees $e^( i S )$, and as long as:
$
    n in ZZ
$
In fact, we will eventually see that the level $n$ is exactly the $n$
in $ZZ_n$


=== $ZZ_n$ Gauge Field from BF Theory

We now prove that by making $b$ dynamical, the $a$ field satisfies
many thing we expect for a $ZZ_n$ gauge field, thus we can view the
$a$ field as a $ZZ_n$ gauge field.






== Cohomology Approach to Discrete Gauge Field

=== Basic Homology and Cohomology




