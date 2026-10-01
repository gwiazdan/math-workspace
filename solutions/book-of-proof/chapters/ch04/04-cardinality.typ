#import "/templates/preamble.typ": *

== Cardinality of Sets

#theorem(number: 14.1)[There exists a bijection $f: NN->ZZ$. Therefore $abs(NN)=abs(ZZ)$.]

#theorem(number: 14.2)[There exists no bijection $f: NN->RR$. Therefore $abs(NN) != abs(RR)$.]

Show that the two given sets have equal cardinality by describing a bijection from one to the other. Describe your bijection with a formula.

#exercise[$RR$ and $(0,infinity)$.]

#proof[
  Let $f(x)=e^x$.

  1. Injectivity: #v(0.1em) Suppose $f(x)=f(x')$ for $x,x' in RR$. Notice that $ f(x) = f(x') & iff e^x = e^x' \
                 & iff e^x - e^x' = 0 \
                 & iff e^x (1- e^(x-x'))=0 $ Since $e^x!=0$, then $1-e^(x-x')=0$ implies that $e^(x-x')=1$, which is true if $x-x'=0$, hence $x=x'$. Therefore, $f$ is bijective.

  2. Surjectivity on $(0,infinity)$. #v(0.1em) Suppose $b in (0,infinity)$. We are looking for $a in RR$, for which $f(a)=b$. Notice that $e^ln(b)=b$. Thus $f$ is surjective.

  Since there exist a bijective function between $RR$ and $(0,infinity)$, then $abs(RR)=abs((0,infinity))$.
]

#exercise[$RR$ and $(sqrt(2),infinity)$.]

#proof[
  Let $f(x)=sqrt(2)+e^x$.

  1. Injectivity: #v(0.1em) Suppose $f(x)=f(x')$ for $x,x' in RR$. Notice that $ f(x) = f(x') & iff sqrt(2) + e^x = sqrt(2) + e^x' \
                 & iff e^x - e^x' =0 \
                 & iff e^x(1-e^(x-x'))=0 $ Since $e^x!=0$, then $1-e^(x-x')=0$ implies that $e^(x-x')=1$, which is true if $x-x'=0$, hence $x=x'$. Therefore $f$ is bijective.

  2. Surjectivity on $(sqrt(2),infinity)$. #v(0.1em) Let $b in (sqrt(2),infinity)$. We are looking for $a in RR$, for which $f(a)=b$. Observe that $sqrt(2) + e^ln(b - sqrt(2))=b$, thus $f$ is surjective.

  Since there exist a bijection between $RR$ and $(sqrt(2),infinity)$, then $abs(RR)=abs((sqrt(2),infinity))$.
]

#exercise[$RR$ and $(0,1)$.]

#proof[
  Let $f(x)=1/pi arctan(x) + 1/2$.

  1. Injectivity: #v(0.1em) Notice that since $f'(x) = 1/pi(x^2+1)>0$, then $f$ is strictly increasing, hence it is injective.

  2. Surjectivity: #v(0.1em) Let $b in (0,1)$. We seek such $a in RR$ for which $f(a)=b$. Notice that $1/pi arctan(tan(pi b - pi/2)) + 1/2=b$, thus $f$ is surjective.

  Since there exist a bijection between $RR$ and $(0,1)$, then $abs(RR) = abs((0,1))$.
]

#exercise[The set of even integers and the set of odd integers.]

#proof[
  Let $f(x)=x+1$.

  1. Injectivity: #v(0.1em) Let $x,x'$ be even integers. Notice that $x!=x' ==> x+1!=x'+1$, so $x!=x' ==> f(x) !=f(x')$. Function $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $b$ be an odd number. Notice that $f(b-1)=b$, where $b-1$ is even number.

  Since there exist a bijection between the set of even and the set of odd integers, then both sets have same cardinality.
]

#exercise[
  $A={3k: k in ZZ}$ and $B={7k: k in ZZ}$.
]

#proof[
  $f(x)=7/3 x$

  1. Injectivity: #v(0.1em) Let $x,x' in A$. Notice that $x != x'$ implies $7/3 x != 7/3 x'$, so $f(x) != f(x')$. Hence, $f$ is injective.

  2. Surjectivity: #v(0.1em) Suppose $b in B$. We seek $a in A$ such that $f(a)=b$. Observe that $f(3/7 b)= b$, hence $f$ is surjective.

  Since there exist a bijection between both sets, then their cardinality is equal.
]

#exercise[
  $NN$ and $S={sqrt(2)/n: n in NN}$
]

#proof[
  Let $f(x)=sqrt(2)/x$.

  1. Injectivity: #v(0.1em) Let $x,x' in NN$. Observe that if $f(x)=f(x')$ implies $sqrt(2)/x=sqrt(2)/x'$ which is true if and only if $x=x'$. Hence $f$ is injective.

  2. Surjectivity: #v(0.1em) Suppose $b in S$. We seek $a in NN$ for which $f(a)=b$. Notice that $f(sqrt(2)/b)=b$, hence $f$ is surjective.

  Since there exist a bijection between both sets, their cardinality is equal.
]

#exercise[
  $ZZ$ and $S={dots, 1/8, 1/4, 1/2, 1, 2, 4, 8, 16, dots}$
]

