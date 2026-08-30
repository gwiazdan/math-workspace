#import "/templates/preamble.typ": *

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

== Properties of Relations

#exercise[Consider the relation $R={(a,a),(b,b),(c,c),(d,d),(a,b),(b,a)$ on set $A={a,b,c,d}$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.]

#solution[
  1. $R$ is reflexive, since every element of set $A$ is in relation with itself: $(a,a),(b,b),(c,c),(d,d)$.
  2. $R$ is symmetric, since for every $(a,b) in R$, $(b,a) in R$ as well.
    + $(a,a),(b,b),(c,c),(d,d)$ are symmetric to itself.
    + $(a,b)$ is symmetric to $(b,a)$.
  3. $R$ is transitive, since for every two tuples such as $(a,b) in R$ and $(b,c) in R$, it is implied that $(a,c) in R$ as well.
    + There are only three such pairs of tuples: $(a,a), (a,b)$; $(b,b), (b,a)$; $(a,b), (b,a)$ and $(b,a), (a,b)$. You can see that the implication is true for this relation and hence, the relation is transitive.
]

#exercise[Consider the relation $R={(a,b),(a,c),(c,c),(b,b),(c,b),(b,c)$ on set $A={a,b,c}$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.]

#solution[
  1. Not reflexive, since $(a,a) in.not R$.
  2. Not symmetric, since $(a,b) in R$ but $(b,a) in.not R$.
  3. Transitive, since for every two pairs such as $(x,y) in R$ and $(y,z) in R$, there is a third pair $(x,z) in R$.
]

#exercise[Let $A={a,b,c,d}$. Suppose $R$ is the relation$ R = { & (a,a),(b,b),(c,c),(d,d),(a,b),(b,a),(a,c),(c,a) \
        & (a,d),(d,a),(b,c),(c,b),(b,d),(d,b),(c,d),(d,c)} $

  Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.
]

#solution[
  1. Reflexive, since for every element $x$ in $A$, $(x,x) in R$.
  2. Symmetric, since if $(x,y) in R$, then $(y,x) in R$.
  3. Transitive, since for every two pairs such as $(x,y) in R$ and $(y,z) in R$, there is a third pair $(x,z) in R$.

  Note that $R = A times A$, meaning that this relation is universal, and hence each of this properties does hold.
]

#exercise[Consider the relation $R={(0,0),(sqrt(2),0),(0,sqrt(2)),(sqrt(2),sqrt(2))}$ on $RR$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.]

#solution[
  1. Not reflexive, since $A=RR$, while for example $(1,1) in.not R$.
  2. Symmetric, since $(0,0)$ and $(sqrt(2),sqrt(2))$ are symmetric to itself and $(0,sqrt(2))$ is symmetric to $(sqrt(2),0)$.

  3. Transitive. Observe that $R={0,sqrt(2)} times {0,sqrt(2)}$. If so, then the relation is universal on the subset ${0,sqrt(2)}$, meaning that for all $x,y,z in {0,sqrt(2)}$, $(x,y) in R and (y,z) in R => (x,z) in R$.
]

#exercise[Consider the relation $R={(x,x): x in ZZ}$ on $ZZ$. Is this reflexive? Symmetric? Transitive? If a property does not hold, say why. What familiar relation is this?]
#solution[
  1. *Reflexive:* True by definition of the $R$, as for every $x in A, (x,x) in R$.
  2. *Symmetric:* Every pair of $R$ is $(x,x)$, where $x in A$. Therefore, if $(x,y) in R$, then $x=y$ and $(y,x) in R$ as well.
  3. *Transitive:* Similarly, since every pair of $R$ is $(x,x)$, then $(x,y) in R => x=y$ and $(y,z) in R => y=z$, therefore, $x=z$ and $(x,z) in R$.


  This familiar relation is equality.
]

#exercise[There are 16 possible different relations $R$ on the set $A={a,b}$. (A picture for each one will suffice, but don't forget to label the nodes.) Which ones are reflexive? Symmetric? Transitive?]

