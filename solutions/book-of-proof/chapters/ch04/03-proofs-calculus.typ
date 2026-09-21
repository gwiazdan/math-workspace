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

=== Limit Laws

#theorem(number: 13.2, title: "Constant function rule")[
  If $a in RR$, then $limits(lim)_(x->c) a = a$.
] <constant-function-rule>

#proof[
  Suppose $a in RR$. According to definition, to prove $limits(lim)_(x -> c) a =a$, we must show that for any $epsilon >0$, there is a $delta >0$ for which $0<abs(x-c)<delta$ implies $abs(a-a) < epsilon$. Just let $delta=1$ (or any other number). Then $abs(a-a) < epsilon$ is automatic, because $abs(a-a)=0$.
]

#theorem(number: 13.3, title: "Identity function rule")[
  If $c in RR$, then $limits(lim)_(x->c) x = c$.
]

#proof[
  Given $epsilon >0$, let $delta=epsilon$. Then $0<abs(x-c)<delta => abs(x-c) <epsilon$. By the defintion of the limit, this means $limits(lim)_(x->c) x = c$.
]

#theorem(number: 13.4, title: "Constant multiple rule")[
  If $limits(lim)_(x->c) f(x)$ exist, and $a in RR$, then $limits(lim)_(x->c) a f(x) = a limits(lim)_(x->c) f(x)$.
]

#proof[
  Suppose $limits(lim)_(x->c) f(x)$ exists. We must show $limits(lim)_(x->c) a f(x) = a limits(lim)_(x->c) f(x)$. If $a=0$, then this reduce to $lim_(x->c) 0 = 0$, which is true by @constant-function-rule. Thus, for the remainder of the proof we can assume $a!=0$.

  Suppose $limits(lim)_(x->c) f(x) = L$. We muste prove $limits(lim)_(x->c) a f(x) = a L$. By defintion, this means we must show that for any $epsilon>0$, there is a $delta>0$ for which $0<abs(x-c)<delta$ implies $abs(a f(x)- a L) < epsilon$. Let $epsilon>0$. Because $limits(lim)_(x->c) f(x) = L$, there exists a $delta >0$ for which $0<abs(x-c)< delta$ implies $abs(f(x)-L)<epsilon / abs(a)$. So if $0<abs(x-c)<delta$, then $abs(a f(x)- a L) = abs(a (f(x)-L)) = abs(a) dot abs(f(x)-L) < abs(a) dot epsilon / abs(a) = epsilon$.

  In summary, we've shown that for any $epsilon>0$, there is a $delta>0$ for which $0<abs(x-c)<delta$ implies $abs(a f(x) - a L)< epsilon$. By defintion, $limits(lim)_(x->c) a f(x) - a L$.
]

#theorem(number: 13.5, title: "Sum rule")[
  If both $limits(lim)_(x->c) f(x)$ and $limits(lim)_(x->c) g(x)$ exist, then $limits(lim)_(x->c) f(x)+ limits(lim)_(x->c) g(x)$.
] <sum-rule>

#proof[
  Let $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) g(x) = M$. We must prove $limits(lim)_(x->c) (f(x)+g(x)) = L+M$. To prove this, take $epsilon>0$. We need to find a correspoding $delta$ for which $0<abs(x-c)<delta => abs((f(x)+g(x))-(L+M))<epsilon$. With this in mind, notice that:
  #math.equation(
    block: true,
    numbering: "(A)",
    $
      abs((f(x)+g(x)) - (L+M)) & = abs((f(x)-L) + (g(x)-M)) \
                               & <= abs(f(x)-L) = abs(g(x)-M)
    $,
  ) <lim-sr-a>
  As $limits(lim)_(x->c) f(x) = L$, there is a $delta'>0$ such that $0<abs(x-c)<delta'$ implies $abs(f(x)-L)<epsilon/2$.
  As $limits(lim)_(x->c) g(x) = M$, there is a $delta''>0$ such that $0<abs(x-c)<delta''$ implies $abs(g(x)-M)<epsilon/2$.

  Now put $delta = min{delta', delta''}$, meaning taht $delta$ equals the smaller of $delta'$ and $delta''$. If $0<abs(x-c)<delta$, then @lim-sr-a gives $abs((f(x)+g(x))-(L+M))<= epsilon/2 + epsilon/2 = epsilon$.
  We've now shown that for any $epsilon>0$, there is a $delta>0$ for which $0<abs(x-c)<delta$ implies $abs((f(x+g(x))-(L+M)))<epsilon$. Thus $limits(lim)_(x->c) (f(x)+g(x)) = L + M$.
]