#proof[
  Let $f(x)=2^x$.

  1. Injectivity: #v(0.1em) Let $x,x' in ZZ$. If $x!=x'$, then $2^x!=2^x'$, hence $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $b in S$. We seek $a in ZZ$ for which $f(a)=b$. Notice that $f(log_2(b))=b$, therefore $f$ is surjective.

  Since there exist a bijection between both sets, their cardinality is equal.
]

#exercise[$ZZ$ and $S={x in RR: sin(x)=1}$]

#proof[
  Suppose $f(x)=pi/2 + 2pi x$

  1. Injectivity: #v(0.1em) Let $x,x' in ZZ$. Observe that if $x!=x'$, then $pi/2+2pi x != pi/2 +2pi x'$, hence $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $b in S$. We seek $a in ZZ$. Notice that $f(b/(2pi)-1/4)=b$, hence $f$ is surjective.

  Since there exist a bijection between both sets, their cardinality is equal.
]

#exercise[${0,1} times NN$ and $NN$]

#proof[
  Let $f(x,y)=2y-x$

  1. Injectivity: #v(0.1em) Let $x,x',y,y' in NN$. If $f(x,y)=f(x',y')$, then $2y-x=2y'-x'$, so $x=x'$ and $y=y'$. Hence, $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $c in {0,1} times NN$. We seek $a in {0,1}$ and $b in NN$ for which $f(a,b)=c$. Observe that if $c$ is even, then $f(0,c/2)=c$ and if $c$ is odd, then $f(1,c/2)=c$, hence $f$ is surjective.

  Since there exist a bijection between both sets, their cardinality is equal.
]

#exercise[${0,1} times NN$ and $ZZ$]

#proof[
  Let $f(x,y) = cases(x=0: quad & y, x=1: quad &1-y)$

  1. Injectivity: #v(0.1em) Let $x,x' in {0,1}, y,y' in NN$. If $x!=x'$ and $y!=y'$, then without loss of generality $f(x,y)=y$ and $f(x',y')=1-y'$. Since $y=1-y'$ is false for every $y,y' in NN$, then $f(x,y)!=f(x',y')$. Therefore $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $c in ZZ$. We seek $a in {0,1}$ and $b in NN$ for which $f(a,b)=c$. Notice thatif $c>0$, then $f(0,c)=c$ and if $c<=0$, then $f(0,1-c)=c$. Thus, $f$ is surjective.

  There exist a bijection between both sets, and hence their cardinality is equal.
]

#exercise[$[0,1]$ and $(0,1)$]

#proof[
  Let $A={0,1,1/3,1/4,1/5,dots} subset [0,1]$.

  Select $f: [0,1]->(0,1)$ such that
  $
    f(x) = cases(1/3 quad & x=0, 1/4 quad &x=1, 1/(n+2) quad & x=1/n thick (n>=3), x quad & x in.not A)
  $

  1. Injectivity: #v(0.1em) Firstly, notice that the images of $f$ subdomains are
    - $I_1 = f({0})={1/3}$,
    - $I_2 = f({1})={1/4}$,
    - $I_3 = f({1/n: n in NN and n>=3})={1/5,1/6,1/7,dots}$,
    - $I_4 = f({x in.not A and x in [0,1]})=[0,1] without A$.
    $I_1,I_2,I_3$ are disjoint sets, and since $I_1 union I_2 union I_3 = A$ and $I_4 = [0,1] without A$, then $I_4 inter (I_1 union I_2 union I_3) = emptyset$. Lastly, observe that $I_1$ and $I_2$ are trivially injective, while $I_3$ is based on strictly decreasing and $I_4$ on stricly increasing function, hence $f$ is injective within each distinct subdomain, thus $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $b in (0,1)$. We seek $a in [0,1]$ such that $f(a)=b$.
    - If $b in.not A$, then $f(b)=b$,
    - If $b = 1/3$, then $f(0)=1/3$,
    - If $b = 1/4$, then $f(1)=1/4$,
    - If $b in A without {1/3,1/4}$, then $f(1/(1/b-2))=b$.
    Thus, $f$ is surjective.

  We have shown that there exist a bijection between both sets, hence their cardinality is equal.
]

#exercise[$NN$ and $ZZ$]

#proof[
  Select $f: NN->ZZ$ such that
  $ f(x) = cases(x/2 quad & x "is even", -(x-1)/2 quad & x "is odd") $


  1. Injectivity: #v(0.1em) Notice that the images of $f$ subdomains are
    - $I_1 = f({2n: n in NN})=NN$,
    - $I_2 = f({2n+1: n in NN})=-NN union {0}$
    Both $I_1$ and $I_2$ are disjoint sets, and both $x/2$ are $-(x-1)/2$ are strictly monotonic functions, hence $f$ is injective.

  2. Surjectivity: #v(0.1em) Let $b in ZZ$. We seek $a in NN$ for which $f(a)=b$.
    - If $b<=0$, then $f(-2b-1)=b$,
    - If $b>0$, then $f(2b)=b$.
    Thus, $f$ is surjective.

  Since there exist a bijection between $NN$ and $ZZ$, then $abs(NN)=abs(ZZ)$.
]