#solution[
  1. $R=emptyset$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Symmetric*, since $(x,y) in.not R$ and therefore $(x,y) in R => (y,x) in R$ is vacuously true.
  - *Transitive*, since $(x,y) in.not R$ and hence, $(x,y)in R and (y,z) in R => (x,z) in R$ is vacuously true.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,
    )
  ]
  2. $R={(a,b)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Not symmetric*, since $(a,b) in R$, but $(b,a in.not R$.
  - *Transitive*, since $(a,b) in R$, but $(b,z) in.not R$, for some $z in A$, then implication $(x,y) in R and (y,z) in R => (x,z) in R$ is vacously true.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>"),
    )
  ]
  3. $R={(b,a)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Not symmetric*, since $(b,a) in R$, but $a,b in.not R$.
  - *Transitive*, since $(b,a) in R$, but $(a,z) in.not R$, for some $z in A$, then implication $(x,y) in R and (y,z) in R => (x,z) in R$ is vacously true.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (0, 0), "-|>"),
    )
  ]
  4. $R={(a,a)}$
  - *Not reflexive*, since $(b,b) in.not R$.
  - *Symmetric*, since only $(a,a) in R$ and it is symmetric to itself.
  - *Transitive*, since only $(a,a) in R$, then $(x,y) in R => x=a and y=a$ and $(y,z) in R => y=a and z=a$, therefore $(x,z) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
    )
  ]
  5. $R={(b,b)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Symmetric*, since only $(b,b) in R$ and it is symmetric to itself.
  - *Transitive*, since only $(b,b) in R$, then $(x,y) in R => x=b and y=b$ and $(y,z) in R => y=b and z=b$, hence $(x,z) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  6. $R={(a,b),(b,a)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Symmetric*, since $(a,b) in R => (b,a) in R$
  - *Not transitive*, since $(a,b) in R$ and $(b,a) in R$, but $(a,a) in.not R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (1, 0), "-|>", bend: 30deg),
    )
  ]
  7. $R={(a,a),(b,b)}$
  - *Reflexive*, since $(a,a) in R$ and $(b,b) in R$.
  - *Symmetric*, since $(a,a)$ and $(b,b)$ are symmetric to itself.
  - *Transitive*, since if $x=a$, then $(x,y) in R => y=a$ and $(y,z) in R => z=a$, thus $(x,z) in R$. Analogously for $x=b$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
    )
  ]
  8. $R={(a,a), (a,b)}$
  - *Not reflexive*, since $(b,b) in.not R$.
  - *Not Symmetric*, since $(a,b) in R$, but $(b,a) in.not R$
  - *Transitive*, since $(a,a) in R and (a,a) in R => (a,a) in R$ and $(a,a) in R and (a,b) in R => (a,b) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
    )
  ]
  9. $R={(a,a), (b,a)}$
  - *Not reflexive*, since $(b,b) in.not R$.
  - *Not Symmetric*, since $(b,a) in R$, but $(a,b) in.not R$
  - *Transitive*, since $(a,a) in R and (a,a) in R => (a,a) in R$ and $(b,a) in R and (a,b) in R => (b,a) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
    )
  ]
  10. $R={(b,b), (a,b)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Not Symmetric*, since $(a,b) in R$, but $(b,a) in.not R$
  - *Transitive*, since $(b,b) in R and (b,b) in R => (b,b) in R$ and $(a,b) in R and (b,b) in R => (a,b) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  11. $R={(b,b),(b,a)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Not Symmetric*, since $(b,a) in R$, but $(a,b) in.not R$
  - *Transitive*, since $(b,b) in R and (b,b) in R => (b,b) in R$ and $(b,b) in R and (b,a) in R => (b,a) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  12. $R={(a,a),(b,b),(a,b)}$
  - *Reflexive*, since $(a,a) in R and (b,b) in R$.
  - *Not Symmetric*, since $(a,b) in R$, but $(b,a) in.not R$
  - *Transitive*, since $(b,b) in R and (b,b) in R => (b,b) in R$ and $(a,b) in R and (b,b) in R => (a,b) in R$ and $(a,a) in R and (a,a) in R => (a,a) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  13. $R={(a,a),(b,b),(b,a)}$
  - *Reflexive*, since $(a,a) in R and (b,b) in R$.
  - *Not Symmetric*, since $(b,a) in R$, but $(a,b) in.not R$
  - *Transitive*, since $(b,b) in R and (b,b) in R => (b,b) in R$ and $(b,b) in R and (b,a) in R => (b,a) in R$ and $(a,a) in R and (a,a) in R => (a,a) in R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  14. $R={(a,a),(a,b),(b,a)}$
  - *Not reflexive*, since $(b,b) in.not R$.
  - *Symmetric*, since $(a,b) in R => (b,a) in R$.
  - *Not transitive*, since $(b,a) in R and (a,b) in R$  , but $(b,b) in.not R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
    )
  ]
  15. $R={(b,b),(a,b),(b,a)}$
  - *Not reflexive*, since $(a,a) in.not R$.
  - *Symmetric*, since $(a,b) in R => (b,a) in R$.
  - *Not transitive*, since $(a,b) in R and (b,a) in R$  , but $(a,a) in.not R$.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
  16. $R={(a,a),(b,b),(a,b),(b,a)}$
  - *Reflexive*, since $(a,a) in R and (b,b) in R$.
  - *Symmetric*, since $(a,b) in R => (b,a) in R$.
  - *Transitive*, since $(x,y) in R and (y,z) in R => (x,z) in R$. Moreover, relation is universal and is transitive by definition.
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
]

#exercise[Define a relation on $ZZ$ as $x R y$ if $|x-y|<1$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why. What familiar relation is this?]

#solution[
  We shall observe that relation $|x-y|<1$ on $ZZ$ is equivalent to equality relation. To prove this, we shall observe that two consecutive integers $x$ and $x+1$ are not in this relation ($|x+1-x|<1$ is false). If two integers differs by $a in ZZ$, then they are in relation only if $|x+a-x|<1$, hence $|a|<1$. Now, only $a=0$ satisfies this equation, leading to the conclusion that two integers are in relation if they are equal to each other.

  1. *$R$ is reflexive:* Since $|x-x|=0<1$. True.
  2. *$R$ is symmetric:* If $|x-y|<1$, then $|y-x|=|-(x-y)|=|x-y|<1$.
  3. $R$ is transitive, since if $x R y$ and $y R z$, then $x=y and y=z => x=z$, thus $x R z$.
]

#exercise[
  Define a relation on $ZZ$ by declaring $x R y$ if and only if $x$ and $y$ have the same parity. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why. What familiar relation is this?
]

