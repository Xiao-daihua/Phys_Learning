#import "../env/lib.typ": *
Renormalization is the procedure to deal with divergences in quantum
field theory. It is a systematic way to cancel the divergences and get
finite results for physical quantities.

= Regualization
Before starting with the systematic renormalization canceling out
divergence, we need to first regularize the divergences, which is the
process to make the divergences well defined. This is done by
introducing a regularization scheme, which is a mathematical tool to
make the divergences well defined.


== Regularization Schemes

To regularize the divergences, we need to first calculate the loop
integrals to some good extent, and the introduce the regularization
scheme to make the divergences well defined. There are several
regularization schemes, and the most common ones are:
- Pauli-Villars Regularization

- Dimensional Regularization
This section we will intensively study how to calculate loop integrals
and do regularization in a standard way. Here are the general steps to
folow:
+ Use *Feymann Parameters* to combine the denominators of the
    propagators in the loop integrals, which will make the loop
    integrals easier to calculate.

+ Make $l$


=== Feymann Parameterization


=== Dimensional Regularization


== Examples
Lets use the mathematical tools developed in the previous sections to
calculate some examples of loop integrals and do regularization, which
will be useful for the following sections on renormalization.

=== Example: $phi^4$ Theory 1 Loop Diagrams


=== Example: Electric Vertex Function

This is the most basic example of renormalization, which is the
one-loop correction to the electric vertex function, given in section
6.3 and 7.2, 7.3 of @peskinIntroductionQuantumField1995.


=== Example: Vaccum Polarization

This is another example from Peskin and Schroeder
@peskinIntroductionQuantumField1995, which is the one-loop correction
to the photon propagator, given in section 7.5.


#pagebreak()
= Renormalization
We have seen that the observables we care about seems to have
divergences due to the loop integrals. Now we need to find a way to
understand why there are these divergences and how to get finite
results for physical quantities. This is the process of
renormalization.

== Bare Perturbation Theory
Before going to a systematic way to do renormalization, we need to
first try to do it in a more naive and cumbersome way called *bare
perturbation theory*. Yet it may help us to understand why the
systematica *renormalized perturbation theory* works.


=== General Method
Before we have encountered divergences in observables, seems like the
theory is ill defined. However, in fact its is our understanding of
the theory is incomplete, here is a modern understanding:

- Before, we have infinity due to the fact that we are using the
    unobservable infinite quantities $m_0, lambda_0, Lambda, Z,...$ to
    express the S Matrix, thus the coefficients turns out to be
    infinite.

- We have to define some physical quantities (and argue why they are
    physical) and think of them as the result of stuffs we really
    measure in experiments, such as the physical mass $m$, the
    physical coupling constant $lambda$ ...

- Now we can express the S Matrix in terms of the physical quantities,
    turns out that the coefficients are finite, and we can get finite
    results for physical quantities.

To do this, we follow the following steps:

+ *Regularize the divergences in Observable* (eg. S Matrix), and
    express the Observable in terms of the unobservable infinite
    quantities $m_0, lambda_0, Lambda, Z,...$, with infinite
    divergences.

+ *Define the physical quantities*, such as the physical mass $m$, the
    physical coupling constant $lambda$ and calculate them
    perturbatively in terms of the unobservable infinite quantities
    $m_0, lambda_0, Lambda, Z,...$ to some orders.

+ *Express the Observable in terms of the physical quantities*, and we
    will find that the coefficients are finite, and we can get finite
    results for physical quantities.

#note([
    It is important to have all steps in the same order of
    perturbation. For tree level, there are no loops and divergence,
    thus we can directly express bare quantity as physical quantities,
    if we fix the order of perturbation to be tree level.
])

=== Example: Electric Vertex Function

The first example is the one-loop correlation to the electric vertex
function. We may see that though we have divergences in correlation
functions. However, if we focus on physical quantities, such as S
Matrix and use the physical mass instead of bare mass. The divergence
will disappear.



==== Divergence in all orders