#exercise[$cal(P)(NN)$ and $cal(P)(ZZ)$]

#proof[
  Select $F: cal(P)(NN) -> cal(P)(ZZ)$ such that $F(A) = f[A] = {f(x): x in A}$, where $f: NN->ZZ$ is defined as in the previous exercise:
  $ f(x) = cases(x/2 quad & x "is even", -(x-1)/2 quad & x "is odd") $

  Keep in mind that we have shown that $f$ is a bijection.

  1. Injectivity of $F$: #v(0.1em) Let $A,A' in cal(P)(NN)$ and $A!=A'$. Notice that $F(A)= {f(x): x in A}$ and $F(A')={f(x): x in A'}$. Since $f$ is a bijection and without loss of generality, there is at least one element $a in A$ which does not belong to $A'$, then $f(a) in F(A)$ and $f(a) in.not F(A')$, hence $F(A)!=F(A')$, and thus $F$ is injective.

  2. Surjectivity of $F$: #v(0.1em) Let $B in cal(P)(ZZ)$. We seek $A in cal(P)(NN)$ for which $F(A)=B$. Since $f$ is surjective on $ZZ supset.eq B$, define $A$ as $A=f^(-1)[B]$. Now, $F(A)=f[A]=f(f^(-1)[B])=B$, which leads us to the conclusion that such $A$ exists and $F$ is surjective.


  There exists a bijection between both sets and hence $abs(cal(P)(NN))=abs(cal(P)(ZZ))$.

]

#exercise[$NN times NN$ and ${(n,m) in NN times NN: n<=m$}]
#proof[
  Select $f: NN^2 -> {(n,m) in NN^2: n<=m}$ such that
  $
    f(x,y) = (x,x+y-1)
  $

  1. Injectivity: #v(0.1em) Let $(x,y),(x',y') in NN^2$ and $f(x,y)=f(x',y')$. If so, then $(x,x+y-1)=(x',x'+y'-1)$, which implies $x=x'$ and $x+y-1=x'+y'-1$, hence $y=y'$, so $(x,y)=(x',y')$. Consequently, $f$ is injective.

  2. Surjectivity: #v(0.1em) Suppose $(c,d) in {(n,m) in NN^2: n<=m}$. We seek $(a,b) in NN^2$ for which f(a,b)=(c,d). Notice that $a=c$ and $a+b-1=d$, which implies that $b = d-c+1$. Since $c<=d$, $d-c+1>=1$, so $d-c+1 in NN$. Thus, $f(c,d-c+1)=(c,d)$.

  There exists a bijefction between both sets, hence their cardinality is equal.
]

Answer the following questions concerning bijections from this section.

#exercise[Find a formula for the bijection $f$ in Example 14.2
  #align(center)[
    #rect(inset: 10pt)[
      #table(
        columns: 17,
        stroke: none,
        align: center + horizon,
        table.vline(x: 1, start: 0, end: 2),
        table.hline(y: 1, start: 0, end: 17),

        [$n$],
        [$1$],
        [$2$],
        [$3$],
        [$4$],
        [$5$],
        [$6$],
        [$7$],
        [$8$],
        [$9$],
        [$10$],
        [$11$],
        [$12$],
        [$13$],
        [$14$],
        [$15$],
        [$dots$],
        [$f(n)$],
        [$0$],
        [$1$],
        [$-1$],
        [$2$],
        [$-2$],
        [$3$],
        [$-3$],
        [$4$],
        [$-4$],
        [$5$],
        [$-5$],
        [$6$],
        [$-6$],
        [$7$],
        [$-7$],
        [$dots$],
      )
    ]
  ]
]

#solution[
  We used this function in one of the exercises. This is $ f(x)= cases(x/2 quad & x "is even", & -(x-1)/2 quad x "is odd") $
]

#exercise[Verify that the function $f: (0,infinity)->(0,1)$ in Example 14.3 is a bijection.
  $
    f(x) = x/(x+1)
  $]

#proof[
  1. Injectivity: #v(0.1em) Let $x,x' in (0,infinity)$ and $f(x)=f(x')$. Then $ f(x)=f(x') & iff x/(x+1) = x'/(x'+1) \
               & iff (x'+1)x = x'(x+1) \
               & iff x'x + x = x'x + x' \
               & iff x=x' $
    Which means that $f$ is injective.

  2. Surjectivity: #v(0.1em) Suppose $b in (0,1)$. We seek $a in (0, infinity)$ for which $f(a)=b$. Notice that $f(-b/(b-1))=b$, while $-b/(b-1)>0$ and $limits(lim)_(b->1^-) -b/(b-1)=infinity$.

  Therefore, $f$ is bijective.
]

=== Countable and Uncountable Sets

#theorem(number: 14.4)[
  The set $QQ$ of rational number is countably infinite.
] <countably-infinite-rationals>

#theorem(number: 14.5)[
  If $A$ and $B$ are both countably infinite, then so is $A times B$.
] <countably-infinite-product>

#theorem(number: 14.6)[
  If $A$ and $B$ are both countably infinite, then their union $A union B$ is countably infinite.
] <countably-infinite-union>

#exercise[Prove that the set $A={ln(n): n in NN} subset.eq RR$ is countably infinite.]