#solution[
  Two integers $x$ and $y$ have same parity if $x equiv y pmod(2)$. Therefore, $R$ is equivalence relation.

  Since we do not want to take anything as granted, we shall remember that if $x equiv y pmod(2)$, then $2 divides (x-y)$.

  1. $R$ is reflexive, since $2 divides (x-x)$ is true (2 divides 0).
  2. $R$ is symmetric, since if $2 divides (x-y)$, then $2 divides -(y-x)$ and $2 divides (y-x)$.
  3. $R$ is transitive, since if $2 divides (x-y)$ and $2 divides (y-z)$, then $x-y = 2k$ and $y-z = 2q$ for some $k,q in ZZ$. Hence, $x-(2q + z) = 2k <=> x-z = 2(k+q) => 2 divides (x-z)$.
]

#exercise[Suppose $A != emptyset$. Since $emptyset subset.eq A times A$, the $R = emptyset$ is a relation on $A$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.]

#solution[
  1. $R$ is not reflexive and moreover irreflexive, since $forall_((x,x): x in A) (x,x) in.not R$.
  2. $R$ is symmetric by vacuous truth. There is no $(x,y) in R$, hence implication is true.
  3. $R$ is transitive by vacuous truth. There is no $(x,y) in R and (y,z) in R$ and thus, the implication is true.
]

#exercise[Let $A={a,b,c,d}$ and $R={(a,a),(b,b),(c,c),(d,d)}$. Is $R$ reflexive? Symmetric? Transitive? If a property does not hold, say why.]

#solution[
  1. $R$ is reflexive, since $forall_(x in A) (x,x) in R$.
  2. $R$ is symmetric, since if $(x,y) in R$, then $x=y$ and thus $(y,x) in R$.
  3. $R$ is transitive, since if $(x,y) in R$ and $(y,z) in R$, then $x=y and y=z$. Therefore, $x=z$ and $(x,z) in R$.
]

#exercise[Prove that the relation $divides$ (divides) on the set $ZZ$ is reflexive and transitive.]

#solution[
  Relation is reflexive, since $x = x dot 1$ implies that $x divides x$.

  Let $x divides y$ and $y divides z$ for some $x,y,z in ZZ$. If so, then $y=x k$ and $z = y l$ for some $k,l in ZZ$. Therefore, $z = (x k)l <=> z = x(k l) => x divides z$. Hence, $divides$ is transitive.

  q.e.d
]

#exercise[Consider the relation $R={(x,y) in RR times RR: x-y in ZZ}$ on $RR$. Prove that his relation is reflexive, symmetric and transitive.]

#solution[
  1. We shall begin with showing that this relation is reflexive. Since $x-x = 0 in ZZ$ and ${(x,x): x in RR} subset {(x,y) in RR times RR}$, then ${(x,x): x in RR} subset R$ and thus for all $x in A$, $(x,x) in R$.

  2. Next, we shall observe that if $(x,y) in R$, then $x,y in RR$ and $x-y in ZZ$. If $x-y in ZZ$, then $-(y-x) in ZZ$ and $y-x in ZZ$, leading to the conclusion that $(y,x) in R$ as well. Hence, relation is symmetric.

  3. Finally, suppose that $(x,y) in R and (y,z) in R$. If so, then $x,y,z in RR$ and $x-y in ZZ$ and $y-z in ZZ$. Therefore, we can establish that $x-y=k$ and $y-z=l$ for some $k,l in ZZ$. Now, $y=x-k$ and $(x-k)-z = l <=> x-z = k+l => x-z in ZZ$ and thus, $(x,z) in R$. Relation is transitive.

  q.e.d
]

#exercise[Suppose $R$ is a symmetric and transitive relation on a set $A$, and there is an element $a in A$ for which $a R x$ for every $x in A$. Prove that $R$ is reflexive.]

#solution[
  If $(a,x) in R$ and $R$ is symmetric, then $(x,a) in R$ as well.
  Now, since $R$ is transitive and $(x,a) in R and (a,x) in R$, then it implies that $(x,x) in R$ for every $x in A$.

  Hence, $R$ is reflexive.

  q.e.d
]

#exercise[
  Prove or disprove: If a relation is symmetric and transitive, then it is also reflexive.
]

#solution[
  Suppose $R=emptyset$ and $A!=emptyset$. It is symmetric and transitive, as we proved in previous exercises. However, it is not reflexive. Hence, the initial statement is false.
]

#exercise[Define a relation $R$ on $ZZ$ by declaring that $x R y$ if and only if $x^2 equiv y^2 pmod(4)$. Prove that $R$ is reflexive, symmetric and transitive.]

#solution[
  We will use the fact that $x equiv y pmod(4) iff 4 divides (x-y)$.

  Firstly, we shall see that $4 divides 0$ and thus $4 divides (x^2-x^2)$. Therefore $x^2 equiv x^2 pmod(4)$ and $R$ is reflexive.

  Secondly, we shall observe that if $(x,y) in R$, then $4 divides (x^2-y^2) <=> 4 divides -(y^2-x^2) <=> 4 divides y^2-x^2$. Therefore, $(y,x) in R$. Relation is symmetric.

  Lastly, suppose that $(x,y) in R$ and $(y,z) in R$. Therefore, $4 divides (x^2-y^2) and 4 divides (y^2-z^2)$. We can use this fact to state that $x^2-y^2=4k$ and $y^2-z^2=4l$ for some $k,l in ZZ$. Now, $x^2-(4l+z^2)=4k <=> x^2-z^2=4k+4l => 4 divides (x^2-z^2)$. Therefore, $(x,z) in R$ and the relation is transitive.

  q.e.d
]

