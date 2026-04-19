#import "lib.typ": *

// ---------------------------------------------------------------------------
// Chapter (level-0 heading)
// ---------------------------------------------------------------------------
// Implemented as a figure with kind "chapter" so it can be picked up by the
// outline, while we fully control the opener's typography. Each chapter:
//   * always starts on a right-hand (or simply new) page,
//   * has an independent counter (Chapter 1, 2, ...),
//   * resets the section counter so `= Section` underneath restarts at 1,
//   * begins with a large chapter number above a restrained title.
// ---------------------------------------------------------------------------

#let chapter-counter = counter("chapter")

#let chapter(body) = {
    chapter-counter.step()
    counter(heading).update(0)
    pagebreak(weak: true, to: "odd")
    figure(
        kind: "chapter",
        supplement: [Chapter],
        numbering: "1",
        outlined: true,
        caption: body,
        [],
    )
    v(6em)
    block(width: 100%, {
        set align(left)
        text(
            size: 15pt,
            tracking: 3pt,
            weight: "medium",
            fill: rgb("#888888"),
        )[CHAPTER #context chapter-counter.display()]
        line(length: 30em, stroke: 1pt + rgb("#222222"))
        text(size: 25pt, weight: "bold")[#body]
        v(0.8em)
    })
    v(2.5em)
}


#let notetemp(
    title: [Paper Title],
    author: [Albert Einstein],
    date: datetime.today().display("[month repr:long] [day], [year]"),
    abstract: none,
    doc,
) = {
    // ---- Global typography -------------------------------------------------
    set par(
        justify: true,
        spacing: 1em,
        first-line-indent: 1.5em,
    )
    set text(
        size: 11pt,
        font: ("New Computer Modern", "Songti SC"),
    )
    set heading(numbering: "1.1")
    show heading: it => {
        it
        v(0.3em)
    }
    show link: it => text(fill: rgb("#2F6FD6"))[#it]
    set math.equation(numbering: "(1.1)")
    show: thmbox-init()

    // Hide the invisible chapter figure in the body (only outline uses it).
    show figure.where(kind: "chapter"): none

    // =======================================================================
    // 1. COVER PAGE
    // =======================================================================
    set page(
        paper: "a4",
        margin: (x: 28mm, y: 32mm),
        numbering: none,
    )

    {
        set align(center)
        set par(first-line-indent: 0em, justify: false)

        v(1fr)

        // Top rule
        line(length: 100%, stroke: 0.6pt + rgb("#222222"))
        v(0.4em)
        line(length: 100%, stroke: 1.4pt + rgb("#222222"))

        v(2.5em)

        // Title
        text(size: 28pt, weight: "bold", fill: rgb("#111111"))[#title]

        v(2em)

        // Author, small caps style
        text(
            size: 12pt,
            tracking: 3pt,
            fill: rgb("#333333"),
        )[#upper[#author]]

        v(2.5em)

        // Bottom rule (mirror of the top)
        line(length: 100%, stroke: 1.4pt + rgb("#222222"))
        v(0.4em)
        line(length: 100%, stroke: 0.6pt + rgb("#222222"))

        v(2fr)

        // Abstract / blurb, italic and narrow like a book jacket
        if abstract != none {
            block(
                width: 75%,
                {
                    set text(
                        size: 10.5pt,
                        style: "italic",
                        fill: rgb("#333333"),
                    )
                    set par(
                        justify: true,
                        leading: 0.75em,
                        first-line-indent: 0em,
                    )
                    abstract
                },
            )
        }

        v(1fr)

        // Date at the very bottom
        text(size: 10.5pt, fill: rgb("#555555"))[#date]
    }

    // =======================================================================
    // 2. FRONT MATTER: table of contents (roman page numbers)
    // =======================================================================
    set page(numbering: "i")
    counter(page).update(1)
    pagebreak(weak: true)

    {
        set par(first-line-indent: 0em)
        text(size: 20pt, weight: "bold")[Contents]
        v(1em)
        outline(
            title: none,
            indent: auto,
            target: heading
                .where(outlined: true)
                .or(figure.where(kind: "chapter")),
        )
    }

    // =======================================================================
    // 3. MAIN MATTER: chapters and body (arabic page numbers restarted at 1)
    // =======================================================================
    set page(numbering: "1")
    counter(page).update(1)

    doc
}
