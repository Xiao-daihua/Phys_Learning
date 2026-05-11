#import "lib.typ": *

// ================================================================
// piece.typ  —  template for short self-contained pieces
// ================================================================

#let piecetemp(
  title:    [Piece Title],
  topic:    none,
  date:     datetime.today().display("[month repr:long] [day], [year]"),
  abstract: none,
  doc,
) = {

  // ── Page setup ────────────────────────────────────────────────
  set page(
    paper: "a4",
    margin: (x: 25mm, top: 25mm, bottom: 25mm),
    numbering: "1",
    number-align: center,
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 8pt, fill: luma(155))
        grid(
          columns: (1fr, auto),
          align(left, title),
          align(right, if topic != none { topic } else { [] }),
        )
        v(-5pt)
        line(length: 100%, stroke: 0.35pt + luma(210))
      }
    },
  )

  // ── Text & paragraph ──────────────────────────────────────────
  set text(
    size: 11pt,
    font: ("New Computer Modern", "Songti SC"),
  )
  set par(
    justify: true,
    spacing: 0.85em,
    first-line-indent: (amount: 1.5em, all: false),
  )

  // ── Headings ──────────────────────────────────────────────────
  set heading(numbering: "1.1")
  show heading: it => {
    v(1em, weak: true)
    it
    v(0.4em, weak: true)
  }

  // ── Links ─────────────────────────────────────────────────────
  show link: it => text(fill: rgb("#2F6FD6"))[#it]

  // ── Equations: flat numbering (1)(2)… ─────────────────────────
  set math.equation(numbering: "(1)")

  // ── Theorem environments ──────────────────────────────────────
  show: thmbox-init()

  // ── Title block ───────────────────────────────────────────────
  v(0.8em)

  // Topic badge
  if topic != none {
    box(
      fill: rgb("#f0eeff"),
      stroke: 0.5pt + rgb("#9080e0"),
      radius: 3pt,
      inset: (x: 7pt, y: 3pt),
      text(
        size: 8pt,
        fill: rgb("#5a46c8"),
        tracking: 0.06em,
        upper(topic),
      )
    )
    v(0.55em)
  }

  // Title
  text(size: 16.5pt, weight: "bold")[#title]
  v(0.28em)

  // Date
  text(size: 9pt, fill: luma(145))[#date]

  // ── Abstract ──────────────────────────────────────────────────
  if abstract != none {
    v(1.1em)
    block(
      width: 100%,
      fill: luma(247),
      radius: 4pt,
      inset: (x: 14pt, y: 10pt),
      text(size: 10pt, fill: luma(55))[
        *Abstract.* #h(0.3em) #abstract
      ]
    )
  }

  v(1.5em)
  line(length: 100%, stroke: 0.4pt + luma(205))
  v(1.3em)

  doc
}
