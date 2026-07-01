#import "../env/lib.typ": *

= Integer Quantum Hall Effect

Now we're prepared to discuss the integer quantum Hall effect (IQHE).
The IQHE is a quantum phenomenon observed in two-dimensional electron
systems having a quantized Hall conductance. Observation gives us a
Hall conductance (resistance) that is quantized:

#figure(
    image("../assets/qheexp.png", width: 50%),
    caption: [experimental observation of IQHE.],
) <fig-qheexp>
with two important features:

+ *Integer Hall Conductivity*: The Hall conductance $sigma_(x y)$ is
    quantized in integer multiples of:
$
   rho_(x y) = frac(2 pi planck, e^2) 1/n
, quad n = 0, 1, 2, ...
$

+ *Plateau Regions*: The quantized Hall conductance occurs in plateau
    regions as a function of the magnetic field or electron density,
    where the conductance remains constant over a range of parameters.

+ *Vanishing Longitudinal Conductivity*: The longitudinal conductance
    $sigma_(x x)$ vanishes in the plateau regions where the Hall
    conductance is quantized.

#note([Note that in IQHE, in fact $rho_(x x)$ and $sigma_(x x)$ both
    vanishes. This is not a conflict of being both a perfect conductor
    and a perfect insulator, it just means that no current is flowing
    in longitudinal direction, and the system is dissipationless.])

== IQHE of Free Electrons

The standard IQHE explanation occurs in a two-dimensional electron gas
(2DEG) confined to a plane and subjected to a perpendicular magnetic
field. This section we will discuss the explanation of IQHE in this
framework. I will not go too much into the details of this, which can
be found in many textbooks. Instead, I will just give a brief overview
of the key points.


=== Laughlin's Illustration

Here I'll provide an illustration (I'd prefer to call it an
"illustration" for it doesn't really explain a concrete eperiental
model, rather illustrate how can this phenonmenon be true) of the
IQHE, which is originally given by Laughlin @Laughlin_1981.

This illustration is based on a very special geometry:

#figure(
    image("../assets/QHEgeo.png", width: 30%),
    caption: [Laughlin's illustration of IQHE geometry.],
) <fig-qhegeo>

+ *Integer Conductivity*: The key idea of the IQHE having an integer
    quantized Hall conductance is that each Landau level go through a
    spectral flow and thus contribute to one electron going from a
    edge to another as the flux that generater the electric field goes
    up by one flux quantum.

+ *Plateau Regions*: The plateau regions can be explained by the
    presence of disorder in the system, which leads to localized
    states that do not contribute to the conductance, and they are not
    effected by the flux. The extended states that contribute to the
    conductance, and are effected by the flux and may have a spectral
    flow. As the magnetic field goes down, the localized states are
    filled first which lead to unchange of the conductance.

For a more detailed discussion, one can see Laughlin's original paper
@Laughlin_1981, or modern textbooks like
@fradkinFieldTheoriesCondensed2013.

=== Edge States

Halperin @halperinQuantizedHallConductance1982, followed Laughlin's
illustration, yet he also point out that a negelected but important
aspect of IQHE, which is the edge states. Here I follow @qhelecture
notes to give an illustration of how the edge states gives out the $x$
direction current with a Hall voltage in $y$ direction.

The picture is that at the edge of the system, there will be a
potential that confines the electrons in the bulk. Then the landau
levels will bend up due to the energy goes up at the edge.

#YL([To be continued... perhaps put it in the bulk edge section])



=== A Topological Illustration

In section 12.7 of @fradkinFieldTheoriesCondensed2013, Fradkin gives a
topological illustration of the IQHE. It focus on a geometry of a 2D
electron gas on a torus. The key result is that the Hall conductance
can be expressed as a topological number of the system. It looks like
the TKNN invariant, which we are going to discuss in the next section.






== IQHE in Lattice Models

Apart from the electron gas picture. Sometimes we can't negelect the
lattice structure of the system with IQHE, and thus we need to
consider to explain the IQHE in a lattice model.

We may see that in fact if the lattice model has a nontrivial
structure, we don't even need an external magnetic field to have a
quantized Hall conductance. This is the so called quantum anomalous
Hall effect (QAHE), which first discovered in @Chang_2013 experiment.


=== Kubo Formula

=== TKNN Formula


=== Example 1: Hopping Models with Magnetic Field



=== Example 2: Chern Insulator Models

This is a series of model that can have nontrivial TKNN invariant and
thus exhibit quantized Hall conductance without external magnetic
field.

The most famous one is the Haldane model, which is a tight-binding
model on a honeycomb lattice with complex next-nearest neighbor
hopping. Here we might just discussed another simpler model, the
Qi-Wu-Zhang (QWZ) model @Qi_2006.