#theorem(number: 13.7, title: "Multiplication rule")[
  If both $limits(lim)_(x->c) f(x)$ and $limits(lim)_(x->c) g(x)$ existm then $limits(lim)_(x->c) f(x)g(x) = (limits(lim)_(x->c) f(x)) dot (limits(lim)_(x->c) g(x))$.
] <multiplication-rule>

#proof[
  Let $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) g(x) = M$. We must prove $limits(lim)_(x->c) f(x) g(x) = L M$. To prove this, take $epsilon>0$. We need to find a correspoding $delta$ for which $0<abs(x-c)<delta$ implies $abs(f(x) g(x) - L M) < epsilon$. With this in mind, notice that:
  #math.equation(
    block: true,
    numbering: "(A)",
    $
      abs(f(x)g(x) - L M) & = abs((f(x) g(x) - L g(x)) + (L g(x) - L M)) \
                          & <= abs(f(x) g(x) - L g(x)) + abs(L g(x) - L M) \
                          & = abs((f(x)-L)g(x)) + abs(L(g(x)-M)) \
                          & = abs(f(x)-L) dot abs(g(x)) + abs(L) dot abs(g(x)-M)
    $,
  ) <lim-mr-a>
  Because $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) g(x) = M$, we can make the expression $abs(f(x)-L)$ and $abs(L) dot abs(g(x)-M)$ in (A) arbitrarily small by making $abs(x-c)$ sufficiently small. But the term $abs(f(x)-L) abs(g(x))$ is a problem. For all we know, $abs(g(x))$ could grow large as $abs(f(x)-L)$ shrinks. To deal with this, choose some $delta'>0$ small enough so that $0<abs(x-c) < delta'$ implies $abs(g(x)-M)<1$. Then as long as $0<abs(x-c) <delta'$,
  $
    abs(g(x)) = abs((g(x)-M)+M) <= abs(g(x)-M) + abs(M) < 1+ abs(M)
  $
  Replacing the factor of $abs(g(x))$ in @lim-mr-a with the larger quantity $1+abs(M)$, we get:
  #math.equation(
    block: true,
    numbering: "(A)",
    $ abs(f(x) g(x) - L M) < abs(f(x)-L)(1+ abs(M)) + abs(L) abs(g(x)-M) $,
  ) <lim-mr-b>
  which holds provided $0< abs(x-c) < delta'$.
  Choose $delta''>0$ such that $0<abs(x-c)<delta''$ implies $abs(f(x)-L)<epsilon/(2(1+abs(M)))$. Also choose $delta'''>0$ such that $0<abs(x-c)<delta'''$ implies $abs(g(x) - M) < epsilon/(2(q+abs(L)))$. Now put $delta=min{delta',delta'',delta'''}$. If $0<abs(x-c)<delta$, then @lim-mr-b becomes:
  $
    abs(f(x) g(x) - L M) < epsilon/(2(1+abs(M))) dot (1+abs(M)) + abs(L) dot epsilon / (2(1+abs(L))) < epsilon/2 + epsilon/2 = epsilon
  $
  To summarize, we've shown that for any $epsilon >0$, there is a $delta>0$ for which $0<abs(x-c)<delta$ implies $abs(f(x) g(x) - L M) < epsilon$. Therefore $limits(lim)_(x->c) f(x) g(x) = L M$.

]

#theorem(number: 13.8, title: "Division rule")[
  If both $limits(lim)_(x->c) f(x)$ and $limits(lim)_(x->c) g(x)$ exist, and $limits(lim)_(x->c) g(x) !=0$, then $limits(lim)_(x->c) f(x)/g(x) = (limits(lim)_(x->c) f(x))/(limits(lim)_(x->c) g(x))$
]

