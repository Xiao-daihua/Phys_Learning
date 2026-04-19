#import "../env/lib.typ": *

= Example 1: Dirac Quantization

== Anomalous Partition Function

=== Basic Setup

In many systems couple to a U(1) gauge field
- Particle confined in $SS^1$

- Dirac Fermion ...

These model arises with a partition function:
$
    Z(S^1, g) = exp (i q integral.cont_(C) dif x A)
$
For a mathematical defined $U(1)$ gauge field, we admit gauge
transformation both small and large. For a suitable normalization, we
can get

- Small gauge transformation: $A arrow.r A + d lambda$

- Large gauge transformation: for a close loop
    $integral_C dif x A arrow.r
    integral_C dif x A + 2 pi n$
#remark[
    In EM, this large gauge transformation may exist due to physically
    the AB phase and to have non globally well defined gauge field.
    Moreover, the integral of curvature over a closed surface is
    quantized, which is physically the Dirac quantization condition of
    charge.

    Here, we can just understand it as a mathematical property of U(1)
    connection, as well as the fact that the integral of curvature
    over a closed surface is quantized. And we assume that EM field
    can be described by a U(1) gauge field.
]

Thus under large gauge transformation, the partition function
transforms as:
$
    Z(S^1, g) arrow.r Z(S^1, g) exp (2 pi i q n)
$
if the coupling $q$ is not an integer, the partition function is not
invariant under large gauge transformation, which is an anomaly.