#proof[
  Let $f: NN->A$ such that $f(x) = ln(x)$.

  1. Injectivity: #v(0.1em) Notice that for $n, n' in NN$, $ln(n)=ln(n')$ implies that $ln(n)-ln(n')=0$, so $ln(n/n')=0$, which is true only if $n/n'=1$, so $n=n'$. This means that $f$ is injective.
  2. Surjectivity: #v(0.1em) Since $A$ is by definition $Image(f)$, then $f$ is trivially surjective onto $A$.

  Therefore, $f$ is bijective and $abs(A)=abs(NN)=aleph_0$, thus $A$ is countably infinite.
]

#exercise[Prove that the set $A={(m,n) in NN^2: m<=n}$ is countably infinite]

#proof[
  We have shown in the previous exercise that $abs(NN times NN) = abs(A)$. By the @countably-infinite-product, $abs(NN)=abs(NN^2)$, hence $abs(NN)=abs(A)$.
]

#exercise[Prove that the set $A={(5n,-3n):n in ZZ}$]

#proof[
  Let $f: NN -> A$ such that $f(x)=(5x,-3x)$.

  1. Injectivity: #v(0.1em) Let $x,x' in NN$. If $x!=x'$, then $(5x,-3x)!=(5x',-3x')$. Thus, $f$ is injective.

  2. Surjectivity: #v(0.1em) Since $A = Image(f)$, then $f: NN arrow.r.twohead A$ trivially.

  Since there is a bijection between $NN$ and $A$, then $abs(A)=aleph_0$.
]

#exercise[Prove that the set of all irrational numbers is uncountable.]

#proof[
  Notice that $RR=QQ union RR without QQ$. We know that $abs(QQ)=aleph_0$ and $abs(RR)=frak(c)>aleph_0$. By @countably-infinite-union, since $QQ$ is coutable, but $RR$ is not, then $RR without QQ$ shall be uncountable as well.
]

#exercise[Prove or disprove: There exists a countably infinite subset of the set of irrational numbers.]

#proof[
  Suppose $A={n sqrt(2): n in NN} subset RR without QQ$

  Let $f: NN->A$ such that $f(x)=x sqrt(2)$.

  Notice that $f$ is trivially surjective since $Image(f)=A$ as well as injective as $x!=x' ==> x sqrt(2) != x' sqrt(2)$.

  Therefore, $abs(A)=aleph_0$\
]

#exercise[Prove or disprove: There exists a bijective function $f: QQ->RR$.]

#proof[This statement is false, since bijection requires both sets to have equal cardinality while $abs(RR)=frak(c)>aleph_0=abs(QQ)$.]

#exercise[Prove or disprove: The set $QQ^100$ is countably infinite.]

#proof[
  This statement is true.

  We know that if $abs(A)=aleph_0$, then $abs(A times A)=aleph_0$. By mathematical induction, $abs(A^k)=aleph_0=> abs(A^(k+1))=abs(A^k times A)=aleph_0$, thus $abs(A)=aleph_0 => abs(A^n)=aleph_0$ for all $n in NN$.

  We shall use this fact to show that since $abs(QQ)=aleph_0$, then $abs(QQ^100)=aleph_0$.
]

#exercise[Prove or disprove $ZZ times QQ$ is countably infinite.]

#proof[
  Since $abs(ZZ)=aleph_0$ and $abs(QQ)=aleph_0$, then $abs(ZZ times QQ) = aleph_0$.
]

#exercise[Prove or disprove: The set ${0,1} times NN$ iscountably infinite.]

#proof[
  We have shown in the previous exercises that $f: {0,1} times NN$ defined as $f(x,y)=2y-x$ is a bijection, and since $abs(NN)=aleph_0$, $abs({0,1} times NN) = abs(NN) = aleph_0$. Therefore ${0,1} times NN$ is countably infinite.
]

#exercise[Prove or disprove: The set $A={sqrt(2)/n:n in NN}$ is countably infinite.]

#proof[
  Let $f: NN->A$ defined as $f(x)=sqrt(2)/x$.

  Notice that $f$ is trivially surjective as $Image(f)=A$. It is also injective since for $x,x' in NN$, $sqrt(2)/x = sqrt(2)/x'$ implies $x=x'$.

  There exists a bijection between both sets and therefore $abs(A)=abs(NN)=aleph_0$. Set $A$ is countably infinite.
]

#exercise[Describe a partition of $NN$ that divides $NN$ into eight countably infinite subsets.]

#solution[
  Define equivalence realtion $tilde$ on $NN$ by $x tilde y iff 8 divides (x-y)$. Therefore, $NN slash tilde = {[0],[1],[2],[3],[4],[5],[6],[7]}$.

  Each class $[r]$ is countably infinite, since $f_r: NN -> [r]$ defined as $f_r (x)=8x+r$ is bijection.
]

#exercise[Describe a partition of $NN$ that divides $NN$ into $aleph_0$ countably infinite subsets.]

#solution[
  Define $p_"min" = min{p in P: p divides n}$, where $P$ is the set of prime numbers.

  Let $tilde$ be an equivalence realtion such that $x tilde y iff p_"min" (x) = p_"min" (y)$. Notice that $NN slash tilde$ partitions $NN$.
]