#exercise[Modyfing Exercise 1.22 slightly, define a relation $~$ on $ZZ$ as $x ~ y$ if and only if $|x-y|<=1$. Say whether $~$ is reflexive. Is it symmetric? Transitive?]

#solution[
  $R$ is reflexive, since $x-x=0$ and $|0|<=1$ for every $x in ZZ$.

  Relation $R$ is also symmetric, since if $(x,y) in R$, then $|x-y|<=1$, implying that $|y-x|<=1$ and $(y,x) in R$.

  Lastly, we shall show that $(-1,0) in R and (0,1) in R$, but $(-1,1) in.not R$. Therefore, the relation is not transitive.


  q.e.d
]

#exercise[Complete the table by finding examples of relations on $ZZ$ for the three missing combinations.

  #align(center)[
    #table(
      columns: (auto, ..range(6).map(_ => 1fr)),
      align: center + horizon,
      fill: (col, row) => if row == 0 { rgb("e5e7eb") } else if calc.even(row) { rgb("f9fafb") } else { none },
      stroke: 0.5pt + rgb("d1d5db"),

      [*Relations on $ZZ$*], [$<$],
      [$<=$], [$=$],
      [$divides$], [$divides.not$],
      [$!=$],

      [*Reflexive*], [no],
      [yes], [yes],
      [yes], [no],
      [no], [*Symmetric*],
      [no], [no],
      [yes], [no],
      [no], [yes],
      [*Transitive*], [yes],
      [yes], [yes],
      [yes], [no],
      [no],
    )
  ]
]

#solution[

  #align(center)[
    #table(
      columns: (auto, ..range(3).map(_ => 1fr)),
      align: center + horizon,
      fill: (col, row) => if row == 0 { rgb("e5e7eb") } else if calc.even(row) { rgb("f9fafb") } else { none },
      stroke: 0.5pt + rgb("d1d5db"),

      [*Relations on $ZZ$*], [$R=emptyset$],
      [$R={(x,x): x in ZZ} union {(1,2), (2,3)}$], [$~$ from ex 1.31],

      [*Reflexive*], [no],
      [yes], [yes],
      [*Symmetric*], [yes],
      [no], [yes],
      [*Transitive*], [yes],
      [no], [no],
    )
  ]
]

== Equivalence Relations

#exercise[Let $A={1,2,3,4,5,6}$, and consider the following equivalence relation on $A$: $R={(1,1),(2,2),(3,3),(4,4),(5,5),(6,6)),(2,3),(3,2),(4,5),(5,4),(4,6),(6,4),(5,6),(6,5)}$. List the equivalence classes of $R$.]

#solution[
  $
    {1}, {2,3}, {4,5,6}
  $
]

#exercise[Let $A={a,b,c,d,e}$. Suppose $R$ is an equivalence relation on $A$. Suppose $R$ has two equivalence classes. Also $a R d, b R c$ and $e R d$. Write out $R$ as set.]

#solution[
  $
    R = { & (a,a),(b,b),(c,c),(d,d),(e,e) \
          & (a,d),(d,a),(b,c),(c,b),(e,d), \
          & (d,e), (a,e), (e,a)}
  $
]

#exercise[Let $A={a,b,c,d,e}$. Suppose $R$ is an equivalecne relation on $A$. Suppose $R$ has three equivalence classes. Also $a R d$ and $b R c$. Write out $R$ as a set.]

#solution[
  $
    R = { & (a,a),(b,b),(c,c),(d,d),(e,e) \
          & (a,d), (d,a), (b,c), (c,b)
            }
  $
]

#exercise[Let $A={a,b,c,d,e}$. Suppose $R$ is an equivalence relation on $A$. Suppose also that $a R d$ and $b R c$, $e R a$ and $c R e$. How many equivalence classes does $R$ have?]

#solution[
  Equivalence classes:
  $
    {a,b,c,d,e}
  $
  Hence, there is only one equivalence class and the relation is universal.
]

#exercise[There are two different equivalence relations on the set $A={a,b}$. Describe them. Diagrams will suffice.]

#solution[
  There are only equality relation ($R={(a,a),(b,b)$}) and universal relation ($R = A times A$).

  Equality relation:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]

  Universal relation:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b$,

      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
    )
  ]
]

#exercise[There are five different equivalence relations on the set $A={a,b,c}$. Describe them all. Diagrams will suffice.]

#solution[

  1. $R = {(a,a),(b,b),(c,c)}$:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b & limits(bullet)^c$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
    )
  ]

  2. $R={(a,a),(b,b),(c,c),(a,b),(b,a)}$:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b & limits(bullet)^c$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
    )
  ]
  3. $R={(a,a),(b,b),(c,c),(a,c),(c,a)}$:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b & limits(bullet)^c$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((0, 0), (2, 0), "-|>", bend: 30deg),
      edge((2, 0), (0, 0), "-|>", bend: 30deg),
    )
  ]
  4. $R={(a,a),(b,b),(c,c),(b,c),(c,b)}$:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b & limits(bullet)^c$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((2, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (2, 0), "-|>", bend: 30deg),
    )
  ]
  5. $R={a,b,c} times {a,b,c}$:
  #align(center)[
    #diagram(
      cell-size: 15mm,
      $limits(bullet)^a & limits(bullet)^b & limits(bullet)^c$,

      edge((0, 0), (0, 0), "-|>", bend: 120deg),
      edge((1, 0), (1, 0), "-|>", bend: 120deg),
      edge((2, 0), (2, 0), "-|>", bend: 120deg),
      edge((0, 0), (1, 0), "-|>", bend: 30deg),
      edge((1, 0), (0, 0), "-|>", bend: 30deg),
      edge((0, 0), (2, 0), "-|>", bend: 50deg),
      edge((2, 0), (0, 0), "-|>", bend: 50deg),
      edge((1, 0), (2, 0), "-|>", bend: 30deg),
      edge((2, 0), (1, 0), "-|>", bend: 30deg),
    )
  ]
]

