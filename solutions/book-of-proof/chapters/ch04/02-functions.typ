#import "/templates/preamble.typ": *
= Functions

== Injective and Surjective Functions

#exercise[Let $A={1,2,3,4}$ and $B={1,2,3}$. Give an example of function $f: A->B$ that is neither injetive nor surjective.]

#solution[An example of such function is: $f={(1,1),(2,1),(3,2),(4,2)}$.

  - It is not injective, since $f(1)=f(2)$
  - It is not surjective, as $f(x)!=3$ for any $x in A$.
]

#exercise[Consider the logarithm function $ln: (0, infinity) -> RR$. Decide whether this function is injective and whether it is surjective.]

#solution[
  1. $ln$ is injective:
  Suppose $a,a' in (0,infinity)$ and $ln(a)=ln(a')$. Now:
  $
              ln(a) & = ln(a') \
    ln(a) - ln (a') & = 0 \
       ln(a/a') = 0 \
           a/a' = 1 \
             a = a'
  $
  Hence, $ln(x)$ is injective.

  2. $ln$ is surjective:
  Let $b in RR$. We seek $a in (0, infinity) subset RR$ for which $ln(a)=b$. Solving for $a$ gives $a=e^b$. Therefore, $ln(e^b)=b$ for any $b in RR$, which implies that $ln(x)$ is surjective.
]

#exercise[Consider the cosine function $cos: RR-> RR$. Decide whether this function is injective and whether it is surjective. What if it had been defined as $cos: RR -> [-1,1] subset RR$.]

#solution[
  1. $cos$ is not injective.
  Let $x=0$ and $x'=2pi$. Both $cos(x)=1 and cos(x')=1 => cos(x)=cos(x')$.

  2. $cos$ is not surjective.
  $cos(x)=2$ for no $x in RR$, since $Image(cos)=[-1,1] subset RR$.

  However, if it had been defined as $cos: RR -> [-1,1]$, function would have been stil not injective, but since cosine range is $[-1,1] subset RR$, then it would be surjective.
]

#exercise[A function $f: ZZ->ZZ times ZZ$ is defined as $f(n)=(2n,n+3)$. Verify whether this function is injective and whether it is surjective.]

#solution[
  1. *Injectivity:*
  Suppose, $a,a' in ZZ$ and $f(a)=f(a')$. We shall observe that:
  $
        f(a) & = f(a') \
    (2a,a+3) & = (2a',a'+3) \
    2a = 2a' & and a+3 = a'+3 \
      a = a' & and a = a' \
           a & = a'
  $
  Hence, $f$ is indeed injective.

  2. *Surjectivity*:
  Let $b=(1,4)$ and $a in ZZ$. Now:
  $
        f(a) & = (1,4) \
    (2a,a+3) & = (1,4) \
      2a = 1 & and a+3 = 4 \
     a = 1/2 & and a = 1
  $
  Since $1/2 != 1$, then no such integer $a$ exists.
  Therefore, $f$ is not surjective.
]

#exercise[A function $f: ZZ->ZZ$ is defined as $f(n)=2n+1$. Verify whether this function is injective and whether it is surjective.]

#solution[
  1. *Injectivity:*
  Let $a,a' in ZZ$ and $a != a'$. Now:
  $
         a & != a' \
        2a & != 2a' \
    2a + 1 & != 2a' +1 \
      f(a) & != f(a')
  $
  Therefore, $f$ is injective.

  2. *Surjectivity*:
  Let $b=2, a in ZZ$ and $f(a)=2$. We shall observe that:
  $
    f(a) & = 2 \
    2a+1 & = 2 \
      2a & = 1 \
       a & = 1/2 in.not ZZ
  $
  Since $1/2 in.not ZZ$, the element $2$ has no preimage in $ZZ$. Hence, $f$ is not surjective.
]

#exercise[A function $f: ZZ times ZZ -> ZZ$ defined as $f(m,n)=3n-4m$. Verify whether this function is injective and whether it is surjective.]