#exercise[
  Prove or disprove: If $A = {X subset.eq NN: X "is finite"}$, then $abs(A)=aleph_0$.
]

#proof[
  This statement is true.

  Notice that
  $ A= union.big_(k=0)^infinity A_k $
  Where $A_k={X subset.eq NN: abs(X)=k}$.


  Define $g_k: A_k -> g_k (A_k)$ such that
  $
    g_k (X) = (x_1,x_2,dots,x_k)
  $
  Where $x_1,x_2,dots, x_k$ are the elements of the set $X$ ordered: $x_1<x_2<dots<x_k$.

  1. Injectivity of $g_k$: #v(0.1em) Notice that if $g_k(X)=g_k(X')$, then each $x_1,x_2,dots,x_k$ belongs to both $X$ and $X'$, hence $X=X'$. Thus $g$ is injective.

  2. Surjectivity of $g_k$: #v(0.1em) $g_k$ is trivially surjective onto its image.

  Consequently, $g_k$ is a bijection, and since $g_k (A_k) subset NN^k$, then $abs(g_k (A_k))<=abs(NN^k)=aleph_0$.

  Lastly, notice that since $A$ is without a doubt infinite, then $abs(A)>= aleph_0$, which leads us to the conclusion that $abs(A)=aleph_0$.
]

#exercise[Suppose $A={(m,n)in NN times RR: n = pi m}$. Is it true that $abs(NN)=abs(A)$?]

#proof[
  Define $f: NN -> A$ such that
  $
    f(k) = (k, pi k)
  $

  1. Injectivity: #v(0.1em) Suppose $k!=k'$ for $k,k' in NN$. Notice that it implies $(k, pi k)!=(k', pi k')$, thus $f$ is injective.

  2. Surjectivity onto $A$: #v(0.1em) Notice that $A$ can be rewritten into $A={(n, pi n): n in NN}={f(n): n in NN}$, hence $A=f(NN)$ and $f: NN arrow.r.twohead A$.

  Since $f$ is a bijection $NN->A$, then $abs(A)=abs(NN)=aleph_0$.
]

#exercise[Theorem 14.5 implies that $NN times NN$ is countably infinite. Construct an alterante proof of this fact by showing that the function $phi: NN times NN -> NN$ defined as $phi(m, n) = 2^(n-1)(2m-1)$ is bijective.]

#proof[
  Define $phi: NN times NN -> NN$ such that
  $
    phi(m, n) = 2^(n-1) (2m-1)
  $

  1. Injectivity: #v(0.1em) Let $m,n, m',n' in NN$. Notice that $ phi(m, n)=phi(m', n') & iff 2^(n-1)(2m-1) = 2^(n'-1)(2m'-1) \
                          & iff 2^(n-1 - (n'-1)) (2m-1) = (2m'-1) \
                          & iff 2^(n-n')(2m-1)/(2m'-1) = 1 \ $ Since $2m'-1$ and $2m-1$ are odd numbers, then $(2m-1)/(2m'-1)$ cannot be equal $1/2^k$ for any $k in NN$. Hence, $2^(n-n')=1$ and $(2m-1)/(2m'-1)=1$ implies $n=n'$ and $m=m'$, which leads us to the conclusion that $phi$ is injective.

  2. Surjectivity: #v(0.1em) Take $b in NN$. We seek $m,n in NN$ such that $phi(m, n)=b$. By Fundamental Theorem of Arithmetics, $b = 2^(k_1-1) dot 3^(k_2-1) dot 5^(k_3-1)dot dots dot p_n^(k_n-1)$. Thus, $n=k_1$, while $m=(3^(k_2-1) dot 5^(k_3-1) dot dots dot p_l^(k_l-1)+1)/2$. The right-hand side is a natural number because the product of odd prime powers is odd, so adding $1$ yields an even number divisible by $2$. Direct substituion yields $phi(m, n)=b$, so $phi$ is surjective.

  Since $phi: NN^2-> NN$ is a bijection, we conclude that $abs(NN^2)=abs(NN)=aleph_0$.
]

=== Comparing Cardinalities

#definition(number: 14.4)[Suppose $A$ and $B$ are sets.
  1. $abs(A)=abs(B)$ means there is a bijection $A->B$.
  2. $abs(A)<abs(B)$ means there is an injection $A->B$, but not bijection $A->B$.
  3. $abs(A)<=abs(B)$ means there is an injection $A->B$.
]

#theorem(number: 14.7)[If $A$ is any set, then $abs(A)<abs(cal(P)(A))$.]

#theorem(number: 14.8)[An infinite subset of a countably infinite set is countably infinite.]

#theorem(number: 14.9)[If $U subset.eq A$, and $U$ is uncountable, then $A$ is uncountable.]

#exercise[Suppose $B$ is an uncountable set and $A$ is a set. Given that there is a surjective function $f:A->B$, what can be said about the cardinality of $A$?]

#solution[
  This means that $abs(A)>=abs(B)$, therefore $abs(a)>=abs(b)>aleph_0$. To conclude, $A$ is uncountable as well.
]

#exercise[Prove that the set $CC$ of complex numbers is uncountable.]

#proof[
  Since $RR subset.eq CC$ and $RR$ is uncountable, then $CC$ is uncountable as well.
]