#proof[
  Suppose $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) g(x) = M !=0$. We must prove $limits(lim)_(x->c) f(x) / g(x) = L / M$. To prove this, take $epsilon>0$. We need to find correspoding $delta$ for which $0<abs(x-c)<delta$ implies $abs(f(x)/g(x)-L/M) <epsilon$. With this in mind, notice that
  #math.equation(
    block: true,
    numbering: "(A)",
    $
      abs(f(x)/g(x)-L/M) & = abs((M f(x) - L g(x)) / (M g(x))) = abs(((M f(x)- L M) - (L g(x) - L M))/(M g(x))) \
                         & = abs(1/g(x) (f(x) - L) - L / (M g(x)) (g(x) - M)) \
                         & <= abs(1/g(x) (f(x)-L)) + abs(L/(M g(x)) (g(x)-M)) \
                         & = 1/abs(g(x)) dot abs(f(x)-L) + 1/abs(g(x)) dot abs(L/M) dot abs(g(x)-M)
    $,
  ) <lim-dr-a>
  Because $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) g(x) = M$, we can make the terms $abs(f(x)-L)$ and $abs(L/M) dot abs(g(x)-M)$ in @lim-dr-a arbitrarily small by making abs(x-c) sufficiently small. To deal with the factor $1/abs(g(x))$, choose $delta '>0$ so that $0< abs(x-c)< delta'$  implies $abs(g(x)-M) < abs(M)/2$. So if $0<abs(x-c)<delta'$, the inequality assures us:
  $
    abs(g(x)) = abs(M+ (g(x) - M)) >= abs(M) - abs(g(x)-M) > abs(M) - abs(M)/2 = abs(M)/2
  $
  That is, $abs(g(x))>abs(M)/2$, and consequently $1/abs(g(x)) < 2/abs(M)$. Replacing the occurences of $1/abs(g(x))$ in @lim-dr-a with the larger value $2/abs(M)$, we get
  #math.equation(
    block: true,
    numbering: "(A)",
    $abs(f(x)/g(x)-L/M) < 2/abs(M) dot abs(f(x)-L) + abs((2L)/M^2) dot abs(g(x)-M)$,
  ) <lim-dr-b>
  which holds provided $0< abs(x-c) < delta'$. Two cases finish the proof.

  *Case 1.* Suppose $L!=0$. Choose $delta''>0$ so $0<abs(x-c)<delta'' ==> abs(f(x)-L)<(epsilon abs(M))/4$. Also choose $delta'''>0$ so that $0<abs(x-c)<delta''' ==> abs(g(x)-M) < epsilon abs(M^2/(4L))$. Put $delta = min{delta',delta'',delta'''}$. If $0<abs(x-c)<delta$, then @lim-dr-b yields
  $
    abs(f(x)/g(x)-L/M) < 2/abs(M) dot (epsilon abs(M))/4 + abs((2L)/M^2) dot epsilon abs(M^2 / (4L)) = epsilon /2 + epsilon /2 = epsilon
  $

  *Case 2.* Suppose $L=0$. Let $delta''>0$ be such that $0<abs(x-c)<delta''$ implies $f(x)-L<(epsilon abs(M))/2$. Putting $delta = min{delta', delta''}$, the inequality @lim-dr-b becomes
  $
    abs(f(x)/g(x)-L/M) < 2/abs(M) (epsilon abs(M))/2 = Epsilon
  $

  In each case we have shown that for any $epsilon >0$, there is a $delta >0$ for which $0< abs(x-c)< delta$ implies $abs(f(x)/g(x)-L/M) <epsilon$, so the proof is finished.
]

#exercise[Given two or more functions $f_1, f_2, dots, f_n$, suppose that $limits(lim)_(x->c) f_i(x)$ exists for each $1<=i<=n$. Prove that $limits(lim)_(x->c) (f_1(x)+f_2(x)+dots+f_n(x) )=limits(lim)_(x->c) f_1(x)+limits(lim)_(x->c) f_2(x) + dots + limits(lim)_(x->c) f_n (x)$. Use induction on $n$, with Theorem 13.5 serving as the base case.
]

