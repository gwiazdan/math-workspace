#import "/templates/preamble.typ": *

// 1. COVER PAGE AND CONFIGURATION
#show: euler-math.with(
  title: [Chapter 4: Relations, Functions, Cardinality],
  subtitle: [Book of Proof -- Richard Hammack],
  author: [Norbert Gwiazda],
)

#pagebreak()

= Relations

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
