#import "/templates/preamble.typ": *

// 1. COVER PAGE AND CONFIGURATION
#show: euler-math.with(
  title: [Chapter 4: Relations, Functions, Cardinality],
  subtitle: [Book of Proof -- Richard Hammack],
  author: [Norbert Gwiazda],
)

#pagebreak()

= Relations

== Relations
#exercise[Let $A={0,1,2,3,4,5}$. Write out the relation $R$ that expresses $>$ on $A$. Then illustrate it with a diagram.]

#solution[
  $
    R={ & (5,4),(5,3),(5,2),(5,1),(5,0),(4,3),
          (4,2), \
        & (4,1),
          (4,0),(3,2),(3,1),(3,0),(2,1),(2,0),(1,0)}
  $
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^0 & limits(bullet)^1 & limits(bullet)^2 \
      limits(bullet)^3 & limits(bullet)^4 & limits(bullet)^5$,

      // --- Krawędzie dla 1 -> 0 ---
      edge((1, 0), (0, 0), "-|>"),

      // --- Krawędzie dla 2 -> {1, 0} ---
      edge((2, 0), (1, 0), "-|>"),
      edge((2, 0), (0, 0), "-|>", bend: -30deg),

      // --- Krawędzie dla 3 -> {2, 1, 0} ---
      edge((0, 1), (0, 0), "-|>"),
      edge((0, 1), (1, 0), "-|>"),
      edge((0, 1), (2, 0), "-|>"),

      // --- Krawędzie dla 4 -> {3, 2, 1, 0} ---
      edge((1, 1), (0, 1), "-|>"),
      edge((1, 1), (0, 0), "-|>"),
      edge((1, 1), (1, 0), "-|>"),
      edge((1, 1), (2, 0), "-|>"),

      // --- Krawędzie dla 5 -> {4, 3, 2, 1, 0} ---
      edge((2, 1), (1, 1), "-|>"),
      edge((2, 1), (0, 1), "-|>", bend: 30deg),
      edge((2, 1), (2, 0), "-|>"),
      edge((2, 1), (1, 0), "-|>"),
      edge((2, 1), (0, 0), "-|>"),
    )
  ]
]

#exercise[Let $A={1,2,3,4,5,6}$. Write out the relation $R$ that expresses $|$ (divides) on $A$. Then illustrate it with a diagram.]

#solution[
  $
    R = {(6,6),(5,5),(4,4),(3,6),(3,3),(2,6),(2, 4), (2,2),(1,1), (1,2),(1,3),(1,4),(1,5), (1,6)}
  $


  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^1 & limits(bullet)^2 & limits(bullet)^3 \
      limits(bullet)^4 & limits(bullet)^5 & limits(bullet)^6$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((0, 1), (0, 1), "-|>", bend: -120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((1, 1), (1, 1), "-|>", bend: -120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((2, 1), (2, 1), "-|>", bend: -120deg),

      edge((0, 0), (1, 0), "-|>"),
      edge((0, 0), (0, 1), "-|>"),
      edge((0, 0), (1, 1), "-|>"),
      edge((0, 0), (2, 0), "-|>", bend: 30deg),
      edge((0, 0), (2, 1), "-|>"),

      edge((1, 0), (0, 1), "-|>"),
      edge((1, 0), (2, 1), "-|>"),

      edge((2, 0), (2, 1), "-|>"),
    )
  ]
]

#exercise[Let $A={0,1,2,3,4,5}$. Write out the relation $R$ that expresses $>=$ on $A$. Then illustrate it with a diagram]