#exercise[Define a relation $R$ on $ZZ$ as $x R y$ if and only if $3x-5y$ is even. Prove $R$ is an equivalence relation. Describe its equivalence classes.]

#solution[
  $R$ is an equivalence relation, since:
  1. $R$ is reflexive: $3x-5x=-2x$, which is even. Thus:for every $x in ZZ$, $(x,x) in R$. True.
  2. $R$ is symmetric: $(x,y) in R => 2 divides 3x-5y <=> 3x-5y = 2 k$ for some $k in ZZ$. Moreover, $3y-5x=2(-k-x+y => 2 divides (3y-5x)$. Therefore, $(y,x) in R$. True.
  3. $R$ is transitive: Let $(x,y) in R and (y,z) in R$.Now, $2 divides (3x-5y) and 2 divides (3y-5z)$ implies that $3x-5y = 2k$ and $3y-5z = 2l$ for some $k,l in ZZ$. Since, $3x-3y=2(k+y)$, then $(3x-2(k+y))-5z=2l => 3x-5z=2(k+l+y) => 2 divides (3x-5z)$ and $(x,z) in R$. True.

  Equivalence classes on $R$:
  $
    [0] & = {-2n, dots,-4,-2,0,2,4, dots, 2n} "for some" n in ZZ \
    [1] & = {-2n-1, dots, -5,-3,-1,1,3,5, dots, 2n+1} "for some" n in ZZ
  $
]

#exercise[Define a relation $R$ on $ZZ$ as $x R y$ if and only if $4 divides (x+3y)$. Prove $R$ is an equivalence relation. Describe its equivalence classes.]

#solution[
  Firsly, we shall see that $R$ is reflexive, since $x+3x=4x => 4 divides (x+3x)$ and thus $(x,x) in R$ for every $x in ZZ$. Secondly, we shall observe that if $(x,y) in R$, then $4 divides (x+3y)$. Now:
  $
       x+3y & equiv 0 pmod(4) \
    3(x+3y) & equiv 0 pmod(4) \
    3x + 9y & equiv 0 pmod(4) \
     3x + y & equiv 0 pmod(4) \
  $
  Therefore, $(y,x) in R$ and $R$ is symmetric.

  Lastly, we shall observe that if $(x,y) in R$ and $(y,z) in R$, then:
  $
    x+3y = 4q & and y+3z = 4k "for some" q,k in ZZ \
    x+(4k-3z) & = 4q \
         x-3z & = 4(q-k) => (x,z) in R
  $
  Hence, $R$ is transitive as well.

  Since $R$ holds reflexive, symmetric and transitive property, then it is an equivalence relation.

  Equivalence classes:
  $
    [0] & = {-4n, dots -8, -4, 0, 4, 8, dots 4n} "for some" n in ZZ \
    [1] & = {-4n+1, dots,-3,1,5,dots, 4n+1} "for some " n in ZZ \
    [2] & = {-4n+2,dots,-6,-2,2,6,dots 4n+2} "for some" n in ZZ \
    [3] & = {-4n+3,dots,-1,3,7,dots,4n+3} "for some" n in ZZ
  $
]

#exercise[Suppose $R$ and $S$ are two equivalence relations on a set $A$. Prove that $R inter S$ is also an equivalence relation.]

#solution[
  Firstly, we shall see that if both $R$ and $S$ are equivalence relations, then both $R$ and $S$ are reflexive. Since both of them are relations on set $A$, then ${(x,x): x in A} subset.eq R$ and $(x,x): x in A} subset.eq S$. Thus, ${(x,x): x in A} subset.eq (R inter S)$ and $R inter S$ is reflexive as well.

  Moreover, since $R$ and $S$ are symmetric, then if $(x,y) in (R inter S)$, then $(x,y) in R and (x,y) in S$ and by their symmetric property, $(y,x) in R and (y,x) in S$. Therefore, if $(x,y) in (R inter S)$, then $(y,x) in (R inter S)$ as well. Hence, $R inter S$ is also symmetric.

  Lastly, we shall observe, that if $(x,y) in (R inter S) and (y,z) in (R inter S)$, then it is clear that $(x,y) in R and (y,z) in R$ as well as $(x,y) in S and (y,z) in S$. Since both $R$ and $S$ are transitive, then $(x,z) in R and (x,z) in S$, implying that $(x,z) in (R inter S)$. Therefore, $R inter S$ has also transitive property.

  Since $R inter S$ is reflexive, symmetric and transitive, then it is an equivalence relation.

  q.e.d
]

#exercise[Prove or disprove: If $R$ is an equivalence relation on an infinite set $A$, then $R$ has infinitely many equivalence classes.]

#solution[
  This statement is false. Suppose a relation $R$ on $ZZ$, such that $x R y$ if and only if $x equiv y pmod(2)$. This relation has only two equivalence classes: either two numbers are even or they are odd.
]

