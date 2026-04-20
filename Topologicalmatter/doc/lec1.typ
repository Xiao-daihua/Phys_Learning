#import "../env/lib.typ": *

= Lecture 1: Introduction and Motivation

This section serve as an

== Toric Code Model

This is a CMT model on lattice, which is initially defined on a
*torus*, and it can be used to contain information thus called *code*.
This is in fact a $ZZ_2$ gauge theory.

The model is defined on a square lattice, with on each *link* a
spin-1/2 degree of freedom. The Hilbert space is then the tensor
product of all the spin-1/2 Hilbert space on each link:
$
    cal(H) = times.o.big_("link") CC^2
$
It is interesting for giving following properties:

- The ground states of the model represent
    $H_1(T^2, ZZ_2) = ZZ_2 times ZZ_2$.

- There are 4 degenerate ground states, which are topologically
    protected. This means that the ground states cannot be change into
    each other by any local operation, and the degeneracy is robust
    against any local perturbation.

=== Model Setup

To define the model, we first define the Hamiltonian which is a
operator:
$
    H : cal(H) arrow.r cal(H)
$
This Hamiltonian is defined can be constructed by some local operators
on latticeusing the pauli matrices:
$
    sigma^i : CC^2 arrow.r CC^2
$
Now we can define the Hamiltonian as:
#definition[Hamiltonian of Toric Code Model][
    $
        H = - sum_{v} A_v - sum_{p} B_p
    $
    where $A_v$ and $B_p$ are defined as:

    - $A_v = product_(i in v) sigma^x_i$, where $v$ is the set of
        links that are connected to the vertex $v$.

    - $B_p = product_(i in p) sigma^z_i$, where $p$ is the set of
        links that are on the boundary of the plaquette $p$.
]
Here is a diagram of the model:
