#import "i18n.typ": i18n, i18n-page-counter, i18n-translation, ref-supplement
#import "utils.typ": *

/// This stile is applied to the entire project.
#let global-style(doc) = {
  set page(paper: "a4", margin: (bottom: 2cm, rest: 2.5cm))
  set text(font: "Arial", size: 11pt)
  set par(justify: true)
  show footnote: set text(size: 0.8em)
  show: line-spacing.with(1.25em)
  show figure.where(kind: table): set figure.caption(position: top)
  doc
}

/// This style is applied to the entire document (project without title page).
#let document-style(doc) = context {
  // Setup page decorations
  let current-top-heading = state("_ght-cth", none)
  let header = context [
    #set text(size: 0.9em)
    #align(right, {
      let cur-heading = current-top-heading.at(
        query(selector(<_ght-footer>).after(here())).first().location(),
      )
      let cur-heading-body = if cur-heading != none {
        cur-heading.body
      } else {
        "Placeholder"
      }
      let render-content = {
        show: strong
        set block(spacing: 1.25em)
        rect(stroke: none, inset: 0pt, underline(cur-heading-body))
      }
      if cur-heading != none {
        render-content
      } else {
        hide(render-content)
      }
    })
    #line(length: 100%)
    #v(2em)
  ]
  let footer = context [
    #set text(size: 0.9em)
    #set par(spacing: 1em)
    #v(2em)
    #line(length: 100%) <_ght-footer>

    #document.title
    #h(1fr)
    #i18n-page-counter(
      counter(page).get().first(),
      counter(page).final().first(),
    )
  ]
  set page(header: header, header-ascent: 0cm)
  set page(footer: footer, footer-descent: 0cm)
  let target-margin = page.margin
  set page(margin: (
    ..target-margin,
    top: target-margin.top + measure(header).height,
    bottom: target-margin.bottom + measure(footer).height,
  ))
  // Default page numbering style for the whole document
  set page(numbering: "I")

  // Setup headings
  show heading.where(level: 1): set text(size: 1.6em)
  show heading.where(level: 2): set text(size: 1.4em)
  show heading.where(level: 3): set text(size: 1.25em)
  show heading.where(level: 4): set text(size: 1.1em)
  show heading.where(level: 1): it => {
    it
    current-top-heading.update(it)
  }
  show heading: mark-heading-boundaries
  show heading: set block(above: 1.5em, below: 1em)
  show heading.where(level: 1): set block(inset: (top: 0.25em))
  // Default heading style for the whole document
  set heading(numbering: none)
  show heading: set align(right)

  // Typography
  set par(spacing: 2em)

  // Hierarchical numbering and localized supplements
  set figure(numbering: (n, ..) => hierarchical-numbering(n))
  set math.equation(numbering: (n, ..) => hierarchical-numbering(
    n,
    fmt-style: "(1.1)",
  ))
  show ref.where(form: "normal"): set ref(supplement: ref-supplement)
  show ref: it => {
    if it.element != none {
      let el = it.element
      let el-loc = el.location()
      let supp = if type(it.supplement) == function {
        (it.supplement)(el)
      } else if it.supplement == auto {
        ref-supplement(el)
      } else {
        it.supplement
      }
      if el.func() == figure {
        let fig-num = counter(figure.where(kind: el.kind)).at(el-loc).first()
        let num-str = hierarchical-numbering(fig-num, loc: el-loc)
        link(el-loc, [#supp~#num-str])
      } else if el.func() == math.equation {
        let eq-num = counter(math.equation).at(el-loc).first()
        let num-str = hierarchical-numbering(
          eq-num,
          loc: el-loc,
          fmt-style: "(1.1)",
        )
        link(el-loc, [#supp~#num-str])
      } else {
        it
      }
    } else {
      it
    }
  }

  doc
}

/// This style is applied to the chapter content of the document, everything that the template wraps so to say.
#let content-style(doc) = {
  // Arabic for text sections = content
  set page(numbering: "1")
  counter(page).update(1)

  // Reset figure and math counters per chapter
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    counter(math.equation).update(0)
    colbreak(weak: true)
    it
  }

  // Setup headers
  set heading(numbering: "1.1")
  show heading: set align(left)
  let current-top-heading = state("_ght-cth", none)
  set heading(numbering: (..args) => with-inside-heading(is-inside-heading => {
    show: if is-inside-heading {
      box.with(width: 1.5cm)
    } else {
      it => it
    }

    numbering("1.1", ..args)
  }))

  doc
}

/// This style is applied to the declaration page.
#let declaration-style(doc) = {
  set heading(outlined: false)
  show heading: set align(left)
  show heading.where(level: 1): set text(size: 0.5em)
  set page(header: none, footer: none)
  doc
}

/// This style is applied to the acknowledgement section.
#let acknowledgement-style(doc) = {
  set heading(outlined: false)

  doc
}

/// This style is applied to the abstract section (both german and english).
#let abstract-style(doc) = {
  // Arabic for text sections = abstract
  set page(numbering: "1")
  set heading(offset: 1, outlined: false)

  doc
}

/// This style is applied to the preamble section.
#let preamble-style(doc) = {
  // Arabic for text sections = abstract
  set page(numbering: "1")

  set heading(offset: 1, outlined: false)

  doc
}


#let _outline-entry(entry, logical-level: none) = {
  if logical-level == none {
    if entry.element.func() == heading {
      logical-level = entry.element.level
    } else {
      logical-level = 2
    }
  }
  let element-location = entry.element.location()
  if entry.element.func() == heading and entry.element.level == 1 {
    element-location = nearest-top-level-heading(element-location)
  }

  let prefix = if entry.element.func() == figure {
    let el = entry.element
    let el-loc = el.location()
    let fig-num = counter(figure.where(kind: el.kind)).at(el-loc).first()
    let num-str = hierarchical-numbering(fig-num, loc: el-loc)
    [#el.supplement #num-str]
  } else {
    entry.prefix()
  }

  let pg-numbering = if element-location.page-numbering() != none {
    element-location.page-numbering()
  } else {
    "1"
  }

  link(
    element-location,
    entry.indented(
      prefix,
      {
        entry.body()
        box(entry.fill, width: 1fr, inset: (x: 1mm))
        numbering(
          pg-numbering,
          ..counter(page).at(element-location),
        )
      },
    ),
  )
}


/// This style is applied to the chapter outline.
#let chapter-outline-style(doc) = {
  set outline(indent: auto)

  show outline.entry: _outline-entry

  doc
}

#let abbreviations-style(doc) = {
  doc
}

/// This style is applied to the figure outline.
#let figure-outline-style(doc) = {
  show outline.entry: _outline-entry
  doc
}

#let table-outline-style(doc) = {
  show outline.entry: _outline-entry
  doc
}

/// This style is applied to the bibliography section.
#let bibliography-style(doc) = context {
  // Arabic for literature section
  set page(numbering: "1")

  // Configure actual bibliography style
  set bibliography(style: "apa", title: i18n-translation(
    "bibliography",
    text.lang,
  ))

  doc
}

/// This style is applied to the appendix section.
#let appendix-style(doc) = {
  counter(figure.where(kind: image)).update(0)
  counter(figure.where(kind: table)).update(0)
  counter(figure.where(kind: raw)).update(0)
  counter(math.equation).update(0)

  set heading(offset: 1)

  // Arabic for text sections = appendix
  set page(numbering: "1")

  doc
}