#proof[
  We shall prove this with mathematical induction. Let $P(n): limits(lim)_(x->c) (f_1(x)+f_2(x)+dots+f_n (x) )=limits(lim)_(x->c) f_1(x)+limits(lim)_(x->c) f_2(x) + dots + limits(lim)_(x->c) f_n (x)$.

  1. *Base step ($n=2$):* $P(2)=limits(lim)_(x->c) f_1(x) + f_2(x) = limits(lim)_(x->c) (f_1(x)+f_2(x))$. It is true by @sum-rule.

  2. *Inductive step:* Suppose $P(k)$ for $k>=2$. If so, then $limits(lim)_(x->c) (f_1(x)+f_2(x)+dots+f_k (x) )=limits(lim)_(x->c) f_1(x)+limits(lim)_(x->c) f_2(x) + dots + limits(lim)_(x->c) f_k (x)$. Now:
  $
    limits(lim)_(x->c) (underbrace(f_1(x)+f_2(x)+dots+f_k (x), g(x)) + f_(k+1) (x) ) &= limits(lim)_(x->c) (f_1(x)+f_2(x)+dots+f_k (x) ) + limits(lim)_(x->c) f_(k+1) (x) \
    &= limits(lim)_(x->c) f_1(x) + limits(lim)_(x->c) f_2(x) + dots + limits(lim)_(x->c) f_k (x) + limits(lim)_(x->c) f_(k+1) (x)
  $

  Thus, $P(k+1)$ holds and the initial statement is true.
]

#exercise[Given two or more functions $f_1,f_2,f_n$, suppose that $limits(lim)_(x->c) f_i(x)$ exists for each $1<=i<=n$. Prove that $limits(lim)_(x->c) (f_1(x) f_2(x) dots f_n (x))=(limits(lim)_(x->c) f_1(x)) dot (limits(lim)_(x->c) f_2(x)) dots (limits(lim)_(x->c) f_n (x))$.
]

#proof[
  We shall prove this with mathematical induction. Let $P(n): limits(lim)_(x->c) (f_1(x) f_2(x) dots f_n (x))=(limits(lim)_(x->c) f_1(x)) dot (limits(lim)_(x->c) f_2(x)) dots (limits(lim)_(x->c) f_n (x))$.

  1. *Base step ($n=2$):* $limits(lim)_(x->c) (f_1(x) f_2(x))=(limits(lim)_(x->c) f_1(x)) dot (limits(lim)_(x->c) f_2(x))$ is true by @multiplication-rule.

  2. *Inductive step:* Suppose $P(k)$ for $k>=2$. We shall notice that:
  $
    limits(lim)_(x->c) (underbrace(f_1(x) f_2(x) dots f_k (x), g(x)) f_(k+1) (x)) & = limits(lim)_(x->c) (f_1(x) f_2(x) dots f_k (x)) dot (limits(lim)_(x->c) f_(k+1)(x)) \
    &= (limits(lim)_(x->c) f_1(x)) dot (limits(lim)_(x->c) f_2(x)) dots (limits(lim)_(x->c) f_k (x)) dot (limits(lim)_(x->c) f_(k+1)(x))
  $

  Thus, $P(k+1)$ holds and the initial statement is true.
]

#exercise[Use the previous two excercises and the constant multiple rule to prove that if $f(x)$ is a polynomial, then $limits(lim)_(x->c) f(x)=f(c)$ for any $c in RR$.]

#proof[
  Let $f(x)$ be a polynomial. If so, then $f(x) = sum^n_(i=0) a_i x^i$, where $a_i in RR$ are the coefficient of the polynomial and $n$ is the degree of polynomial. Now:
  $
    limits(lim)_(x->c) f(x) & = limits(lim)_(x->c) sum^n_(i=0) a_i x^i \
    & = sum^n_(i=0) limits(lim)_(x->c) a_i x^i quad "by general sum rule" \
    & = sum^n_(i=0) a_i lim_(x->c) x^i quad "by constant multiple rule" \
    & = sum^n_(i=0) a_i lim_(x->c) (underbrace(x dot x dot x dots x, i)) \
    & = sum^n_(i=0) a_i (limits(lim)_(x->c) x dot lim_(x->c) x dot lim_(x->c) x dot dots dot lim_(x->c) x) quad "by general multiplication rule" \
    & = sum^n_(i=0) a_i (lim_(x->c) x)^i \
    & = sum^n_(i=0) a_i c^i quad "by identity function rule" \
    & = f(c)
  $
]

#exercise[Use previous excercise with a limit law to prove that if $f(x)/g(x)$ is a rational function, and $g(c)!=0$,then $limits(lim)_(x->c) f(x)/g(x) = f(c)/g(c)$.]

#solution[
  If $f(x)/g(x)$ is a rational function, then both $f(x)$ and $g(x)$ are polynomials. Hence
  $
    lim_(x->c) f(x)/g(x) & = (limits(lim)_(x->c) f(x))/(limits(lim)_(x->c) g(x)) quad "by division rule" \
                         & = f(c) / g(c) "by previous exercise"
  $
]