#solution[
  1. *Injectivity:*
  Let $m,n in ZZ$. We shall observe that:
  $
    f(1,1) = 3-4 = -1
  $
  While
  $
    f(4,5) = 3*5 - 4*4 = 15 - 16 = -1
  $
  Thus, $f(1,1) = f(4,5)$, implying that $f$ is not injective.

  2. *Surjectivity:*
  Let $b in ZZ$. We are looking for $m,n in ZZ$, such as $f(m,n)=b$. We shall observe that:
  $
        f(m,n) & = b \
         3n-4m & = b \
    3n + 4(-m) & = b
  $
  Since $gcd(3, 4)=1$, then by Bézout's identity, there exists $m_0,n_0 in ZZ$ such that $3n_0 - 4m_0 = 1$. Specifically, taking $n_0 = -1$ and $m_0 = -1$ gives:
  $
    3(-1) - 4(-1) = -3 + 4 =1
  $

  Multiplying this equation by $b$ yields:
  $3(-b) - 4(-b) = b$

  Thus, for any $b in ZZ$, we can choose $(m,n) = (-b,-b) in ZZ times ZZ$, giving $f(-b,-b)=b$.
  Hence, $f$ is surjective.
]

#exercise[A function $f: ZZ times ZZ -> ZZ times ZZ$ is defined as $f(m,n)=(m+n,2m+n)$. Verify whether this function is injective and whether it is surjective.]

#solution[
  1. *Injectivity:*
  Let $m,m',n,n' in ZZ$ and $f(m,n)=f(m',n')$. We shall see that:
  $
                     f(m,n) & = f(m',n') \
                 (m+n,2m+n) & = (m'+n',2m'+n') \
              m(1,2)+n(1,1) & = m'(1,2)+n'(1,1) \
    (m-m')(1,2)+(n-n')(1,1) & = 0 \
                     m-m'=0 & and n-n' =0 \
                     m = m' & and n = n'
  $
  Hence, $f$ is injective.

  2. *Surjectivity:*
  Suppose $(p,q) in ZZ times ZZ$. We are looking for $(k,l) in ZZ times ZZ$ for which $f(k,l)=(p,q)$. Now:
  $
    (k+l, 2k+l) & = (p,q) \
        p = k+l & and q = 2k+l \
        q-p = k & and 2p - q =l
  $
  Hence, $f(q-p,2p-q)=(p,q)$ and since $(q-p,2p-q) in ZZ times ZZ$, then $f$ is surjective.
]

#exercise[Prove that the function $f: RR \\ {2} -> RR \\ {5}$ defined by $f(x)=(5x+1)/(x-2)$ is bijective.]