#exercise[Prove or disprove: If $R$ and $S$ are two equivalence relations on a set $A$, then $R union S$ is also an equivalence relation on $A$.]

#solution[
  This statement is also false. Let $A={a,b,c,d,dots}$ and suppose that $R = {(x,x): x in A} union {(a,b),(b,a)}$ and $S={(x,x): x in A} union {(b,c),(c,b)}$. $R union S$ lacks $(a,c)$ and $(c,a)$, therefore it is not transitive and not an equivalence relation.
]

#exercise[Suppose $R$ is an equivalence relation on a finite set $A$, and every equivalence class has the same cardinality $m$. Express $|R|$ in terms of $m$ and $|A|$.]

#solution[
  Every element of the set $A$ is in relation with every element of its equivalence class. Hence, $|R|=m |A|$.
]

#exercise[Suppose $R$ is a reflexive and symmetric relation on a finite set $A$. Define a relation on $S$ on $A$ by declaring $x S y$ if and only if for some $n in NN$ there are elements $x_1,x_2,dots,x_n in A$ satisfying $x R x_1, x_1 R x_2, x_2 R x_3, x_3 R x_4, dots, x_(n-1) R x_n$, and $x_n R y$. Show that $S$ is an equivalence relation and $R subset.eq S$. Prove that $S$ is the unique smallest equivalence relation on $A$ containing $R$.]

#solution[
  Firstly we shall observe that if $(x,y) in R$, then by definition of $S$, $(x,y) in S$. Therefore, $R subset.eq S$. This implies that $S$ is reflexive, since if $R$ is reflexive and $R subset.eq S$, then ${(x,x): x in A} subset.eq S$.

  Now, we shall observe that since $x S y <=> x R x_1 and x_1 R x_2 and x_2 R x_3 and dots and x_n R y$ for some $n in NN$and $R$ is symmetric, then we can invert this chain of relations showing that: $y R x_n and x_n R x_(n-1) and dots and x_3 R x_2 and x_2 R x_1 and x_1 R x <=> y S x$. Thus, $S$ is symmetric.

  Lastly, we will show that if $(x,y) in S$ and $(y,z) in S$, then $x R x_1 and x_1 R x_2 dots x_n R y$ and $y R y_1 and y_1 R y_2 and dots and y_m R z$ for some $n,m in NN$. Therefore, $(x,z) in S$ and $S$ is transitive.

  We have shown that $S$ holds all properties of equivalence class. Now, establish that $T$ is some equivalence relation on $A$, containing $R$. Now, if $(x,y) in S$, then $x T x_1 and x_1 T x_2 and dots x_n T y$ for some $n in NN$. Since $T$ is transitive, then $x T x_1 and x_1 T x_2 and dots x_n T y => x T y$, meaning that $(x,y) in T$. Hence, $S subset.eq T$, which means that $S$ is the smallest possible equivalence relation on $A$ containing $R$.
]

#exercise[Suppose $R$ is an equivalence relation on a set $A$, with four equivalence classes. How many different equivalence relations $S$ on $A$ are there for which $R subset.eq S$?]

#solution[
  If $R subset.eq S$, then only equivalence relation $S$ on $A$ with four equivalence classes is $S=R$. Moreover, $S$ can have at least four equivalence classes.

  To ensure that $R subset.eq S$, every relation $S$ other than $R$, will be a concatenation of two or more equivalence classes of $R$. Now, we will count all the relations $S$ combinatorically:

  We shall start by counting relations $S$ with three equivalence classes. Those are achieved by concating two equivalence clasess. There are $binom(4, 2)$ ways of doing it.

  Then, we shall proceed with counting relation $S$ with two equivalence classes. Those are achieved either by concating three equivalence classes into one or by two concatenations of different pairs of equivalence classes. There are $binom(4, 3) + binom(4, 2)/2$ ways of doing it.

  Lastly, there is only one universal relation $S$ with one equivalence class.

  Hence, there are $1+6+4+3+1=15$ possible relations $S$.
]

#exercise[Show that the relation $eq.dot$ on $F={m/n: m,n in ZZ, n!=0}$ defined such if $a/b eq.dot c/d$, then $a d = b c$ is transitive.]

#solution[Let $a/b eq.dot c/d$ and $c/d eq.dot e/f$ for some $a,b,c,d,e,f in ZZ$. Therefore, $a d = b c$ and $c f = e d$. Now:
  $
        c f & = e d quad | dot a \
    (a f) c & = (a d) e \
    (a f) c & = (b c) e "since" a d = b c \
    (a f) c & = (b e) c
  $
  Now, if $c!=0$, then $a f = b e$ and $a/b eq.dot e/f$. Otherwise if $c=0$, then $a d = 0$ and $e d = 0$. Since, $d!=0$, then $a=e=0$. If so, then $a f = 0 = b e$ and $a/b eq.dot e/f$.


  Hence, $eq.dot$ is transitive.

  q.e.d
]

== Equivalence Classes and Partitions

#exercise[List all the partitions of the set $A={a,b}$. Compare your answer to Exercise 1.37.]

#solution[
  Either ${{a},{b}}$ or ${{a,b}}$. The former is equality relation and the latter - universal relation.
]

#exercise[List all partitions of the set $A={a,b,c}$. Compare your answer to the answer to Exercise 1.38.]