#exercise[Prove that limits are unique in the sens that if $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) f(x) = M$, then $L=M$.]

#proof[
  Suppose both $limits(lim)_(x->c) f(x) = L$ and $limits(lim)_(x->c) f(x) = M$. If so, then by the definition of the limit, for every $epsilon>0$, there is $delta' >0$ for which $0<abs(x-c)<delta'$ implies $abs(f(x)-L)<epsilon$ as well as $delta'' >0$ for which $0<abs(x-c)<delta''$ implies $abs(f(x)-M)<epsilon$.

  Put $delta = min{delta', delta''}$. If so, then $0<abs(x-c)<delta => abs(f(x)-L) < epsilon and abs(f(x)-M)<epsilon$.

  Notice, that
  $
    abs(L - M) = abs((f(x) - M) - (f(x)-L)) <= abs(f(x)-M) + abs(f(x)-L) <= 2 epsilon
  $
  Since $abs(L-M)$ holds for every $epsilon >0$, and $abs(L-M)$ is a non-negative constant, the only non-negative real number smaller then every positive number is zero. Hence $abs(L-M)=0$, so $L=M$.
]

#exercise[Prove the _squeeze theorem_: Suppose $g(x)<= f(x)<=h(x)$ for all $x in RR$ satisfying $0<abs(x-c)<delta$ for some $delta >0$. If $limits(lim)_(x->c) g(x) = L= limits(lim)_(x->c) h(x)$, then $limits(lim)_(x->c) f(x)= L$.]

#proof[
  Let $limits(lim)_(x->c) g(x) = limits(lim)_(x->c) h(x)=L$. By definition of the limit for every $epsilon>0$, exists such $delta'>0$ for which $0<abs(x-c) < delta' ==> abs(g(x)-L)<epsilon$ as well as $delta''>0$ for which $0<abs(x-c)<delta'' ==> abs(h(x)-L) < epsilon$.

  Now, let $delta = min{delta', delta''}$. If so, then $0<abs(x-c)<delta ==> abs(g(x)-L)< epsilon and abs(h(x)-L) <epsilon$. With this in mind, remember that $g(x) <= f(x) <= h(x)$ which can be transformed into $g(x)-L <= f(x)-L <= h(x)-L$. Since $h(x)-L < epsilon$ and $g(x)-L > -epsilon$, then:
  $
    -epsilon < f(x) - L < epsilon
  $
  Hence, $abs(f(x)-L) < epsilon$. As $0<abs(x-c)<delta ==> abs(f(x)-L) < epsilon$, then by the definition of the limit, $limits(lim)_(x->c) f(x) = L$.
]

=== Continuity and Derivatives

#theorem(number: 13.9, title: "Composition rule")[
  If $limits(lim)_(x->c) g(x) = L$ and $f$ is continous at $x=L$, then $limits(lim)_(x->c) f(g(x)) = f(limits(lim_(x->c) g(x)))$
] <composition-rule-theorem>

#theorem(number: "13.10")[
  If $f$ is differentiable at $c$, then $f$ is continous at $c$.
] <continuity-derivative-theorem>

#exercise[
  Prove that the function $f(x)=sqrt(x)$ is continous at any number $c>0$. Deduce that $limits(lim)_(x->c) sqrt(g(x)) = sqrt(limits(lim)_(x->c) g(x))$, provided $limits(lim)_(x->c) g(x)$ exists and is greater than zero.
]