#solution[
  1. *Injectivity:*
  Let $a,a' in RR \\ {2}$ and $f(a)=f(a')$. Now:
  $
                                         f(a) & = f(a') \
                                 (5a+1)/(a-2) & = (5a'+1)/(a'-2) \
                  (5a+1)/(a-2)-(5a'+1)/(a'-2) & = 0 \
    ((5a+1)(a'-2)-(5a'+1)(a-2))/((a-2)(a'-2)) & = 0 \
                    (5a+1)(a'-2)-(5a'+1)(a-2) & =0 \
      5a a' -10a +a' -2 - 5a a' + 10 a' -a +2 & = 0 \
                                     11(a'-a) & = 0 \
                                            a & = a'
  $
  Hence, $f(a)=f(a') => a = a'$ and $f$ is injective.

  2. *Surjectivity:*
  Suppose $b in RR \\ {5}$. We are looking for $a in RR \\ {2}$, such as $f(a)=b$. Now:
  $
                           f(a) & = b \
                   (5a+1)/(a-2) & = b \
               5 + (10+1)/(a-2) & = b \
                       11/(a-2) & = b-5 \
    "Since" b!=5: quad 11/(b-5) & =a-2 \
                     11/(b-5)+2 & = a \
                   (2b+1)/(b-5) & = a
  $

  Therefore, $f((2b+1)/(b-5))=b$, where $(2b+1)/(b-5) in RR \\ {2}$, since $(2b+1)/(b-5)=2 => 2b+1=2b-10 => 1= - 10$, which proves that $f$ is surjective.

  Since $f$ is both injective and surjective, then it is bijective.

  q.e.d
]

#exercise[Prove that the function $f: RR\\{1} -> RR \\ {1}$ defined by $f(x)=((x+1)/(x-1))^3$ is bijective.]

#solution[
  1. *Injectivity:*
  Let $a,a' in RR \\ {1}$ and $f(a)=f(a')$. We shall observe that:
  $
                                f(a) & = f(a') \
                     ((a+1)/(a-1))^3 & = ((a'+1)/(a'-1))^3 \
                         (a+1)/(a-1) & = (a'+1)/(a'-1) \
                         (a+1)(a'-1) & = (a'+1)(a-1) \
    cancel(a a') - a + a' cancel(-1) & = cancel(a a') - a' +a cancel(-1) \
                                   a & = a'
  $
  Therefore, $f(a)=f(a') => a=a'$, which implies that $f$ is injective.

  2. *Surjectivity:*
  Let $b in RR \\ {1}$. We are searching for $a in RR\\{1}$ for which $f(a)=b$. We shall observe that:
  $
               f(a) & = b \
    ((a+1)/(a-1))^3 & = b \
        (a+1)/(a-1) & = root(3, b) \
              a + 1 & = a root(3, b) - root(3, b) \
    a(1-root(3, b)) & = -1-root(3, b) \
                  a & = (-1-root(3, b))/(1-root(3, b)) & = (root(3, b)+1)/(root(3, b)-1) in RR \\ {1}
  $
  Hence, $f((root(3, b)+1)/(root(3, b)-1))=b$, which implies that $f$ is surjective.

  Since $f$ is both surjective and injective, then it is bijective as well.

  q.e.d
]

#exercise[Consider the function $theta: {0,1} times NN -> ZZ$ defined as $theta(a, b)=(-1)^a b$. Is $theta$ injective? Is it surjective? Bijective? Explain.]

