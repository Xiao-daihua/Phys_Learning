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

+ ...


=== Feymann Parameterization


=== Dimensional Regularization

== Example 1: Electric Vertex Function

This is the most basic example of renormalization, which is the
one-loop correction to the electric vertex function, given in section
6.3 and 7.2, 7.3 of @peskinIntroductionQuantumField1995.


== Example 2: Vaccum Polarization

This is another example from Peskin and Schroeder
@peskinIntroductionQuantumField1995, which is the one-loop correction
to the photon propagator, given in section 7.5.


#pagebreak()
= Renormalization

== Bare Perturbation Theory
Before going to a modern and systematic way to do renormalization, we
need to first try to do it in a more naive and cumbersome way called
*bare perturbation theory*. Yet it may help us to understand why the
systematica *renormalized perturbation theory* works.


=== Core Idea

We will try to deal with the divergences encounter in the previous
sections, and try to cancel them out. The core idea is that:

- Before, we have infinity due to the fact that we are using the
    unobservable infinite quantities $m_0, lambda_0, Lambda, Z,...$ to
    express the S Matrix, thus the coefficients turns out to be
    infinite.

- Now we define some physical quantities and think of them as finite
    number giving the result of stuffs we really measure in
    experiments, such as the physical mass $m$, the physical coupling
    constant $lambda$ ...

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

+ *Express the Observable we care in terms of the physical
    quantities*, and we will find that the coefficients are finite,
    and we can get finite results for physical quantities.





== Classifying Divergences



== Renormalized Perturbation Theory

We have seen that the bare renormalization is cumbersome and may have
some potential problems unclear in the procedure.

*Renormalization Condition* is in fact defining what the physical
quantities are in this theory.




