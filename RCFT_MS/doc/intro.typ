#import "../env/lib.typ": *

= Introduction

== Overview

Since the BPZ paper gives a concrete definition of the conformal
blocks, we want to control the behavior of these special functions. A
series of papers by Moore and Seiberg in the late 80s and early 90s
give an answer. Without concretely calculating the conformal blocks,
they show that these function have certain crossing properties,
controled by series of duality matrices. More amazingly, these duality
matrices can be explicitly calculated. This gives a explicit way of
bootstrapping the 2D CFT structure constants.

Moreover, apart from the field theory application. The crossing
properties of conformal blocks forms a beautiful mathematical
structure, so called the modular tensor category. This gives us a deep
connection between 2D CFT and 3D TQFT. In fact, it can be shown
explicitly from the Chern-Simons / WZW correspondence, which is a
prototype of holographic duality.

More amazingly, the conformal blocks can also be view as a holomorphic
section of a vector bundle over the moduli space of Riemann surfaces.
This gives a deep connection between 2D CFT and complex geometry. This
point of view also gives us insights on the quantization of
Teichmuller space, which is a key step in understanding AdS3 gravity.

In this note, I'll mainly focus points:

+ duality matrices and crossing of conformal blocks.

+ Underlining Modular Funtor and Modular Tensor Category Mathematical
    Structure.


== Axiomatic CFT

We first review the BPZ axioms of 2D CFT.