#solution[
  First of all, suppose that $0 in.not NN$.

  1. *Injectivity:*
  Let $a,a' in {0,1}, thick b,b' in NN$ and let $theta(a, b)=theta(a', b')$. We shall observe that:
  $
         theta(a, b) & = theta(a', b') \
            (-1)^a b & = (-1)^(a') b' \
       (-1)^(a-a') b & = b' \
    (-1)^(a-a') b/b' & = 1
  $
  Since $b,b' in NN$, then $b/b'>0$, forcing $(-1)^(a-a')$ to be positive as well. The equation is therefore true if and only if $a-a'=0$ and $b=b'$. Since $theta(a, b)=theta(a', b')=>(a=a' and b=b')$, then $theta$ is injective.

  2. *Surjectivity:*
  Since, $0 in.not NN$ and $(-1)^a b =0 iff b=0$, then $theta(a, b) != 0 in ZZ$ and hence, $theta$ is not surjecitve.

  $theta$ is injective, but not surjective, therefore it is not bijective.
]

#exercise[Consider the function $theta: {0,1} times NN -> ZZ$ defined as $theta(a, b)=a-2a b +b$. Is $theta$ injective? Is it surjective? Bijective? Explain.]

#solution[
  1. *Injectivity:*
  Let $a,a' in {0,1}, thick b,b' in NN$ and let $theta(a, b)=theta(a', b')$. We shall observe that:
  $
    theta(a, b) & = theta(a', b') \
     a-2a b + b & = a' -2a' b' + b' \
  $
  There are four cases:
  - $a=1, a'=0$:
  $
    1-2b+b = b' \
    b+b' = 1
  $
  Since $b!=0$ and $b'!=0$, then there is no solution to this equation.

  - $a=1, a'=1$:
  $
    1-2b+b & = 1-2b'+b' \
        -b & = -b' \
         b & = b'
  $

  - $a=0, a'=1$:
  $
         b & = 1-2b'+b' \
    b + b' & = 1
  $
  No solution.

  - $a=0, a'=0$:
  $
    b = b'
  $

  Therefore, the equation is true if and only if $a=a'$ and $b=b'$. Hence, $theta(a, b)=theta(a', b') => (a=a' and b=b')$. Therefore, $theta$ is injective.

  2. *Surjectivity:*
  Let $c in ZZ$. We are looking for $(a,b) in {0,1} times NN$ for which $theta(a, b)=c$. We shall observe that:
  $
    theta(a, b) & = c \
    a -2a b + b & = c \
      1 - b = c & or b = c
  $
  Now, since $b in NN$, then $1-b in (-infinity, 0] subset ZZ$ and $b in [1, infinity) subset ZZ$. Since $([-infinity, 0] inter ZZ) union ([1, infinity] inter ZZ) = ZZ$, then $theta$ is surjective.
]

#exercise[Consider the function $f: RR^2->RR^2$ defined by formula $f(x,y)=(x y, x^3)$. Is $f$ injective? Is it surjective? Bijective? Explain.]

#solution[
  1. *Injectivity:*
  Suupose $x=0$, therefore $f(x,y)=(0,0)$ for every $y$. Hence, $f$ is not injective.

  2. *Surjectivity:*
  Let $(c,d) in RR^2$. We are searching for $(a,b) in RR^2$ such as $f(a,b)=(c,d)$. We shall observe that:
  $
                f(a,b) & = (c,d) \
            (a b, a^3) & = (c,d) \
               a b = c & and a^3 = d \
               a b = c & and a = root(3, d) \
      root(3, d) b = c & and a = root(3, d) \
    b = c / root(3, d) & and a = root(3, d)
  $
  Thus, $f(root(3, d),c/root(3, d))=(c,d)$. However, $d!=0$ and thus, $f$ is not surjective.
]

#exercise[Consider the function $theta: cal(P)(ZZ) -> cal(P)(ZZ)$ defined as $theta(X)=overline(X)$. Is $theta$ injective? Is it surjective? Bijective? Explain.]

#solution[
  1. *Injectivity:*
  Let $X, X' in cal(P)(ZZ)$ and $theta(X)=theta(X')$. Now:
  $
         theta(X) & = theta(X') \
      overline(X) & = overline(X') \
           U \\ X & = U \\ X' \
    U \\ (U \\ X) & = U \\ (U \\ X') \
                X & = X'
  $
  Hence, $theta$ is injective.

  2. *Surjectivity:*
  Let $Y in cal(P)(ZZ)$. We are searching for $X in cal(P)(ZZ)$ for which $theta(X)=Y$. We shall observe that:
  $
         theta(X) & = Y \
      overline(X) & = Y \
           U \\ X & = Y \
    U \\ (U \\ X) & = U \\ Y \
                X & = U \\ Y \
                X & = overline(Y)
  $
  Hence, $theta(overline(Y))=Y$ and therefore, $theta$ is surjective.

  Since $theta$ is both surjective and injective, then it is bijective.
]

#exercise[This question concerns functions $f: {A,B,C,D,E,F,G}->{1,2,3,4,5,6,7}$. How many such functions are there? How many of these functions are injective? How many are surjective? How many are bijective?]

#solution[
  Let $X = {A, B, C, D, E, F, G}$ and $Y = {1, 2, 3, 4, 5, 6, 7}$.
  Note that $|X| = |Y| = 7$.

  1. *Total number of functions:*
    Each of the $7$ elements in $X$ can be independently mapped to any of the $7$ elements in $Y$.
    Thus, there are $7^7 = 823543$ total functions.

  2. *Injective functions:*
    An injective function maps distinct elements of $X$ to distinct elements of $Y$.
    The number of choices for the outputs is $7 dot 6 dot 5 dot 4 dot 3 dot 2 dot 1 = 7! = 5,040$.

  3. *Surjective and Bijective functions:*
    Since $X$ and $Y$ are finite sets of the same cardinality ($|X| = |Y| = 7$), a function $f: X -> Y$ is injective if and only if it is surjective, which is also equivalent to being bijective.
    Therefore, there are $7! = 5040$ surjective functions and $7! = 5040$ bijective functions.
]