#solution[
  All possible partitions:
  $
    & {{a},{b},{c}} \
    & {{a,b},{c}} \
    & {{a},{b,c}} \
    & {{a,c},{b}} \
    & {{a,b,c}}
  $
  There are five possible partitions, obtained by five possible equivalence relations on $A$, shown in Ex. 1.38.
]

#exercise[Describe the partition of $ZZ$ resulting from the equivalence relation $equiv pmod(4)$.]

#solution[
  Partition resulting from the equivalence relation $equiv pmod(4)$:
  $
    {{4x: x in ZZ}, {4x+1: x in ZZ}, {4x+2: x in ZZ}, {4x+3: x in ZZ}}
  $
]

#exercise[Suppose $P$ is a partition of set $A$. Define a relation $R$ on $A$ by declaring $x R y$ if and only if $x,y in X$ for some $X in P$. Prove $R$ is an equivalence relation on $A$. Then prove that $P$ is the set of equivalence classes of $R$.]

#solution[
  Firstly, we shall show that if $x in X$, then $x R x$. Thus, $R$ is reflexive. Next, let $(x,y) in R$ if so, then $x,y in X$ which implies that $(y,x) in R$. Hence, $R$ is symmetric. Lastly, we shall observe that if $(x,y) in R and (y,z) in R$, then $x,y in X$ and $y,z in Y$. However, since block of partitions are disjoint, therefore $X=Y$. This means that $x,z in X$ and $(x,z) in R$. Thus, $R$ is also transitive and holds all properties of equivalence relation. Now, since $R$ is an equivalence relation, then there is a set $A slash R$ of equivalence classes induced by $R$.

  Now, we will prove that $P subset.eq A slash R$:
  Let $X in P$ and $x in X$. We will show that $X=[x]_R$.
  - If $y in X$, then by defintion $x R y$ and $y in [x]_R$. Hence, $X subset.eq [x]_R$.
  - If $y in [x]_R$ and trivially $x in [x]_R$, then $x R y => x,y in X$ and thus, $[x]_R subset.eq X$.
  Having proved that $[x]_R=X$ and $P subset.eq A slash R$, we shall now show that $A slash R subset.eq P$:

  Now, suppose that there is an element $q_0 in A slash R and q_0 in.not P$. Moreover, since $q_0$ is a class of equivalence, it is not an empty set and disjoint to others equivalence classes. We shall use the fact that partition $P$ consist of disjoint blocks as well. Both blocks of partitions and equivalence classes sums up to set $A$. Hence:
  $
    union.sq.big_(p in P) p = A & quad union.sq.big_(q in A slash R) q = A \
  $
  Where $union.sq$ is an operator of disjoint sum. Now, since $P subset.eq A slash R$, then:
  $
    union.sq.big_(q in A slash R) q = (union.sq.big_(p in P) p) union.sq q_0 = A union.sq q_0
  $
  Since, $union.sq.big_(q in A slash R) q = A$, then $A union.sq q_0 = A$, which is true if and only if $q_0 = emptyset$, which contradicts with initial assumptions. Hence, there is no element $q_0 in A slash R$, which does not belong to $P$. It implies that $A slash R subset.eq P$ and moreover, $A slash R = P$.

  q.e.d
]

#exercise[

  Consider the partition $P = {{dots, -4, -2,0,2,4,dots},{dots,-5,-3,-1,1,3,5,dots}}$ of $ZZ$. Let $R$ be the equivalence relation whose equivalence classes are the two elements of $P$. What familiar equivalence relation is $R$?
]

#solution[
  This familiar equivalence relation is same parity relation or $x R y iff 2 divides (x-y)$
]

#exercise[

  Consider the partition $P={{0},{-1,1},{-2,2},{-3,3},{-4,4},dots}$ of $ZZ$. Describe the equivalence relation whose equivalence classes are the elements of $P$.
]

#solution[This relation is $x R y iff |x|=|y|$.]

== The Integers Modulo n

#exercise[Write the addition and multiplication tables for $ZZ_2$.]

#solution[
  #grid(
  columns: (auto, auto),
  gutter: 3em,
  [#table(
  columns: 3,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$+$], [$[0]$], [$[1]$],
  [$[0]$], [$[0]$],   [$[1]$], 
  [$[1]$], [$[1]$],   [$[0]$], 

)],
  [#table(
  columns: 3,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$],
  [$[0]$], [$[0]$],   [$[0]$], 
  [$[1]$], [$[0]$],   [$[1]$], 

)])]

#exercise[Write the addition and multiplication tables for $ZZ_3$.]

#solution[
  #grid(
  columns: (auto, auto),
  gutter: 3em,
  [#table(
  columns: 4,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$+$], [$[0]$], [$[1]$], [$[2]$],
  [$[0]$], [$[0]$], [$[1]$], [$[2]$],
  [$[1]$], [$[1]$], [$[2]$], [$[0]$],
  [$[2]$], [$[2]$], [$[0]$], [$[1]$],

)],
  [#table(
  columns: 4,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$], [$[2]$],
  [$[0]$], [$[0]$], [$[0]$], [$[0]$],
  [$[1]$], [$[0]$], [$[1]$], [$[2]$],
  [$[2]$], [$[0]$], [$[2]$], [$[1]$],

)])]

#exercise[Write the addition and multiplication tables for $ZZ_4$.]

