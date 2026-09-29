#import "@preview/thmbox:0.3.0": *
#import "@preview/physica:0.9.8": *

#let YLcolor = rgb(10%, 0%, 100%)
#let YL(content) = text(fill: YLcolor)[YL: [#content]]

#show math.equation: set text(size: 10.8pt)
#let qquad = h(1.5em)
#let dif = math.upright("d")