#exercise[This question concers functions $f: {A,B,C,D,E}->{1,2,3,4,5,6,7}$. How many such functions are there? How many of these functions are injective? How many are surjective? How many are bijective?]

#solution[
  Let $X={A,B,C,D,E}$ and $Y={1,2,3,4,5,6,7}$.
  Note that $|X|=5$ and $|Y|=7$.

  1. *Total number of functions:* Each of the $5$ elements can be independently mapped to any of the $7$ elements in $Y$.
  Thus, there are $7^5 = 16807$ total functions.

  2. *Injective functions:*
  The number of choices for the outputs is $7 dot 6 dot 5 dot 4 dot 3 = 7! / 2! = 2520$.

  2. *Surjective and Bijective functions:*
  There are none surjective functions, since $|X|<|Y|$. Hence, there are none bijective functions as well.
]

#exercise[This question concerns functions $f: {A,B,C,D,E,F,G}->{1,2}$. How many such functions are there? How many of these functions are injective? How many are surjective? How many are bijective?]

#solution[
  Let $X={A,B,C,D,E,F,G}$ and $Y={1,2}$.
  Note that $|X|=7$ and $|Y|=2$.

  1. *Total number of functions:* $7$ elements can be independently mapped to any of the $2$ elements in $Y$. Hence, $2^7=128$ is the total number of such functions.

  2. *Injective functions:* None of the functions can be injective, since $|X|>|Y|$.

  3. *Surjective functions:* There are only $2$ not surjective functions and hence, there are $126$ surjective functions.

  4. *Bijective functions:* None of the functions is bijective, since none of them are injective.
]

#exercise[Prove that the function $f: NN -> ZZ$ defined as $f(n)=((-1)^n (2n-1)+1)/4$ is bijective.]