There is a problem of can field strength renormalization cancel
divergence to all orders? this is enforced by the Ward-Takahashi
identity, which is a consequence of the gauge symmetry.


=== Example: Vaccum Polarization


#pagebreak()
== Renomalizability

Above sections we show that some of the divergence in a theory may be
canceled out using a renomalizing technique. However, for a sensible
theory, we need to make sure that all the divergences can be canceled
out when expressing the physical obserables using physical values.

Thus, before developing a systematic way to do renormalization, we
need to first classify theories based on whether they can be
renomalized or not.


=== Which Theories are Renormalizable?

To answer this question, we have 2 subquestions:

+ How to count the number of divergent amplitudes in a theory?

+ What kind of divergence is controllable? (ie. can be canceled out by
    renormalization)
=== How to Count Divergences?

We have to answer the first question first.

- How to count the number of divergent amplitudes in a theory?

We introduce the concept of *superficial degree of divergence*. To
make things easy, we take a $phi^n$ theory in $d$ dimensional
spacetime as an example:
$
    cal(L) = 1/2 (partial_mu phi)^2 - 1/2 m^2 phi^2 - lambda/n! phi^n
$
Now consider a Feymann Diagram with:
$
    & N : "number of external lines" \
    & P: "number of propagators" \
    & V: "number of vertices" \
    & L: "number of loops"
$
We can define a quantiy called *superficial degree of divergence* as:
#definition[Superficial Degree of Divergence][
    The superficial degree of divergence of a Feymann Diagram is
    defined as:
    $
        D = d L - 2P
    $
    where $L$ is the number of loops and $P$ is the number of
    propagators in the Feymann Diagram.
]
Why does this quantity characterize the divergence of the Feymann
Diagram? We can have a loop at the Feymann Rules:

- Naively, each Propagator contributes a factor of $1 slash k^2$ to
    the amplitude, which gives a factor of $-2$ to the degree of
    divergence.
$
    D_F tilde 1/(k^2+m^2)
$

- Each loop contains a momentum that needs to be integrated over,
    which gives a factor of;
$
    integral (d^d k)/(2pi)^d
$
Thus the total contribution to the degree of divergence is:
$
    D = d L - 2P
$
There is also an expression using numbers of vertices and external
lines:
$
    L = P - V + 1 quad n V = 2P + N\
    arrow.r.double D= d- (d-2)/2 N - V (d - n (d-2)/2)
$



However, we know that this is really just a simplified version of the
true divergence. Because there are some special cases that have
different divergence than the superficial degree of divergence.

Commonly these special cases are given in the following list (this
list is exactly true for QED, that this list contains all the special
cases for QED):

+ *Sub-Diagram Divergence*: A Feymann Diagram may contain a
    sub-diagram that has a divergence, which may gives larger
    divergence than the superficial degree of divergence.

+ *Symmetry*: Some Feymann Diagrams may have some symmetry that
    ensures some divergent diagrams canceled out in some amplitudes,
    which makes the true divergence smaller than the superficial
    degree of divergence.
+ *Trivial diagram*: trivial diagram with no loops and no propagators,
    which has a degree of divergence of $D=0$ but is actually finite.

We can argue that these special cases have no effect on our analysis
of divergence and renormalizability:

+ For the first case, we can just consider all amputated, one particle
    irreducible basic amplitudes, and make sure they are controlable.
    If one highier diagram is superficially converge, yet truely
    diverge, the only possibility is to have a sub-diagram in the
    cases we discussed, which is controlable.

+ For the second case, we would like to see this.

+ For the third case, just ignore it, no one cares about it.

Thus, we'd like to say that the superficial degree of divergence is a
good way to characterize the divergence of the Feymann Diagram. There
are conter examples, especially for more complicated theories like
Yang-Mills theory, this will be discussed in more advanced sections.


==== What kind of Divergence is Controllable?

The second question is what kind of divergence is controllable, which
means that we can cancel out the divergence by renormalization. The
answer is that:

