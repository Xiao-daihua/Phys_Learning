#import "@preview/thmbox:0.3.0": *
#import "@preview/physica:0.9.8": *
#import "@preview/inknertia:0.1.0": feynman
#import feynman: *

#let YLcolor = rgb(10%, 0%, 100%)
#let YL(content) = text(fill: YLcolor)[YL: [#content]]
#let feynman(body) = math.cancel(angle: 15deg, body)