#solution[
  1. *Injectivity:* Let $a,a' in NN$ and $f(a)=f(a')$. We shall observe that:
  $
                                         f(a) & = f(a') \
                          ((-1)^a (2a-1)+1)/4 & = ((-1)^a' (2a'-1)+1)/4 \
                              (-1)^a (2a-1)+1 & = (-1)^a' (2a'-1)+1 \
                                (-1)^a (2a-1) & = (-1)^a' (2a'-1) \
                           2a (-1)^a - (-1)^a & = 2a' (-1)^a' -(-1)^a' \
    2((-1)^a a-(-1)^a' a') + (-1)^a' - (-1)^a & = 0 \
  $
  We shall examine four cases:
  - both $a, a'$ are even:
  $
    2(a-a') & = 0 \
          a & = a'
  $
  - $a$ is even but $a'$ is odd:
  $
    2(a+a')+ 1+1 = 0 \
    2(a+a') = -2 \
    a+a' = -1
  $
  No solutions, since $a,a' in NN$.
  - $a$ is odd but $a'$ is even:
  $
    2(-a-a') -1-1 & = 0 \
            -a-a' & = 1 \
             a+a' & = -1
  $
  Analogously as in previous case, no solutions.
  - both $a,a'$ are odd:
  $
    2(-a+a') & = 0 \
           a & = a'
  $

  Therefore, the only possible solution is $a=a'$, meaning that $f(a) = f(a') => a=a'$. Thus, $f$ is injective.

  2. *Surjectivity:*
  Let $b in ZZ$. We are looking for $a in NN$, such as $f(a)=b$. Now:
  $
                   f(a) & = b \
    ((-1)^a (2a-1)+1)/4 & = b \
       ((2a-1)+1)/4 = b & or (-(2a-1)+1)/4 & = b \
                 a/2 =b & or (1-a)/2 =b \
                 a = 2b & or a = 1-2b
  $
  We shall see that $f(2b)=f(1-2b)=b$ and $2b$ is a natural number for $b>=1$, while $1-2b$ is a natural number for $b<=0$. Hence, every $b in ZZ$ has an element $a in NN$, therefore $f$ is surjective.

  q.e.d
]

#exercise[Prove that $f: NN times NN -> NN$ defined as $f(m,n)=2^(m-1) (2n-1)$ is bijective.]

#solution[
  1. *Injectivity:* Let $m,n,m',n' in NN$ and $f(m,n)=f(m',n')$. We shall observe that:
  $
                f(m,n) & = f(m',n') \
        2^(m-1) (2n-1) & = 2^(m'-1) (2n'-1) \
    2^(m-1 - (m' - 1)) & = (2n'-1)/(2n-1) \
              2^(m-m') & = (2n'-1)/(2n-1)
  $
  I could divide by $2n-1$, since for $n in NN$, $2n-1 !=0$. Next, without loss of generality, we shall establish that $m>=m'$. I can do that, since if $m'>m$, then we can rewrite the expression into this:
  $
    2^(m'-m) = (2n-1) / (2n'-1)
  $

  Now, we shall observe that if $m!=m'$, then left-hand side is even, while right-hand side is an odd number divided by an odd number, hence even $=$ odd. It is contradictionary, implying that $m=m'$. If so, then $(2n-1)/(2n'-1)=1$, which is true only if $n=n'$.
  Therefore, $f(m,n) = f(m',n') => (m=m' and n=n')$, leading to the conclusion that $f$ is injective.

  2. *Surjectivity:* We shall prove stronger statement: every natural number can be represented as $2^k dot l$, where $k in NN union {0}$ and $l$ is an odd natural number.
  Firstly, we will establish that every odd number can be represented as $2^k dot l$. If $k=1$, then $2^k dot l = l$ which is by defintion any possible odd natural number. Then, we shall show that every even number can be represented as $2^k dot l$. Suppose opposite, that there exists such even number $a$ for which $2^k dot l != a$. However, by fundamental theorem of arithmetics, both sides of the inequality can be factorized into the prime number product.
  Since $a$ is even, then $a=2^m dot p_1^a_1 dot p_2^a_2 dots$. Now, since every prime number except $2$ is odd, then their product is odd as well. Hence, it exists such odd number $l$, which equals $p_1^a_1 p_2^a_2 dots$ and so on. Therefore, statement is contradictory and every even number can be also represented as $2^k dot l$.

  Back to the function $f$. Let $c=2^q l$ for some $q >=0$ and odd $l in NN$. We shall observe that:
  $
            f(a,b) & = c \
    2^(b-1) (2a-1) & = 2^q l => f((l+1)/2,q+1)=c
  $
  Therefore, $f$ is surjective.

  $f$ is injective and surjective and thus it is also bijective.

  q.e.d
]
== The Pigeonhole Principle Revisitied

#exercise[Prove that if six integers are chosen at random, then at least two of them will have the same remainder when divided by 5.]

#proof[
  Let $A subset NN$ such that $|A|=6$. Consider the function $f:A -> ZZ_5$ defined by $f(x) = x mod 5$. Since $|A|>|ZZ_5|$, then $f$ is not injective and hence, there exist such $a,b in A$ for which $f(a)=f(b)$ and hence, $a equiv b pmod(5)$.

]

#exercise[Prove that if $a$ is a natural number, then there exist two unequal natural numbers $k$ and $l$ for which $a^k - a^l$ is divisible by $10$.]

#proof[
  Fix $a in NN$ and let $A={a,a^2,a^3,a^4,dots}$. Consider the function $f: A-> ZZ_10$ defined by $f(x)=x mod 10$. We know for sure, that $f$ cannot be injective, since $|A|>|ZZ_10|$. Now, if so, then exists $k, l in NN$, for which $f(a^k)=f(a^l)$. We shall use this fact to show that:
  $
    f(a^k) = f(a^l) & iff a^k mod 10 = a^l mod 10 \
                    & iff a^k equiv a^l pmod(10) \
                    & iff 10 divides (a^k - a^l)
  $
]

#exercise[Prove that for any six integers, $9$ divides the sum or difference of two of them.]

#proof[
  Working on modulo $9$, we shall divide $ZZ_9$ into $5$ equivalence classes on relation $tilde$. Those are:
  $
    [0] & = {0}, \
    [1] & = {1,8}, \
    [2] & = {2,7}, \
    [3] & = {3,6}, \
    [4] & = {4,5},
  $
  Now, let $A subset ZZ$ such that $|A|=6$ and consider $f: A -> ZZ_9 slash tilde$. We shall observe that $|A|>|ZZ_9 slash tilde|$ and hence $f$ is not injective. If so, then subset $A$ contains at least two elements from one equivalence class. If so, then there are two cases:
  Either those two remainders are equal or they are not. If they are equal, then their difference is divisible by $9$. Otherwise, their sum is divisible by $9$. Regardless of the case, $9$ divides the sum or difference of two elements from set $A$.

]

#exercise[Consider a square whose side-length is one unit. Select any five points from inside the square. Prove that at least two of these points are within $sqrt(2)/2$ units of each other.]

#proof[
  We know for sure that at least two points inside the square are within $sqrt(2)$ units of each other, since those are two opposite points on diagonal. Now, if we divide the square into 4 smaller squares, then selecting any $5$ points from the initial square will result in selecting at least two inside smaller square. This smaller square diagonal equals $sqrt(2)/2$, thus those two points are within this distance.

]

#exercise[Prove that any set of seven distinct integers contains a pair of integers whose sum or difference is divisible by $10$.]

#proof[
  Working on modulo $10$, we shall divide $ZZ_10$ into $5$ equivalence classes on relation $tilde$. Those are:
  $
    [0] & = {0}, \
    [1] & = {1,9}, \
    [2] & = {2,8}, \
    [3] & = {3,7}, \
    [4] & = {4,6}, \
    [5] & = {5}
  $
  Now, if we select two numbers from each equivalence class, they will either sum up to $10$ or their difference will be equal $0$, hence it will be divisible by $10$.

  Let $A subset ZZ$ such that $|A|=7$. Consider the function $f: A -> ZZ_10 slash tilde$. Since $|A|>|ZZ_10 slash tilde$, then $f$ is not injective. This means that at least two elements from the set $A$ maps to the same equivalence class. Hence, if we select $7$ random integers, two of those integers will belong to the same equivalence class and thus their sum or difference will be divisible by $10$.
]

#exercise[
  Given a sphere $S$, a _great circle_ of $S$ is the intersection of $S$ with a plane through its center. Every great circle divides $S$ into two parts. A hemisphere is the union of the great circle and one of these two parts. Prove that if five points are place arbitrarily on $S$, then there is a hemisphere that contains four of them.
]