#solution[
  $
    R={ & (5,5), (4,4), (3,3), (2,2), (1,1), (0,0) \
        & (5,4),(5,3),(5,2),(5,1),(5,0),(4,3),
          (4,2), \
        & (4,1),
          (4,0),(3,2),(3,1),(3,0),(2,1),(2,0),(1,0)}
  $


  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^0 & limits(bullet)^1 & limits(bullet)^2 \
      limits(bullet)^3 & limits(bullet)^4 & limits(bullet)^5$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((0, 1), (0, 1), "-|>", bend: -120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((1, 1), (1, 1), "-|>", bend: -120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((2, 1), (2, 1), "-|>", bend: -120deg),
      // --- Krawędzie dla 1 -> 0 ---
      edge((1, 0), (0, 0), "-|>"),

      // --- Krawędzie dla 2 -> {1, 0} ---
      edge((2, 0), (1, 0), "-|>"),
      edge((2, 0), (0, 0), "-|>", bend: -30deg),

      // --- Krawędzie dla 3 -> {2, 1, 0} ---
      edge((0, 1), (0, 0), "-|>"),
      edge((0, 1), (1, 0), "-|>"),
      edge((0, 1), (2, 0), "-|>"),

      // --- Krawędzie dla 4 -> {3, 2, 1, 0} ---
      edge((1, 1), (0, 1), "-|>"),
      edge((1, 1), (0, 0), "-|>"),
      edge((1, 1), (1, 0), "-|>"),
      edge((1, 1), (2, 0), "-|>"),

      // --- Krawędzie dla 5 -> {4, 3, 2, 1, 0} ---
      edge((2, 1), (1, 1), "-|>"),
      edge((2, 1), (0, 1), "-|>", bend: 30deg),
      edge((2, 1), (2, 0), "-|>"),
      edge((2, 1), (1, 0), "-|>"),
      edge((2, 1), (0, 0), "-|>"),
    )
  ]
]

#exercise[Here is a diagram for a relation $R$ on a set $A$. Write the sets $A$ and $R$.

  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^0 & limits(bullet)^1 & limits(bullet)^2 \
      limits(bullet)^3 & limits(bullet)^4 & limits(bullet)^5$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((0, 1), (0, 1), "-|>", bend: -120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((1, 1), (1, 1), "-|>", bend: -120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((2, 1), (2, 1), "-|>", bend: -120deg),

      edge((0, 0), (1, 1), "-|>", bend: 30deg),
      edge((1, 1), (0, 0), "-|>", bend: 30deg),

      edge((0, 1), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 1), "-|>", bend: 30deg),

      edge((2, 0), (1, 1), "-|>", bend: 30deg),
      edge((1, 1), (2, 0), "-|>", bend: 30deg),

      edge((2, 1), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (2, 1), "-|>", bend: 30deg),
    )
  ]
]

#solution[
  $
    A={ & 0,1,2,3,4,5} \
  $
  $
    R={ & (0,0),(1,1),(2,2),(3,3),(4,4),(5,5) \
        & (0,4),(4,0),(1,3),(3,1),(1,5),(5,1),(2,4),(4,2)}
  $
]

#exercise[Here is a diagram for a relation $R$ on a set $A$. Write the sets $A$ and $R$.

  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^0 & limits(bullet)^1 & limits(bullet)^2 \
      limits(bullet)^3 & limits(bullet)^4 & limits(bullet)^5$,

      edge((0, 1), (0, 1), "-|>", bend: -120deg),

      edge((1, 0), (2, 0), "-|>"),
      edge((2, 0), (2, 1), "-|>"),
      edge((2, 1), (0, 0), "-|>"),
      edge((1, 1), (2, 0), "-|>"),
      edge((1, 1), (0, 1), "-|>"),
    )
  ]
]

#solution[
  $
    A = {0,1,2,3,4,5}
  $
  $
    R = { (1,2), (2,5), (3,3), (4,2), (4,3), (5,0)}
  $
]

#exercise[
  Congruence modulo $5$ is a relation on the set $A = ZZ$. In this relation $x R y$ means $x equiv y pmod(5)$. Write out the set $R$ in set-builder notation.
]

#solution[
  $
    R = {(x,y) in ZZ times ZZ: 5 divides (x - y)}
  $
]

#exercise[Write the relation $<$ on the set $A = ZZ$ as a subset $R$ of $ZZ times ZZ$. This is an infinite set, so you have to use set-builder notation.]

#solution[
  $
    R = {(x,y) in ZZ times ZZ: y-x in NN^+}
  $
]