- *Super Renormalizable*: Theories with only a finite number of
    superficially divergent diagrams: which means that 1. only a
    finite number of amplitudes diverges 2. they only diverge to a
    finite order.

- *Renormalizable*: Theories with an infinite number of superficial
    divergent amplitudes: which means that 1. an infinite number of
    amplitudes diverges 2. they may diverge in any order.

- *Nonrenormalizable*: Theories with an infinite number of superficial
    divergent amplitudes.

#remark[
    Here for Amplitude, we means general stuffs like this, which
    contains summing over all Feymann Diagrams to all orders. #figure(
        image("../assets/amplitudes.png", width: 20%),
    ) <fig-amplitudes>
    If an amplitude diverges, it may have two cases: either Feymann
    Diagrams to all orders have divergence or only a Feymann Diagram
    of some finite order diverges. This difference separates the
    superrenormalizable theories and renormalizable theories.
]
As the name suggests, only a renormalizable theory is renormalizable.

- Why is this the case??

A basic analysis is that ther are only finite number of parameters we
can use as physical quanitities. If there are too many infinities,
they may not be adiquate enough for cancelation. And if we have finite
numbers of amplitudes that diverges superficially, we can have finite
physical quantities to plug in and cancel out the divergences. We will
see examples to justify this claim.

Thus we can have a partically systematic way to see whether a theory
is renormalizable or not:

- *Step 1:* try to list out all superficially divergent, amputated,
    one particle irreducible basic amplitudes.

- *Step 2:* check whether there are truely divergent or not; there are
    more divergent amplitudes beyond superficial expectations.

We will finally see examples of this procedure.

=== Mass Dimension and Renormalizability

==== Divergence and Mass Dimension

There is also a more straightforward way of seeing divergence of a
Feymann Diagram. We know that an amplitude should be of the same
dimension.

consider a $n$ external leg diagram in the $phi^n$ theory:

- The tree level diagram:
$
    i cal(M) = -i lambda
$
By dimensional analysis, we have:
$
    [ lambda ] = d - n (d-2)/2
$
- Consider a loop diagram of this $n$ external leg amplitude, which
    has $V$ vertices, the amplitude is:
$
    i cal(M) tilde lambda^V Lambda^D
$
where $Lambda$ is the cutoff scale, and $D$ is the superficial degree
of divergence.

- By dimensional analysis, we have:
$
    [ lambda^V Lambda^D ] = V (d - n (d-2)/2) + D = d - n (d-2)/2
$
inverse the equation, we have:
$
    D = d - n (d-2)/2 - V (d - n (d-2)/2)
$
which is exactly the same as the superficial degree of divergence we
have defined before.


==== Renormalizability from Mass Dimension

These relations in fact is much physical than just a mathematical
relation. We then can see the mass dimension of the coupling constant
gives us a direct way to see whether a theory is renormalizable or not
(of course, superficially):

- *Super Renormalizable*: Theories with coupling constants of positive
    mass dimension.

- *Renormalizable*: Theories with coupling constants of zero mass
    dimension.

- *Non Renormalizable*: Theories with coupling constants of negative
    mass dimension.

In fact this can also be justified in a EFT view.

#YL([Discussion to be continued, for the Wilsonian view of QFT and
    their consistency with the renormalization procedure.])


=== Renormalizability of QED
Lets apply this two steps to QED:
- *Step 1:* try to list out all superficially divergent, amputated,
    one particle irreducible basic amplitudes.

- *Step 2:* check whether there are truely divergent or not; there are
    more divergent amplitudes beyond superficial expectations.

The list of all superficially divergent, amputated, one particle irreducible basic amplitudes in QED is given in the following table:






#pagebreak()
== Renormalized Perturbation Theory

We have seen that the bare renormalization is cumbersome and may have
some potential problems unclear in the procedure.

=== General Method

*Renormalization Condition* is in fact defining what the physical
quantities are in this theory.


=== Understanding from LSZ

This subsection address understanding of renormalization from the LSZ
reduction formula

== Examples of RPT

=== Example: $phi^4$ Theory