#proof[
  Fix five points on the sphere $S$. Two points and the center of the sphere $S$ forms a great cirlce, dividing sphere into two parts. Remaining three points are distributed among those two parts. By the Pigeonhole principle one part contains two points hence, its hemisphere contains those two points and another two on the great circle. In total, it contains at least four points.
]

#exercise[
  Prove or disprove: Any subset $X subset.eq {1,2,3,dots,2n}$ with $|X|>n$ contains two (unequal) elements of which one divides the other.
]

#proof[
  Let $U={1,2,3,dots,2n}$ and $X subset.eq U$ where $|X|>n$. Suppose an equivalence relation $tilde$ defined as:
  $
    a tilde b iff (exists k in ZZ, quad a / b= 2^k)
  $
  Such equivalence relation is possible, since every $x in U$ can be uniquely written as $x = 2^k dot m$ for $k>=0$ and odd $m$. Now, consider the function $f: X -> U slash tilde$. Observe, that by defintion of $tilde$, every odd number has its own equivalence class. If so, then there is $(|U|)/2$ equivalence classes on $U$ and since $|U|=2n$, then there are $n$ equivalence classes.Therefore $|X|>n=|U slash tilde|$ and if so, then $f$ is not injective. Therefore, exists $a,b in X$ such that $a tilde b$. We shall observe that:
  $
    a tilde b & iff exists k in ZZ, quad a/b = 2^k \
  $
  Since $a,b in U$, then without loss of generality:
  $
    a tilde b & ==> exists k in NN, quad a/b = 2^k \
              & iff exists k in NN quad a = 2^k b \
              & ==> b divides a
  $

  Hence, by Pigeonhole principle there exist such $a,b in X$ for which $b divides a$.
]