#solution[
  #grid(
  columns: (auto, auto),
  gutter: 3em,
  [#table(
  columns: 5,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$+$], [$[0]$], [$[1]$], [$[2]$], [$[3]$],
  [$[0]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$],
  [$[1]$], [$[1]$], [$[2]$], [$[3]$], [$[0]$],
  [$[2]$], [$[2]$], [$[3]$], [$[0]$], [$[1]$],
  [$[3]$], [$[3]$], [$[0]$], [$[1]$], [$[2]$],
)],
  [#table(
  columns: 5,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$], [$[2]$], [$[3]$],
  [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$],
  [$[1]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$],
  [$[2]$], [$[0]$], [$[2]$], [$[0]$], [$[2]$],
  [$[3]$], [$[0]$], [$[3]$], [$[2]$], [$[1]$],

)])]

#exercise[Write the addition and multiplication tables for $ZZ_6$.]

#solution[
  #grid(
  columns: (auto, auto),
  gutter: 3em,
  [#table(
  columns: 7,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$+$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[0]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[1]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$], [$[0]$],
  [$[2]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$], [$[0]$], [$[1]$],
  [$[3]$], [$[3]$], [$[4]$], [$[5]$], [$[0]$], [$[1]$], [$[2]$],
  [$[4]$], [$[4]$], [$[5]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$],
  [$[5]$], [$[5]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$],
)],
  [#table(
  columns: 7,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$],
  [$[1]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[2]$], [$[0]$], [$[2]$], [$[4]$], [$[0]$], [$[2]$], [$[4]$],
  [$[3]$], [$[0]$], [$[3]$], [$[0]$], [$[3]$], [$[0]$], [$[3]$],
  [$[4]$], [$[0]$], [$[4]$], [$[2]$], [$[0]$], [$[4]$], [$[2]$],
  [$[5]$], [$[0]$], [$[5]$], [$[4]$], [$[3]$], [$[2]$], [$[1]$],

)])]

#exercise[Suppose $[a],[b] in ZZ_5$ and $[a] dot [b]=[0]$. Is it necessarily true that either $[a]=[0]$ or $[b]=[0]$?]

#solution[
  Multiplication table for $ZZ_5$:
  #table(
  columns: 6,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$],
  [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$],
  [$[1]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$],
  [$[2]$], [$[0]$], [$[2]$], [$[4]$], [$[1]$], [$[3]$],
  [$[3]$], [$[0]$], [$[3]$], [$[1]$], [$[4]$], [$[2]$],
  [$[4]$], [$[0]$], [$[4]$], [$[3]$], [$[2]$], [$[1]$],

)
Yes, it is necessarily true that either $[a]=[0]$ or $[b]=[0]$.
]

#exercise[Suppose $[a],[b] in ZZ_6$ and $[a] dot [b]=[0]$. Is it necessarily true that either $[a]=[0]$ or $[b]=[0]$? What if $[a],[b] in ZZ_7$?]

#solution[
  Multiplication table for $ZZ_6$:
  #table(
  columns: 7,
  inset: 0.7em,
  align: center + horizon,
  fill: (x, y) => if x == 0 or y == 0 { luma(240) },
  
  [$dot$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$], [$[0]$],
  [$[1]$], [$[0]$], [$[1]$], [$[2]$], [$[3]$], [$[4]$], [$[5]$],
  [$[2]$], [$[0]$], [$[2]$], [$[4]$], [$[0]$], [$[2]$], [$[4]$],
  [$[3]$], [$[0]$], [$[3]$], [$[0]$], [$[3]$], [$[0]$], [$[3]$],
  [$[4]$], [$[0]$], [$[4]$], [$[2]$], [$[0]$], [$[4]$], [$[2]$],
  [$[5]$], [$[0]$], [$[5]$], [$[4]$], [$[3]$], [$[2]$], [$[1]$],
  )
  No, it is not necessarily true in $ZZ_6$ that either $[a]=[0]$ or $[b]=[0]$, since $[2] dot [3] = [0]$.

  However, in $ZZ_7$ it is necessarily true that either $[a]=[0]$ or $[b]=[0]$. The difference between $ZZ_6$ and $ZZ_7$ is that $7$ is a prime number and $6$ is a composite number, which can be obtained by product of $2$ and $3$.
]

#exercise[Do the following calculations in $ZZ_9$, in each case expressing your answer as $[a]$ with $0<=a<=8$.
#grid(
  columns: (auto, auto, auto, auto),
  gutter: 1em, // Odstęp między punktami
  [(a) $[8]+[8]$],
  [(b) $[24]+11$],
  [(c) $[21] dot [15]$],
  [(d) $[8] dot [8]$],
)]

#solution[
(a) $[7]$
(b) $[8]$
(c) $[0]$
(d) $[1]$
]

#exercise[Suppose $[a],[b] in ZZ_n$, and $[a]=[a']$ and $[b]=[b']$. Alice adds $[a]$ and $[b]$ as $[a]+[b]=[a+b]$. Bob adds them as $[a']+[b']=[a'+b']$. Show that their answers $[a+b]$ and $[a'+b']$ are the same.]

#solution[
  Suppose that $[a], [b] in ZZ_n$ as well as $[a]=[a']$ and $[b]=[b']$. Moreover, let $a'=a+ n k$ and $b' = b+ n l$ for some $k,l in ZZ$. Now:
  $
  [a'+b']&=[a+n k + b + n l] \ &= [a+b + n(k+l)]\ &=[a+b]+[n(k+l)]\ &=[a+b]+[0] \ &=[a+b]
  $

  q.e.d
]