#exercise[
  Prove or disprove: If $A$ is uncountable, then $abs(A)=abs(RR)$.
]

#solution[
  This statement is false.

  Notice that $abs(cal(P)(RR))>abs(RR)$ while both sets are uncountable.
]

#exercise[Prove or disprove: If $A subset.eq B subset.eq C$ and $A$ and $C$ are countably infinite, then $B$ is countably infinite.]

#proof[
  Since $A subset.eq B$, and $A$ is infinite, we know that $B$ is infinite as well, and due to the fact that $B subset.eq C$, we know for sure that $B$ is countable as $C$.
]

#exercise[Prove or disprove: The set ${0,1} times RR$ is uncountable.]

#proof[
  Notice that since $abs({0,1})=2$ and $abs(RR)=frak(c)$, then $abs({0,1} times RR) = 2 dot frak(c) = frak(c)$, hence set ${0,1} times RR$ is uncountable.
]

#exercise[
  Prove or disprove: Every infinite set is a subset of countably infinite set.
]

#solution[
  False.

  $RR$ is an infinite set, but $abs(RR)>aleph_0$, hence $RR$ is not a subset of any countably infinite set.
]

#exercise[Prove or disprove: If $A subset.eq B$ and $A$ is countably infinite and $B$ is uncountable, then $B without A$ is uncountable.]

#proof[
  Notice that if $X$ and $Y$ are countably infinite, then their union $X union Y$ is countably infinite.

  With this in mind, notice that in this particular case $B = A union (B without A)$. If $B without A$ were countable, then so would $B$ be. Since $B$ is uncountable, then $B without A$ is uncountable as well.
]

#exercise[Prove or disprove: The set ${(a_1,a_2,a_3,dots):a_i in ZZ}$ of infinite sequences of integers is countably infinite.]

#solution[
  False.

  Suppose that this set is countable. Hence, its elements can be written in a list
  $
    s_1 & = (s_(1,1), s_(1,2),s_(1,3),s_(1,4),dots) \
    s_2 & = (s_(2,1), s_(2,2),s_(2,3),s_(2,4),dots) \
    s_3 & = (s_(3,1), s_(3,2),s_(3,3),s_(3,4),dots) \
        & dots.v
  $

  Let $d = (d_1,d_2,d_3,dots) in S$ be a sequence of integers. Let $d_n = s_(n,n)+1$ for all $n in NN$.

  However, for every $n in NN$, $d$ differs from $s_n$ at the $n$-th position because $d_n = s_(n,n) + 1 != s_(n,n)$. Thus, $d$ cannot appear anywhere on the list.

  Consequently, set ${(a_1,a_2,a_3,dots): a_i in ZZ}$ is uncountable.]

#exercise[
  Prove that if $A$ and $B$ are finite sets with $abs(A)=abs(B)$, then any injection $f:A->B$ is also a surjection. Show this is not necessarily true if $A$ and $B$ are not finite.
]

#proof[
  Let $f$ be an injection and $f(A) subset.eq B$. By injectivity, $abs(A)=abs(f(A))$, and by transitive property of equality, $abs(f(A))=abs(B)$. This and $f(A) subset.eq B$ implies that $f(A)=B$. Consequently, $f$ is surjective.

  Notice that $f:NN->NN$ defined as $f(k)=k+1$ for $k in NN$ is trivially injective, but not surjective, since $1 in NN$, but $k+1 = 1 iff k=0 in.not NN$.
]

#exercise[Prove that if $A$ and $B$ are finite sets with $abs(A)=abs(B)$, then any surjection $f: A->B$ is also an injection. Show this is not necessarily true if $A$ and $B$ are not finite.]

#proof[
  Let $f$ be a surjection, thus $f(A)=B$. This equality implies that both sets have same cardinality $abs(f(A))=abs(B)$, and by transitive property of equality, $abs(f(A))=abs(A)$. Suppose $f$ were not injective, then at least two elements would be mapped into one element and theimage of $A$ would be smaller than $A$, which contradicts with $abs(f(A))=abs(A)$. Consequently, $f$ is injective.

  However, define $f: NN->NN$ such that $f(n)=floor(n/2)$. Notice that $f$ is surjecitve since for any $k in NN$, $f((2k)/2)=k$, but not injective, since for example $f(2)=1$ and $f(3)=1$.
]

=== The Cantor-Bernstein-Schröder Theorem

#theorem(number: 14.10, title: "The Cantor-Bernstein-Schröder Theorem")[
  If $abs(A)<=abs(B)$ and $abs(B)<=abs(A)$, then $abs(A)=abs(B)$. In other words, if there are injections $f:A->B$ and $g:B->A$, then there is a bijection $h: A->B$.
]