#exercise[Let $A = {1,2,3,4,5,6}$. Observe that $emptyset subset.eq A times A$, so $R = emptyset$ is a relation on $A$. Draw a diagram for this relation.]

#solution[

  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^1 & limits(bullet)^2 & limits(bullet)^3 \
      limits(bullet)^4 & limits(bullet)^5 & limits(bullet)^6$,
    )
  ]
]

#exercise[Let $A={1,2,3,4,5,6}$. How many different relations are there on the set $A$?]

#solution[
  $2^(|A|^2)=2^36$, since $A^2$ is the number of all tuples $(x,y)$ and $2^k$ is a cardinality of powerset of set with cardinality $k$.
]

#exercise[Consider the subset $R=(RR times RR) - {(x,x):x in RR} subset.eq RR times RR$. What familiar relation on $RR$ is this? Explain.]

#solution[
  This is the relation of inequality, because it excludes every tuple with the same two real numbers.
]

#exercise[Given a finite set $A$, how many different relations are there on $A$?]

#solution[As I stated in exercise 1.9, there are $2^(|A|^2)$ different relations on the set $A$.]

#block(breakable: false)[

  In the following excercises, subsets $R$ of $RR^2 = RR times RR$ or $ZZ^2 = ZZ times ZZ$ are indicated by gray shading. In each case, $R$ is a familiar relation on $RR$ or $ZZ$. State it.
  #exercise[
    #align(center)[
      #plot(
        xmin: -2,
        xmax: 2,
        ymin: -2,
        ymax: 2,
        width: 4,
        height: 4,
        axis-x-pos: "center",
        axis-y-pos: 0,
        fill-area(x => x, baseline: -2, domain: (-2, 2), color: rgb("#718096").lighten(40%)),
        (fn: x => x, domain: (-2, 2), stroke: 1.2pt + rgb("#2d3748")),
      )
    ]
  ]
]
#solution[
  This relation is $x>=y$.
]

#block(breakable: false)[
  #exercise[
    #align(center)[
      #plot(
        xmin: -2,
        xmax: 2,
        ymin: -2,
        ymax: 2,
        width: 4,
        height: 4,
        axis-x-pos: "center",
        axis-y-pos: 0,

        fill-area(x => x, baseline: -2, domain: (-2, 2), color: rgb("#718096").lighten(40%)),

        area-between(x => 2, x => x, domain: (-2, 2), color: rgb("#718096").lighten(40%)),

        (fn: x => x, domain: (-2, 2), stroke: 1.5pt + white),
      )
    ]
  ]
]
#solution[
  This relation is $x!=y$.
]

#block(breakable: false)[
  #exercise[
    #align(center)[
      #box(width: 3.5cm, height: 3.5cm)[
        #grid(
          columns: 9,
          rows: 9,
          gutter: 2.5pt,
          align: center + horizon,
          ..range(4, -5, step: -1)
            .map(y => range(-4, 5).map(x => {
              // Zamalowane stricte nad przekątną (x < y)
              let filled = x < y
              box(
                width: 5pt,
                height: 5pt,
                radius: 2.5pt,
                fill: if filled { rgb("#ececec") } else { none },
                stroke: 0.4pt + if filled { rgb("#ededed") } else { gray },
              )
            }))
            .flatten()
        )
      ]
    ]
  ]
]
#solution[
  This relation is $x<y$.
]

#block(breakable: false)[
  #exercise[
    #align(center)[
      #box(width: 3.5cm, height: 3.5cm)[
        #grid(
          columns: 9,
          rows: 9,
          gutter: 2.5pt,
          align: center + horizon,
          ..range(4, -5, step: -1)
            .map(y => range(-4, 5).map(x => {
              // Różnica x - y jest podzielna przez 3
              let filled = calc.rem(x - y, 3) == 0
              box(
                width: 5pt,
                height: 5pt,
                radius: 2.5pt,
                fill: if filled { rgb("#ececec") } else { none },
                stroke: 0.4pt + if filled { rgb("#ededed") } else { gray },
              )
            }))
            .flatten()
        )
      ]
    ]
  ]
]
#solution[This relation is $x equiv y pmod(3)$.]