#proof[
  We shall show that for every $c>0, limits(lim)_(x->c) f(x) = f(c)$. Let $epsilon > 0$ and suppose $delta = min{c, epsilon sqrt(c)}$ for which $0<abs(x-c) < delta$. We need to show that $abs(f(x) - f(c)) < epsilon$, so $abs(sqrt(x)-sqrt(c)) < epsilon$.

  Observe that $0<abs(x-c)<delta$ can be rewrite into $0<abs((sqrt(x)-sqrt(c))(sqrt(x)+sqrt(c)))<delta$. Now:
  #math.equation(
    block: true,
    numbering: "(A)",
    $
      abs(x-c) = abs((sqrt(x)-sqrt(c))(sqrt(x)+sqrt(c))) & < delta \
            abs(sqrt(x) - sqrt(c)) abs(sqrt(x)+ sqrt(c)) & < delta \
    $,
  ) <ex-continuity-1>
  Since $delta<=c$, then $abs(x-c)<c => x in (0,2c)$. Therefore, $abs(sqrt(x)+sqrt(c))= sqrt(x)+sqrt(c) > sqrt(c)$. Back to @ex-continuity-1
  $
    abs(sqrt(x)-sqrt(c)) sqrt(c) < & abs(sqrt(x)-sqrt(c)) (sqrt(x) +sqrt(c)) &                   < delta \
                                   & abs(sqrt(x)-sqrt(c)) sqrt(c)            &                   < delta \
                                   & abs(sqrt(x)-sqrt(c)) cancel(sqrt(c))    & < cancel(sqrt(c)) epsilon \
                                   & abs(sqrt(x)-sqrt(c))                    &                 < epsilon
  $
  Thus, by the definition of the limit $limits(lim)_(x->c) f(x) = f(c)$ for every $c>0$, so function is continous at any number $c>0$.

  Now, since $f$ is continous at every positive real number and $limits(lim)_(x->c) g(x)$ exists and is greater than zero, so $f$ is continous at the limit of $g(x)$ in $c$, then by the composition rule, $limits(lim)_(x->c) sqrt(g(x)) = sqrt(limits(lim)_(x->c) g(x))$.
]

#exercise[Show that the condition of continuity in @composition-rule-theorem is necessary by finding functions $f$ and $g$ for which $limits(lim)_(x->c) g(x)= L$, and $f$ is not continous at $x=L$, and $limits(lim)_(x->c) f(g(x))!=f(limits(lim)_(x->c)g(x))$.]

#proof[
  Let $f(x) = cases(1 "for" x!=0, 0 "for" x=0)$ and $g(x)=x$.

  Now, $limits(lim)_(x->0) g(x) = 0 = L$ and since $limits(lim)_(x->0^-) f(g(x)) = limits(lim)_(x->0^-) f(x) = 1$ as well as $limits(lim)_(x->0^+) f(g(x)) = limits(lim)_(x->0^+) f(x) = 1$, then $limits(lim)_(x->0) f(g(x)) = 1$.

  However, $f(limits(lim)_(x->0) g(x))=f(0)=0$. Therefore $limits(lim)_(x->0) f(g(x)) != f(limits(lim)_(x->0) g(x))$.
]

#definition(number: 13.4, title: "Limits at Infinity")[
  1. The statement $limits(lim)_(x->infinity) f(x) = L$ means that for any real $epsilon >0$, there is a number $N>0$ for which $x>N$ implies $abs(f(x)-L)<epsilon$.
  2. The statement $limits(lim)_(x-> - infinity) f(x) = L$ means that for any $epsilon >0$, there is a number $N<0$ for which $x<N$ implies $abs(f(x)-L)<epsilon$.
] <limits-at-infinity>

Use @limits-at-infinity to prove the following results.

#exercise[$limits(lim)_(x-> infinity) 1/x^n = 0$ if $n in NN$.]

#proof[
  Let $epsilon >0$ and $N = 1/epsilon^(1 slash n)$. Notice that if $x > 1/epsilon^(1 slash n)$, then $epsilon^(1/n) > 1/x$, so $1/x^n < epsilon$. Thus $abs(1/x^n - 0) < epsilon$ and by the definition of the limit $limits(lim)_(x->infinity) 1/x^n = 0$.
]

#exercise[$limits(lim)_(x->infinity) (3x+2)/(2x-1)=3/2$.]

#proof[
  Let $epsilon >0$ and $N=7/(4 epsilon) + 1/2$. If so, then if $x> 7/(4 epsilon) + 1/2$, then $4x-2> 7/epsilon$, so $epsilon > 7/(4x-2)$, hence $(3x+2)/(2x-1)-3/2 < epsilon$. This can be represented as $abs((3x+2)/(2x-1)-3/2)<epsilon$ which by @limits-at-infinity means that $limits(lim)_(x->infinity) (3x+2)/(2x-1) = 3/2$.
]

#exercise[
  If $a in RR$, then $limits(lim)_(x->infinity) a = a$.
]

#proof[
  Let $epsilon >0$ and $N in RR$ (e.g $N=0$), then $x>N$ implies trivially $abs(a-a)<epsilon$.
]

