// Thanks for using this thesis template!
// Please submit any issues or feature requests to https://github.com/TimerErTim/hagenberg-thesis-typst/issues
// Refer to the documentation at https://github.com/TimerErTim/hagenberg-thesis-typst/tree/main/easy-hgb-thesis-manual.pdf for more information.

#import "@preview/easy-hgb-thesis:0.2.2": (
  LICENSE_TYPES, WORK_TYPES, copyright-page, full-thesis, titlepage,
)

// We configure the document data here, this will be in the title page and others
#set document(
  title: "Identification of Modifications in Open Searches",
  // Or single string: "Author Name"
  author: ("Sebastian Grösswang"),
  // Keep Short and Simple, no abstract
  description: "Thesis Description",
  // Optional, can be deleted.
  keywords: ("Keyword 1 ", "Keyword 2"),
)
// If German, set to "de" instead of "en"
#set text(lang: "en")

#import "abbrev.typ": abbr
// Wrap the document in the full-thesis template
#show: full-thesis.with(
  titlepage: {
    titlepage(
      "Bioinformatics and Computational Biology",
      "Prof. Viktoria Dorfer",
      work-type: WORK_TYPES.bachelor-thesis,
    )
    // Optional copyright page:
    // pagebreak()
    // copyright-page(LICENSE_TYPES.cc-by-nc-nd)
  },
  acknowledgement: include "chapters/general/acknowledgement.typ", // Can be deleted if not required
  kurzfassung: include "chapters/general/kurzfassung.typ",
  abstract: include "chapters/general/abstract.typ",
  appendix: include "chapters/general/appendix.typ", // Can be deleted if not required
  abbreviations: abbr, // Can be deleted if you don't need abbreviations
  bibl: bibliography("bib.yaml"), // Can be replaced with a BibLaTex file,

  // Demonstration of how to apply custom styles to sections, can be deleted if not required.
  content-style: it => {
    show table.cell.where(y: 0): strong
    it
  },
  abbreviations-style: it => {
    set table(fill: (x, y) => if y == 0 { gray })
    it
  },
)

// Include your chapters here, content can also be written here directly but
// may become confusing and hard to maintain with very long contents
#include "chapters/1_introduction.typ"
#include "chapters/2_fundamentals.typ"
#include "chapters/3_concept.typ"
#include "chapters/4_implementation.typ"
//#include "chapters/methodology.typ"
#include "chapters/5_conclusion.typ"