#proof[
  Suppose there are injections $f: A->B$ and $g:B->A$. Then, in particular, $g: B-> g(B)$ is a bijection from $B$ onto the range of $g$, so it has an inverse $g^(-1):g(B)->B$. Consider the subset
  $
    G = union.big^infinity_(k=0) (g compose f)^k (A without g(B)) subset.eq A
  $
  Let $W = A without G$, so $A = G union W$ is partitioned into two sets $G$ and $W$. Define a function $h: A->B$ as
  $
    h(x) = cases(f(x) quad & "if" x in G, g^(-1) (x) quad & "if" x in W)
  $
  Notice that this makes sense: if $x in W$, then $x in.not G$, so $x in.not A without g(B) subset.eq G$, hence $x in g(B)$, so $g^(-1) (x)$ is defined.

  To finish the proof, we must show that $h$ is both injective and surjective. For injective, we assume $h(x)=h(y)$, and deduce $x=y$. There are three cases to consider. First, if $x$ and $y$ are both in $G$, then $h(x)=h(y)$ means $f(x)=f(y)$, so $x=y$ because $f$ is injective. Second, if $x$ and $y$ are both in $W$, then $h(x)=h(y)$ means $g^(-1) (x) = g^(-1) (y)$, and applying $g$ to both sides gives $x=y$. In the third case, one of $x$ and $y$ is in $G$ and the other is in $W$. Say $x in G$ and $y in W$. The definition of $G$ gives $x = (g compose f)^k (z)$ for some $k >= 0$ and $z in A without g(B)$. Note $h(x)=h(y)$ now implies $f(x)=g^(-1)(y)$, that is, $f((g compose f)^k (z))=g^(-1) (y)$. Applying $g$ to both sides gives $(g compose f)^(k+1) (z) =y$, which means $y in G$. But this is impossible, as $y in W$. Thus this third case cannot happen. But in the first two cases $h(x)=h(y)$ implies $x=y$, so $h$ is injective.

  To see that $h$ is surjective, take any $b in B$. We will find an $x in A$ with $h(x)=b$. Note that $g(b) in A$, so either $g(b) in W$ or $g(b) in G$. In the first case, $h(g(b)) = g^(-1) (g(b)) = b$, so we have an $x=g(b) in A$ for which $h(x)=b$. In the second case, $g(b) in G$. The definition of $G$ shows
  $
    g(b) = (g compose f)^k (z)
  $
  for some $z in A without g(B)$ and $k>=0$. In fact we have $k>0$, because $k=0$ would give $g(b) = (g compose f)^0 (z) = z in A without g(B)$, but clearly $g(b) in.not A without g(B)$. Thus
  $
    g(b) & = (g compose f) compose (g compose f)^(k-1) (z) \
         & = g(f((g compose f)^(k-1) (z)))
  $
  Because $g$ is injective this implies
  $
    b = f((g compose f)^(k-1) (z))
  $
  Let $x=(g compose f)^(k-1) (z)$, so $x in G$ by definition of $G$. Observe that $h(x)=f(x)=f((g compose f)^(k-1) (z)) =b$. We have now seen that for any $b in B$, there is an $x in A$ for which $h(x)=b$. Thus $h$ is surjective.

  Since $h: A->B$ is both injective and surjective, it is also bijective.
]

#exercise[Show that if $A subset.eq B$ and there is an injection $g:B->A$, then $abs(A)=abs(B)$.]

#proof[
  Since $A subset.eq B$, then $abs(A) <= abs(B)$, and because $g$ is injective, then $abs(g(B)) = abs(B)$. We know for sure that $g(B) subset.eq A$, thus $abs(g(B)) <= abs(A)$.

  We have shown that $abs(A) <= abs(B)$ and $abs(A) >= abs(B)$, which by Cantor-Bernstein-Schröder Theorem implies that $abs(A)=abs(B)$.
]

#exercise[Show that $abs(RR^2)=abs(RR)$.]

#proof[
  We shall begin by showing $abs((0,1) times (0,1))=abs((0,1))$.

  Define $f: (0,1)^2->(0,1)$ by using decimal expansion. For any $x, y in (0,1)$, represent them uniquely without infinite trailing nines as:
  $ x = 0.x_1 x_2 x_3 dots,quad y = 0.y_1 y_2 y_3 dots $

  We decompose these expansions into blocks of digits $x_i, y_i$, where each block consists of zero or more zeroes followed by a non-zero digit.

  Let $f(x,y) = 0.x_1 y_1 x_2 y_2 x_3 y_3 dots$. Since each block is uniquely identified by its non-zero terminal digit, the original numbers $x$ and $y$ can be unambigously reconstructed from $f(x,y)$. Thus, $f$ is injective, which implies $abs((0,1)^2) <= abs((0,1))$.

  Define $g: (0,1) -> (0,1)^2$ such that $g(x)=(x,x)$. For any $x,x' in (0,1)$ such that $x!=x'$ it is easy to show that $(x,x)!=(x',x')$, so $g(x)!=g(x')$. Hence, $g$ is injective and $abs((0,1)) <= abs((0,1)^2)$.

  By Cantor-Bernstein-Schröder Theorem, since both $abs((0,1)^2) <= abs((0,1))$ and $abs((0,1)) <= abs((0,1)^2)$, then $abs((0,1))=abs((0,1)^2)$.

  Now, as $abs(RR)=abs((0,1))$ as well as $abs(RR^2)=abs((0,1)^2)$, then $abs(RR)=abs((0,1))=abs((0,1)^2)=abs(RR^2)$, establishing that $abs(RR)=abs(RR^2)$.
]

#exercise[Let $cal(F)$ be the set of all functions $NN->{0,1}$. Show that $abs(RR)=abs(cal(F))$.]

