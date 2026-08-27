#import "@preview/simple-plot:1.1.0": area-between, fill-area, plot
#import "@preview/fletcher:0.5.8": diagram, edge, node
#import "@preview/euler-math:0.1.0": *
// Choose the language
#set text(lang: "en")
#set enum(
  indent: 12pt,
  numbering: "A.",
)

#let pmod-spacing = state("pmod-spacing", 2em / 9)

#show math.equation.where(block: true): it => {
  pmod-spacing.update(1em)
  it
}
#show math.equation.where(block: false): it => {
  pmod-spacing.update(2em / 9)
  it
}

#let pmod(m) = context h(pmod-spacing.get()) + $(mod med #m)$

#let iff = sym.arrow.l.r.double.long