#exercise[If $limits(lim)_(x->infinity) f(x)$ exists, and $a in RR$, then $limits(lim)_(x->infinity) a f(x) = a limits(lim)_(x->infinity) f(x)$.]

#proof[
  Suppose that $limits(lim)_(x->infinity) f(x)$ exists. If $a=0$, then $limits(lim)_(x->infinity) 0 = 0$ by previous excercise. Thus, for the remainder of the proof we can assume $a!=0$.

  Suppose that $limits(lim)_(x->infinity) f(x) = L$. We must show that $limits(lim)_(x->infinity) a f(x) = a L$. Let $epsilon >0$. Since $epsilon >0$ and $abs(a) !=0$, then $epsilon/abs(a) > 0$ as well. Now, notice that since the former limit exists, then there is such $N in RR$ for which $x>N ==> abs(f(x)-L)<epsilon/abs(a)$.

  Multiplying both sides by $abs(a)$ yields $abs(a f(x)- a L) < epsilon$. Hence, for all $x>N$, $abs(a f(x)-a L)<epsilon$. We can conclude that $limits(lim)_(x->infinity) a f(x) = a L$.
]

#exercise[If both $limits(lim)_(x->infinity) f(x)$ and $limits(lim)_(x->infinity)g(x)$ exist, then $limits(lim)_(x->infinity) (f(x)+g(x))=limits(lim)_(x->infinity) f(x)+limits(lim)_(x->infinity) g(x)$.]

#proof[
  Let $limits(lim)_(x->infinity) f(x)= L$ and $limits(lim)_(x->infinity) g(x) = M$. We shall prove that $limits(lim)_(x->infinity) (f(x)+g(x))=L+M$.

  Let $epsilon>0$. By @limits-at-infinity there are such $N',N'' in RR$ for which $x>N' ==> abs(f(x)-L)<epsilon/2$ and $x>N'' ==> abs(g(x)-M) <epsilon/2$.

  Let $N=max{N',N''}$ and $x>N$. By triangle's inequality, $abs((f(x)+g(x))-(L+M))<=abs(f(x)-L)+abs(g(x)-M)<epsilon/2+epsilon/2 = epsilon$. Hence, for all $x>N$ it holds that $abs((f(x)+g(x))-(L+M))<epsilon$. Thus, we can conclude that $limits(lim)_(x->infinity) (f(x)+g(x))=L+M$.
]

#exercise[
  If both $limits(lim)_(x->infinity) f(x)$ and $limits(lim)_(x->infinity) g(x)$ exist, then $limits(lim)_(x->infinity) f(x) g(x) = (limits(lim)_(x->infinity) f(x)) dot (limits(lim)_(x->infinity) g(x))$.
]

#proof[
  Let $limits(lim)_(x->infinity) f(x) = L$ and $limits(lim)_(x->infinity) g(x) = M$. We shall show that $limits(lim)_(x->infinity) f(x) dot g(x) = L M$.

  Let $epsilon>0$. By @limits-at-infinity there are such $N', N'' in RR$ for which $x>N' ==> abs(f(x)-L)<epsilon/(2 (1+abs(M)))$ and $x>N'' ==> abs(g(x)-M) <epsilon/(2abs(L))$. Let $N=max{N',N''}$. Notice that $abs(f(x) g(x) - L M) = abs(f(x) g(x) - L M - L g(x) + L g(x)) = abs(g(x)(f(x)-L) + L(g(x)-M))<= abs(L) abs(g(x)-M) + abs(g(x)) abs(f(x)-L)$.

  Since $abs(g(x))=abs(g(x)-M + M)<= abs(g(x)-M) + abs(M)$, then if we choose $N''$ sufficiently large, so that $abs(g(x)-M)<1$, then $abs(g(x))<= 1 + abs(M)$. Hence
  $
    abs(f(x) g(x) - L M) <= abs(L) abs(g(x)-M) + (1+abs(M)) abs(f(x)-L) < abs(L) dot epsilon/(2 abs(L)) + (1+abs(M)) dot epsilon/(2(1+abs(M))) = epsilon/2 + epsilon/2 = epsilon
  $
  Since forall $epsilon >0$, there is such $N in RR$ for which, $x>N ==> abs(f(x) g(x) - L M)<epsilon$, then by @limits-at-infinity $limits(lim)_(x->infinity) f(x) g(x) = L M$.
]

