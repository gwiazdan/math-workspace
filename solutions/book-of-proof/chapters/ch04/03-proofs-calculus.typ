#import "/templates/preamble.typ": *

== Proofs in Calculus

=== Definition of a Limit

#exercise[Prove that $limits(lim)_(x->5)(8x-3)=37$.]

#proof[
  Suppose $epsilon >0$. Notice that
  $
    abs(f(x)-L) & = abs(8x-3 - 37) \
                & = abs(8x -40) \
                & = 8 abs(x-5)
  $
  So if $delta = epsilon/8$, then $0< abs(x-5) < delta$ yields $abs(8x-3 - 37) = 8 abs(x-5) < 8 delta = epsilon$.

  Hence, for any $epsilon >0$, there is a $delta = epsilon / 8$ for which $0< abs(x-5) < delta$ implies $abs((8x-3)-37)< epsilon$. By definition, $limits(lim)_(x->5)(8x-3)=37$.
]

#exercise[Prove that $limits(lim)_(x-> -1)(4x+6)=2$. ]

#proof[
  Let $epsilon>0$. Observe that:
  $
    abs(f(x)-L) & = abs((4x+6) -2) \
                & = abs(4x+4) \
                & = 4 abs(x+1)
  $
  We shall use this fact to state that if $delta = epsilon/4$, then $0<abs(x+1)< delta$ implies that $abs((4x+6)-2)<epsilon$. Therefore, by definition $limits(lim)_(x->-1)(4x+6) = 2$.
]

#exercise[Prove that $limits(lim)_(x->0)(x+2)=2$.]

#proof[
  Suppose that $epsilon >0$. We shall observe that:
  $
    abs(f(x)-L) & = abs((x+2) - 2) \
                & = abs(x)
  $
  Now, this means that for $x$ in the very close neighborhood to $0$, $0<abs(x)<delta$. Let $delta = epsilon$, then $0<abs(x)<delta$ implies that $abs((x+2)-2)<epsilon$.

  Hence, by definition of the limit, $limits(lim)_(x->0) (x+2)=2$ is true.
]

#exercise[Prove that $limits(lim)_(x->8)(2x-7)=9$.]

#proof[
  Suppose that $epsilon > 0$. We shall observe that:
  $
    abs(f(x)-L) & = abs((2x-7)-9) \
                & = abs(2x-16) \
                & = 2 abs(x-8)
  $
  Then, we shall observe that for $delta = epsilon /2$, $0<abs(x-8)<delta$ is true and it implies that $abs((2x-7)-9)<epsilon$. Hence, by the definition of the limit $limits(lim)_(x->8)(2x-7)=9$.
]

#exercise[Prove that $limits(lim)_(x->3)(x^2-2)=7$.]

#proof[
  Suppose $epsilon >0$. Then, we shall observe that:
  $
    abs(f(x)-L) & = abs((x^2-2)-7) \
                & = abs(x^2-9) \
                & = abs((x-3)(x+3)) \
                & = abs(x-3) abs(x+3)
  $
  Now, if $abs(x-3)<=1$, then by triangle inequality $abs(x+3) = abs((x-3)+6) <= 1 + abs(6) = 7$.

  Let $delta = min(1, epsilon / 7)$. Then $0< abs(x-3) < delta$ implies $abs((x^2-2)-7) = abs(x-3) abs(x+3) <= 7 abs(x-3) <= 7 delta <= epsilon$. Hence, by definition of the limit $limits(lim)_(x->3)(x^2-2)=7$.
]

#exercise[Prove that $limits(lim)_(x->1)(4x^2+1)=5$.]

#proof[
  Let $epsilon >0$. Notice that:
  $
    abs(f(x)-L) & = abs((4x^2+1)-5) \
                & = abs(4x^2- 4) \
                & = 4 abs(x^2-1) \
                & = 4 abs(x-1) abs(x+1)
  $
  Next, if $abs(x-1) <=1$, then:
  $
    abs(x+1) = abs((x-1)+2) <= abs(x-1) + abs(2) <= 1+2 =3
  $

  Let $delta = min(1, epsilon/12)$. Then $0<abs(x-1)<delta$ implies that $abs((4x^2+1)-5)=4abs(x-1) abs(x+1) < 12 delta = epsilon$. By definition of the limit, $limits(lim)_(x->1)(4x^2+1)=5$.
]