== Composition
#exercise[
  1. Suppose $A = {5,6,8}, B= {0,1}, C= {1,2,3}$. Let $f: A-> B$ be the funciton $f = {(5,1),(6,0),(8,1)}$, and $g: B->C$ be $g={(0,1),(1,1)}$. Find $g compose f$
]

#solution[
  - $(g compose f)(5) = g(1) = 1$
  - $(g compose f)(6) = g(0) = 1$
  - $(g compose f)(8) = g(1) = 1$

  Hence, $g compose f = {(5,1),(6,1),(8,1)}$.
]

#exercise[Suppose $A={1,2,3,4}, B={0,1,2}, C={1,2,3}$. Let $f: A->B$ be $f={(1,0),(2,1),(3,2),(4,0)}$, and $g: B -> C$ be $g={(0,1),(1,1),(2,3)}$. Find $g compose f$.]

#solution[
  - $(g compose f)(1) = g(0) = 1$
  - $(g compose f)(2) = g(1) = 1$
  - $(g compose f)(3) = g(2) = 3$
  - $(g compose f)(4) = g(0) = 1$

  Thus, $g compose f = {(1,1),(2,1),(3,3),(4,1)}$.
]

#exercise[Suppose $A = {1,2,3}$. Let $f : A -> A$ be the function $f = {(1,2),(2,2),(3,1)}$, and let $g : A -> A$ be the function $g = {(1,3),(2,1),(3,2)}$. Find $g compose f$ and $f compose g$.]

#solution[
  - $(g compose f)(1) = g(2) = 1$
  - $(g compose f)(2) = g(2) = 1$
  - $(g compose f)(3) = g(1) = 3$

  - $(f compose g)(1) = f(3) = 1$
  - $(f compose g)(2) = f(1) = 2$
  - $(f compose g)(3) = f(2) = 2$

  Hence, $g compose f = {(1,1),(2,1),(3,3)}$ and $f compose g = {(1,1),(2,2),(3,2)}$
]

#exercise[Suppose $A = {a,b,c}$. Let $f : A -> A$ be the function $f = {(a,c),(b,c),(c,c)}$, and let $g : A -> A$ be the function $g = {(a,a),(b,b),(c,a)}$. Find $g compose f$ and $f compose g$.]

#solution[
  - $(g compose f)(a) = g(c) = a$
  - $(g compose f)(b) = g(c) = a$
  - $(g compose f)(c) = g(c) = a$

  - $(f compose g)(a) = f(a) = c$
  - $(f compose g)(b) = f(b) = c$
  - $(f compose g)(c) = f(a) = c$

  Hence, $g compose f = {(a,a),(b,a),(c,a)}$ and $f compose g = {(a,c),(b,c),(c,c)}$
]

#exercise[
  Consider the functions $f,g: RR -> RR$ defined as $f(x)=root(3, x+1)$ and $g(x)=x^3$. Find the formulas for $g compose f$ and $f compose g$.
]

#solution[
  $
    & g compose f = g(f(x)) = (root(3, x+1))^3 = x+1 \
    \
    & f compose g = f(g(x)) = root(3, x^3+1)
  $
]