#exercise[If both $limits(lim)_(x->infinity) f(x)$ and $limits(lim)_(x->infinity) g(x)$ exist, and $limits(lim)_(x->infinity) g(x) !=0$, then $limits(lim)_(x->infinity) f(x)/g(x) = (limits(lim)_(x->infinity)f(x))/(limits(lim)_(x->infinity)g(x))$.]

#proof[
  Let $limits(lim)_(x->infinity) f(x) = L$ and $limits(lim)_(x->infinity) g(x) = M$. We shall prove that $limits(lim)_(x->infinity) f(x) / g(x) = L/M$.

  Suppose $epsilon>0$ and by @limits-at-infinity there are such $N', N''$ for which $x>N' ==> abs(f(x)-L) <abs(M)/4 epsilon$ and $x>N'' ==> abs(g(x)-M) <min{abs(M^2)/(4(1+(abs(L))) epsilon, abs(M)/2}$.

  Now, let $N = max{N',N''}$ and observe that
  #math.equation(
    block: true,
    numbering: "(A)",
    $
      abs(f(x)/g(x)-L/M) & = abs(M f(x)- L g(x))/abs(M g(x)) \
                         & =abs(M f(x) - L g(x) - L M + L M)/abs(M g(x)) \
                         & = abs(M(f(x)-L)-L(g(x)-M))/abs(M g(x)) \
                         & <=1/abs(g(x)) dot abs(f(x)-L) + abs(L)/(M abs(g(x))) abs(g(x)-M)
    $,
  ) <ex-division-laws>

  Since $abs(g(x))=abs(g(x)-M+M)>=abs(M)-abs(g(x)-M)$ and by @limits-at-infinity, we can notice that for some $N'' in RR$, $x>N'' ==> abs(g(x)-M)<abs(M)/2$. Thus, $abs(g(x))>abs(M)/2$, so $1/abs(g(x))<2/abs(M)$. Back to @ex-division-laws
  $
    abs(f(x)/g(x)-L/M) & <= 2/abs(M) dot abs(f(x)-L) + (2abs(L))/abs(M^2) abs(g(x)-M) \
                       & < 2/abs(M) dot abs(M)/4 epsilon + (2 abs(L))/abs(M)^2 dot abs(M^2)/(4(1+abs(L))) epsilon \
                       & = epsilon/2 + abs(L)/(1+abs(L)) epsilon/2< epsilon/2+epsilon/2= epsilon
  $

  Thus, for all $x>N$, $abs(f(x)/g(x)-L/M)<epsilon$, so by @limits-at-infinity, $limits(lim)_(x->infinity) f(x)/g(x) = L/M$.
]

#exercise[If $limits(lim)_(x->infinity) g(x) = L$ and $f$ is continuous at $x=L$, then $limits(lim)_(x->infinity) f(g(x))=f(limits(lim)_(x->infinity) g(x))$.]

#proof[
  Let $epsilon>0$. Since $f$ is continous in $L$, then $abs(y-L) < eta ==> abs(f(y)-f(L))<epsilon$. Now, by the defintion of the limit, there is such $N in RR$ for which $x>N ==> abs(g(x)-L)<eta$. Settings $y=g(x)$ yields $abs(f(g(x))-f(L))<epsilon$. Thus, by @limits-at-infinity $limits(lim)_(x->infinity) f(g(x)) = f(limits(lim)_(x->infinity) g(x))$.
]

#exercise[Prove that $limits(lim)_(x->infinity) sin(x)$ does not exist.]

#proof[
  Suppose limit exists and $limits(lim)_(x->infinity) sin(x) = L$. $x>N ==> abs(sin(x)-L) < epsilon$. Let $epsilon=1/2$.
  Notice that both $a=pi k$, $b=pi/2+2pi l$ for $k,l in NN$ satisfy inequality $x>N$ if $k,l$ are large enough. Hence, $abs(sin(a)-L) = abs(L) <epsilon$ and $abs(sin(b)-L) = abs(1-L) <epsilon$. Thus $abs(L) + abs(1-L) <2 epsilon$ and by triangle's inequality $1=abs(L+(1-L))<=abs(L) + abs(1-L)$. Hence, $1<=abs(L)+abs(1-L)<1$, so $1<1$ which contradicts.
]
