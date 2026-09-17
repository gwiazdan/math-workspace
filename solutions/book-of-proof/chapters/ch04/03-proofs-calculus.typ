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

=== Limits That Do Not Exist

Prove that the following limits do not exist.

#exercise[$limits(lim)_(x->0) log_10 abs(x)$]

#proof[
  Suppose limit does exist. Let $epsilon = 1$, $L in RR$ and $limits(lim)_(x->0) log_10 abs(x) = L$.

  By definition of the limit, there is real number $delta>0$ for which $0 < abs(x) < delta$ implies $abs(log_10 abs(x) - L) < 1$.

  Let $a = 0 + delta/10$ and $b = 0 + delta/1000$. Therefore, $0< abs(a) <delta$ and $0< abs(b) < delta$. Now, since the limit exist, then $abs(f(a) - L) < 1$ and $abs(f(b) - L) < 1$.

  Hence, by triangle inequality $abs((f(a)-L) - (f(b)-L)) <= abs(f(a) - L) + abs(f(b) - L)$. We shall use this fact, to show that $abs((f(a)-L)-(f(b)-L))=abs(f(a)-f(b))=abs(log_10(delta)-log_10(10) - log_10(delta) + log_10(1000))=abs(-1+3)=2$. We know also that $abs(f(a)-L) + abs(f(b)-L) < 2$.

  Thus, $2<abs(f(a)-L)+abs(f(b)-L)<2$ and it contradictswith the definition of the limit. Therefore, limit does not exist.
]

#exercise[$limits(lim)_(x->0) abs(x)/x$]

#proof[
  Suppose limit does exist. Let $epsilon=1$, $L in RR$ and $limits(lim)_(x->0) abs(x) /x = L$.

  Let $delta>0$ for which $0 < abs(x) < delta$. By definition of the limit, $0 < abs(x) < delta$ implies $0 < abs(f(x)-L) < epsilon$.

  Hence, choosing $a,b$ such that $a=delta/2$, $b=-delta/2$ and both $a,b$ satisfy inequalities $0<abs(a)< delta$, $0 < abs(b) < delta$, it holds that $abs(f(a)-L) < epsilon$ and $abs(f(b)-L) < epsilon$.

  Now, using triangle inequality, we shall state that:
  $
    abs((f(a)-L) - (f(b)-L)) & <= abs(f(a)-L) + abs(f(b)-L) \
              abs(f(a)-f(b)) & <= abs(f(a)-L) + abs(f(b)-L)
  $

  Then, we shall notice that $abs((f(a)-f(b))) = abs(abs(delta/2)/(delta/2) - abs(-delta/2)/(-delta/2))=abs(1+1)=2$ as well as take in mind that $abs(f(a)-L) + abs(f(b)-L) < 2 epsilon$.

  Therefore:
  $
    2 = abs(f(a)-f(b)) <= abs(f(a)-L) + abs(f(b)-L) < 2 \
    2 < 2
  $
  Which leads us to contradiction. Thus, such limit does not exist.
]

#exercise[$limits(lim)_(x->0) 1/x^2$]

#proof[
  Suppose that limit exists and $limits(lim)_(x->0) 1/x^2 = L$. Fix $epsilon >0$ such that $L+epsilon > 0$. Choose a real number $delta >0$ for which $0 < abs(x-0) < delta$ implies $abs(1/x^2-L)<epsilon$. Choose an $x<min(delta, sqrt(1/(L+epsilon)))$. Then $0<abs(x-0)<delta$, so $abs(1/x^2-L)<epsilon$. But also, $x < sqrt(1/(L+epsilon))$, so $x^2 < 1/(L+epsilon)$ and hence $1/x^2>L+epsilon$. Therefore $1/x^2-L > epsilon$, and thus $abs(1/x^2-L)>epsilon$. This is a contradiction.
]

#exercise[$limits(lim)_(x->0) cos(1/x)$]

#proof[
  Suppose that limit exists and $limits(lim)_(x->0) cos(1/x)=L$. Choose $epsilon=1/2$. Definition gurantees a number $delta$ for which $0<abs(x-0)<delta$ implies $abs(f(x)-L)<epsilon$. Thus, we shall select $k in NN$ large enough so that $1/(2 k pi) < delta$. As $0< abs(1/(2 k pi)) < delta$, then $abs(f(1/(2 k pi))-L) < epsilon$. Similarly, if we choose $l in NN$ large enough so that $1/(pi slash 2 + 2 l pi) < delta$, then $0<abs(1/(pi slash 2 + 2 l pi))< delta$ implies that $abs(f(1/(pi slash 2+2 l pi))-L)< epsilon$.

  Now, since $f(1/(1 slash 2 k pi)) = cos(2 k pi) = 1$ and $f(1/(1 slash (pi/2 + 2 l pi)))= cos(pi/2 + 2l pi) = 0$, then both $abs(0 - L) < epsilon$ and $abs(1 - L) < epsilon$ holds.

  By triangle inequality, $abs((1-L) +L) <= abs(1-L)+ abs(L)$. Since $abs(1-L + L) = 1$ and $abs(1-L)+abs(L)< 2 epsilon$, then $1< 2 epsilon = 1$. Which leads us to contradiction as $1<1$. Therefore, such limit does not exist.
]

#exercise[$limits(lim)_(x->0) x cot(1/x)$]

#proof[
  For limit to make sense, there must be a $delta$ for which $f(x)$ is defined for all $x in (-delta,0) union (0,delta)$. However, we can clearly show that since $f(x)=x cot(1/x) = (x cos(1/x))/sin(1/x)$, then for $x=1/(2pi k), k in NN$ $f(x)$ is undefined. Therefore, there exist
  $k$ large enough for which $abs(1/(pi k)) < delta$, hence $1/(2pi k) in (-delta,0) union (0,delta)$. It means that $f(x)$ is NOT defined for all $x in (-delta,0) union (0,delta)$ and therefore limit does not exist.
]

#exercise[$limits(lim)_(x->1) 1/(x^2-2x+1)$]

#proof[Notice that $f(x)=1/(x^2-2x+1)=1/(x-1)^2$. Suppose that limit does exist and $limits(lim)_(x->1) 1/(x-1)^2 = L$.
  Let $epsilon > 0$ and $epsilon + L > 0$. Now, by defintion of the limit, exists such real positive number $delta$ such that $0<abs(x-1)<delta ==> abs(1/(x-1)^2-L)<epsilon$.

  Choose $x>1$ such that $x - 1 < min(delta, sqrt(1/(epsilon+L)))$. Therefore, $x-1 < delta$ and $x-1 < sqrt(1/(epsilon+L))$, hence $1/(x-1)^2 - L > epsilon$. If so, then
  $0 < abs(x-1) < delta$, but $abs(1/(x-1)^2 - L) > epsilon$. Thus, it is contradictory and limit does not exist.
]