#proof[
  Since every $f_k in F$ can be represented as a list $0,1,0,1 dots$, we shall state that $abs(cal(F))=abs(P)$, where $P={(a_1, a_2,a_3, dots): a_i in {0,1}}$.

  Define $g: P -> [0,1)$ such that $g(x_1,x_2,x_3,dots)=0.x_1 x_2 x_3 dots$. Notice that each element of $P$ has its unique decimal representation, hence $f$ is injective, which implies $abs(P) <= abs([0,1))$.

  Now, let $h: [0,1) -> P$ defined as $h(0.b_1 b_2 b_3 dots_2) = (b_1, b_2, b_3, dots)$. Since every element of $[0,1)$ has its unique binary representation, then $h$ is injective as well, and $abs([0,1)) <= abs(P)$.

  By Cantor-Bernstein-Schröder Theorem, $abs([0,1))= abs(P)$, and since $abs([0,1))=abs(RR)$ and $abs(P)=abs(cal(F))$, we can conclude that $abs(cal(F))=abs(RR)$.
]

#exercise[Let $cal(F)$ be the set of all functions $RR->{0,1}$. Show that $abs(RR)<abs(cal(F))$.]

#proof[
  Define $g: cal(F) -> cal(P)(RR)$ such that $g(f) = f^(-1)[{1}]={x in RR: f(x)=1}$. Notice that since codomain of $f,f' in cal(F)$ is ${0,1}$, then $g(f)=g(f')$ basically implies that both functions return $1$ and $0$(!) for same arguments, therefore both functions are identical. Consequently, $g$ is injective, thus $abs(cal(F)) <= abs(cal(P)(RR))$.

  Now, define $h: cal(P)(RR)->cal(F)$ such that for any subset $X in cal(P)(RR)$, $h(X)$ is the function $f: RR -> {0,1}$ given by:

  $ f(x)=cases(1 quad & "if" x in X, 0 quad & "if" x in.not X) $ Observe that $h$ is injective by the same reasoning as $f$, hence $abs(cal(P)(RR))<=abs(cal(F))$.

  By Cantor-Bernstein-Schröder Theorem, $abs(cal(P)(RR))=abs(cal(F))$, and thus by Cantor's Theorem $abs(cal(F))>abs(RR)$
]

#exercise[Consider the subset $B={(x,y): x^2+y^2<=1}subset.eq RR^2$. Show that $abs(B)=abs(RR^2)$.]

#proof[We will construct simple inclusion to apply the Cantor-Bernstein-Schröder Theorem.

  First, since $B subset.eq RR^2$, the inclusion map $i:B->RR^2$ defined by $i(x,y)=(x,y)$ is naturally injective, hence $abs(B)<=abs(RR^2)$.

  To establish reverse inequality, consider the open square $S = (-1/2, 1/2) times (-1/2, 1/2)$. For any $(x,y) in S$, we have $(-1/2)^2+(1/2)^2 = 1/2 <=1$, which implies $S subset.eq B$.

  Since $S approx (0,1)^2 approx RR^2$, we have $abs(S)=abs(RR^2)$. The inclusion map $j: S->B$ is injective, whic implies $abs(RR^2)<=abs(S)<=abs(B)$.

  Finally, by Cantor-Bernstein-Schröder Theorem, $abs(B)=abs(RR^2)$.
]

#exercise[Show that $cal(P)(NN times NN)=cal(P)(NN)$.]

#proof[
  To prove this we shall first prove this lemma:
  $ abs(A)=abs(B)==>cal(P)(A)=cal(P)(B) $

  Establish that since $abs(A)=abs(B)$, then there are bijections $f: A->B$ and $g: B->A$.

  Define $F: cal(P)(A) -> cal(P)(B)$ such that $F(X)=f[X]={f(x):x in X}$. Let $X,X' in cal(P)(A)$ and $F(X)=F(X')$. Since $X=f^(-1)[f[X]] = f^(-1)[f[X']]= X'$, then $F$ is injective, hence $cal(P)(A) <= cal(P)(B)$.

  Then, we shall define $G: cal(P)(B) -> cal(P)(A)$ such that $G(X)=g[X]={g(x):x in X}$. Since $g$ is bijective as well, then by the same reasoning $G$ is injective, and $cal(P)(B) <= cal(P)(A)$.

  By Cantor-Bernstein-Schröder Theorem, $cal(P)(A)=cal(P)(B)$.

  Now, establish that $abs(NN) = abs(NN times NN)$ and with our newly proven lemma, we shall conclude that $abs(cal(P)(NN))=cal(P)(NN times NN)$.
]

#exercise[Prove or disprove: If there is an injection $f: A->B$ and a surjection $g: A->B$, then there is a bijection $h:A->B$.]

#proof[
  This statement is true.

  Keep in mind two facts:
  1. Injection $A->B$ is possible only if $abs(A)<=abs(B)$.
  2. Surjection $A->B$ is possible only if $abs(B)<=abs(A)$.

  By the Cantor-Bernstein-Schröder Theorem, $abs(A)<=abs(B)$ and $abs(B) <= abs(A)$, then $abs(A)=abs(B)$.

  Therefore, there exists a bijection $A->B$.
]
