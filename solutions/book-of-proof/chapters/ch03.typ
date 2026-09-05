#import "/templates/preamble.typ": *

= III More on Proof

== Proving Non-Conditional Statements

#exercise[Suppose $a in ZZ$, then $x$ is even if and only if $3x+5$ is odd.]

#solution[
  Let $x in ZZ$. Working modulo $2$, we have:
  $
    & 3x+5 equiv x+1 pmod(2)
  $
  As $x$ is even, then $x+1$ is odd, thus $3x+5$ is odd.

  We can invert this as if $x+1$ is odd, then $x$ is even, leading to the conclusion that $x$ is even if and only if $3x+5$ is odd.

  q.e.d
]

#exercise[Suppose $x in ZZ$. Then $x$ is odd if and only if $3x+6$ is odd.]

#solution[
  Let $x in ZZ$. Working modulo $2$, we have:
  $
    & 3x+6 equiv x pmod(2) \
  $
  Therefore, if $x$ is odd, then $3x+6$ is odd as well. Moreover, if $x$ is even, then $3x+6$ is even, proving contrapositive statement that if $3x+6$ is odd, then $x$ is odd. Thus, $x$ is odd, *if and only if* $3x+6$ is odd.

  q.e.d
]

#exercise[Given an integer $a$, then $a^3+a^2+a$ is even if and only if $a$ is even.

  Let $a in ZZ$. Working modulo $2$, we have:
  $
    & a^3+a^2+a pmod(2) \
    & a(a^2+a+1) pmod(2) \
  $
  If $a=0$, then $a^3+a^2+a=0$ and if $a=1$, then $a^3+a^2+a=1+1+1=1$. Therefore, $a equiv a^3+a^2+a pmod(2)$.

  It means, that $a^3+a^2+a$ is even if and only if $a$ is even.

  q.e.d
]

#exercise[Given an integer $a$, then $a^2+4a+5$ is odd if and only if $a$ is even.]

#solution[
  Working modulo $2$, if $a in ZZ$, then:
  $
    & a^2+cancel(4a)+5 pmod(2) \
    & a^2 + 1 pmod (2) \
  $
  As in $ZZ_2$, $a^2 equiv a pmod(2)$.
  $
    & a^2+4a+5 equiv a + 1 pmod(2)
  $

  Thus, if $a$ is even, then $a^2+4a+5$ is odd and if $a$ is odd, then $a^2+4a+5$ is even. Therefore, $a^2+4a+5$is odd if and only if $a$ is even.

  q.e.d
]

#exercise[An integer $a$ is odd if and only if $a^3$ is odd.]

#solution[
  Since $a^n equiv a pmod(2)$, then if $a$ is odd, then $a^3$ is odd and if $a$ is even, then $a^3$ is even.

  Therefore, $a$ is odd if and only if $a^3$ is odd.

  q.e.d
]

#exercise[Suppose $x,y in RR$. Then $x^3+x^2 y = y^2+x y$ if and only if $y=x^2$ or $y=-x$.]

#solution[
  Let $x,y in RR$.

  $
    & x^3+x^2 y = y^2 + y \
    & x^2 y-y^2 +x^3 - x y = 0 \
    & x^2(x+y)-y(x+y) = 0 \
    & (x+y)(x^2-y) = 0
  $

  If we assume that $x$ is fixed, then it is obvious that this is a quadratic equation. Equation is satisfied *if and only if* $y=x^2$ or $y=-x$.

  q.e.d
]

#exercise[Suppose $x,y in RR$. Then $(x+y)^2=x^2+y^2$ if and only if $x=0$ or $y=0$.]

#solution[
  Assume that $(x+y)^2=x^2+y^2$ for some $x,y in RR$, where $x!=0$ and $y!=0$.

  $
    & (x+y)^2 = x^2+y^2 \
    & x^2+2x y +y^2 = x^2 + y^2 \
    & 2 x y = 0 \
    & x y =0
  $

  However, no product of $x, y in RR \\ {0}$ can be equal 0, as $RR \\ {0}$ makes up a multiplicative group, implying that each operation is closed on the set $RR \\ {0}$. Hence, $(x+y)^2=x^2+y^2$ implies $x=0$ or $y=0$.
  On the other hand, without loss of generality, assume that $y=0$. Therefore:
  $
    & (x+0)^2=x^2+0^2 \
    & x^2 = x^2
  $
  Analogously if we assume that $x=0$. Hence, implication is bidirectional and $(x+y)^2=x^2+y^2 <=> x=0 or y=0$.

  q.e.d
]

#exercise[Suppose $a,b in ZZ$. Prove that $a equiv b pmod(10)$ if and only if $a equiv b pmod(2)$ and $a equiv b pmod(5)$.]

#solution[
  Since $a equiv b pmod(2)$ and $a equiv b pmod(5)$, then $2 divides (a-b)$ and $5 divides (a-b)$. For any integer $c$, $10 divides c iff 2 divides c and 5 divides c$.
  Therefore, $10 divides (a-b)$ and thus: $a equiv b pmod(10)$.

  Hence, $a equiv b pmod(2) and a equiv b pmod(5) iff a equiv b pmod(10)$.

  q.e.d
]

#exercise[Suppose $a in ZZ$. Prove that $14 divides a iff 7 divides a$ and $2 divides a$.]

#solution[
  Let $2 divides a$. Hence, $a=2 b$ for some $b in ZZ$. Next, we shall remember that $7 divides a$ as well and if so, then $7 divides 2 b$. Since $7$ cannot divide $2$, then it must divide $b$. Analogously, as we did with the divisiblity by $2$, $b=7c$ for some $c in ZZ$. Thus: $a$ equals $2 dot 7 c$, which evaluates to $14 c$. Therefore: $14 divides a$.

  On the other hand, let's assume that some number $a$ is divisble by 14, but not by $2$ or $7$. If so, then:
  $
    & a = 14 k \
    & a = 2 dot 7 dot k => 2 divides a and 7 divides a
  $
  This leads to contradiction. Therefore, $14 divides a iff 7 divides a and 2 divides a$.

  q.e.d

]


#exercise[If $a in ZZ$, then $a^3 equiv a pmod(3)$]

#solution[
  By definition congruence $a^3 equiv a pmod(3)$ is equivalent to the statement $3 divides a^3-a$.

  $
    & 3 divides a^3-a \
    & 3 divides a(a^2-1) \
    & 3 divides a(a-1)(a+1)
  $
  Which is true as the set ${a-1, a, a+1}$, where $a in FF_3$ is identical to the set $FF_3$. No matter which $a$ shall we choose, we will end up with ${0,1,2}$.

  q.e.d
]


#exercise[Suppose $a,b in ZZ$. Prove that $(a-3)b^2$ is even if and only if $a$ is odd or $b$ is even.]

#solution[
  Let $a,b in ZZ$.

  $
    & (a-3)b^2 pmod(2) \
    & a b^2 -3 b^2 pmod(2) \
    & a b^2 - b^2 pmod(2) \
  $
  Since $x^2 equiv x pmod(2)$, then:
  $
    & a b - b pmod(2) \
    & b(a-1) pmod(2) \
    & b(a+1) pmod(2) \
  $

  For $b(a+1)$ to be equal $0$, $b$ shall be even or $a$ shall be odd.
]

#exercise[There exists a positive real number $x$ for which $x^2< sqrt(x)$.]

#solution[
  Let $k=sqrt(x)$, hence:
  $
    & x^2 < sqrt(x) \
    & k^4<k \
    & k(k^3-1) < 0 \
    & k(k-1)(k^2+k+1) <0 \
  $
  Which is solved for $k in (0,1)$. Thus $sqrt(x) in (0,1)$ and $x in (0,1)$. For example: let $x=1/4$, thus:
  $
    & (1/4)^2 < sqrt(1/4) \
    & 1/16 < 1/2
  $

  q.e.d
]

#exercise[Suppose $a,b in ZZ$. If $a+b$ is odd, then $a^2+b^2$ is odd.]

#solution[
  Let $a,b in ZZ$ and $a+b$ be odd.

  Since $x^2 equiv x pmod(2)$, then:
  $
    a+b equiv a^2+b^2 pmod(2)
  $

  Therefore: $a+b equiv 1 pmod(2) iff a^2+b^2 equiv 1 pmod(2)$.

  q.e.d
]

#exercise[Suppose $a,b in ZZ$. If $a^2 divides a$ if and only if $a in {-1,0,1}$.]

#solution[
  We shall prove that if $a in {-1,0,1}$, then $a^2 divides a$.
  $
    & a=-1 => (-1)^2 divides (-1) \
    & 1 divides (-1) "is true" \
    & a=0 => 0 divides 0 "is true" \
    & a=1 => 1 divides 1 "is true"
  $
  On the other hand, we shall show that if $a in.not {-1,0,1}$, then $a^2 divides.not a$.

  Suppose that $a^2 divides a$ for some integer other than ${-1,0,1}$

  $
    & a = a^2 k "for some" k in ZZ \
    & 1 = a k
  $
  If $a in.not {-1,0,1}$, then $k$ is a fraction. Therefore, $a^2 divides a iff a in {-1,0,1}$
]

#exercise[Suppose $a,b in ZZ$. Prove that $a+b$ is even if and only if $a$ and $b$ have the same parity.]

#solution[
  Let $a+b$ be even. Thus:
  $
    a+b equiv 0 pmod(2) \
  $
  Which is solved for $a equiv b pmod(2)$, as:
  $
    2 a equiv 0 pmod(2)
  $
  For any $a$.

  Otherwise, if $a equiv.not b pmod(2)$, then $a+b equiv 0+1 equiv 1 pmod(2) or a+b equiv 1+0 equiv 1 pmod(2)$. Therefore, $a+b$ is even if and only if $a$ and $b$ have the same parity.
]

#exercise[Suppose $a,b in ZZ$. If $a b$ is odd, then $a^2+b^2$ is even.]

#solution[
  Working on modulo $2$, we can clearly see, that:
  $a b equiv 1 pmod (2)$ if and only if $a equiv b equiv 1 pmod(2)$. Since $x^2 equiv x pmod(2)$, then $a^2 + b^2 equiv a+b equiv 1+1 equiv 0 pmod(2)$.

  q.e.d
]

#exercise[There is a prime number between $90$ and $100$.]

#solution[
  $97$ is such a prime number. To prove it, we shall use the fact that a composite number has no prime factor larger than square root of the number.

  $sqrt(97) <10$
  $
    & 2 divides.not 97 \
    & 3 divides.not 97 \
    & 5 divides.not 97 \
    & 7 divides.not 97
  $
  Hence, $97$ is a prime number.

  q.e.d
]

#exercise[There is a set $X$ for which $NN in X$ and $NN subset.eq X$.]

#solution[
  Such $X = NN union {NN}$. $NN in X$ and $NN subset.eq X$.
]

#exercise[If $n in NN$, then $2^0+2^1+2^2+2^3+...+2^n=2^(n+1)-1$.]

#solution[
  We shall use the fact that sum of n-elements of geometric series is equal to $a_1 (1-q^n)/(1-q)$, where $q$ is a multiple.

  Since $a_1=1$ and $q=2$, then $(1-2^n)/(1-2)=2^n-1$.

  q.e.d
]

#exercise[There exists an $n in NN$ for which $11 divides (2^n-1)$.]

#solution[
  We shall use modulo 11 to prove this fact.

  Firsly, we shall examine the cycle $2^n$ does on field $FF_11$.
  $
    & 2^1 equiv 2 pmod(11) \
    & dots.v \
    & 2^10 equiv 1 pmod(11) \
    & 2^10 - 1 equiv 0 pmod(11)
  $

  Therefore $11 divides (2^10-1)$, as $2^10-1= 1023= 93 dot 11$.


  q.e.d
]

#exercise[Every real solution $x^3+x+3=0$ is irrational.]

#solution[
  Suppose $x^3+x+3=0$ has rational solution such as
  $x=p/q$ for some co-prime integers $p,q$.

  $
    & (p/q)^3 + p/q + 3 =0 \
    & p^3 / q^3 + p/q + 3 =0 \
    & p^3 + p q^2 +3q^3 =0
  $
  We will examine it with modulo $2$:
  $
    & p^3 + p q^2 + 3 q^3 equiv 0 pmod(2) \
  $
  We shall use the fact that $x^2 equiv x pmod(2)$.
  $
    & p^2 dot p + p q + q^2 dot q + 2q^3 equiv 0 pmod(2) \
    & p dot p + p q + q dot q equiv 0 pmod(2) \
    & p^2 + p q + q^2 equiv 0 pmod(2) \
    & p + p q + q equiv 0 pmod(2)
  $
  Which is true only if $p equiv q equiv 0$.
  Therefore, $2 divides p and 2 divides q$, thus $gcd(p, q) >= 2$, which contradicts with initial assumptions.

  Hence, $x^3+x+3=0$ has only irrational solutions.
  q.e.d
]

#exercise[If $n in ZZ$, then $4 divides n^2$ or $4 divides (n^2-1)$.]

#solution[
  We shall prove this with modulo $4$.
  $
    & n^2 equiv 0 pmod(4) or n^2 equiv 1 pmod(4)
  $
  Thus:
  $
    n^2 equiv n^2-1 equiv 0 pmod(4)
  $
  And hence: $4 divides n^2$ or $4 divides (n^2-1)$.

  q.e.d
]

#exercise[Suppose $a,b$ and $c$ are integers. If $a divides b$ and $a divides (b^2-c)$, then $a divides c$.]

#solution[
  Since $a divides b$, then $b=a k$ for some integer $k$. Now, $a divides b^2-c$ is equivalent to $a divides (a^2k^2-c)$. Hence, $a^2 k^2 -c = a m$ for integer $m$. Thus:

  $c = a(a k^2 -m) => a divides c$.

  q.e.d
]

#exercise[If $a in ZZ$, then $4 divides.not (a^2-3)$]

#solution[
  Suppose $4 divides (a^2-3)$. We shall use modulo $4$ to examine this:

  $
    & a^2-3 equiv 0 pmod(4) \
    & a^2 equiv 3 pmod(4)
  $
  However:
  $
    & 0^2 equiv 0 pmod(4) \
    & 1^2 equiv 1 pmod(4) \
    & (2^2) equiv 0 pmod(4) \
    & (3^2) equiv 1 pmod(4)
  $
  And thus, $a^2$ is never equivalent to $3$ in modulo 4. Therefore, $4 divides.not (a^2-3)$.

  q.e.d
]

#exercise[If $p>1$ is an integer and $n divides.not p$ for each integer $n$ for which $2<= b <= sqrt(p)$, then $p$ is prime.]

#solution[
  First of all, we shall establish that prime number is such integer that is divisble only by $1$ and itself.


  It is clear, that the smallest prime number is $2$, hence the lower bound for which are we testing the divisiblity is $2$. We shall now prove that $sqrt(p)$ is the sufficient upper bound.

  By fundamental theorem of arithemtics, every integer can be represented as a product of prime numbers. Let $p$ equal $n$ times $c$, where $c$ is a subproduct and $n$ is the integer for which we will be testing divisibility. You will notice, that for $n$ to divide $p$, there shall be a composite number that divides $p$, which is smalelr than $n$. However, if we checked, the divisibility of every prime smaller than $sqrt(p)$, then there is no such composite number.

  Let $p = c n$. Since $n <= c$, then $n^2 <= c n$ and hence, $p >= n^2$ and $n<= sqrt(p)$
  q.e.d
]

#exercise[The product of any $n$ consecutive positive integers is divisible by $n!$]

#solution[
  Let $(k+n)(k+n-1)dots(k+1)$ be a product of $n$ consecutive positive integers, where $k,n in ZZ$.

  This product can be represented as $(k+n)!/k!$. However, we can write is as $n! (k+n)!/(k! n!) = n! binom(k+n, k)$. Since binominal coefficient is always equal to some integer, then $n! divides (k+n)!/k!$.

  q.e.d
]

#exercise[Suppose $a,b in ZZ$. If $a^2+b^2$ is a perfect square, then $a$ and $b$ are not both odd.]

#solution[
  We shall find out what happens if $a,b$ are both odd:
  For some $k,l in ZZ, (2k+1)^2+(2l+1)^2 = c^2$
  $
    & 4k^2+4k+1+4l^2+4l+1 = c^2 \
    & c^2 = 4m+2 "for some" m in ZZ \
  $

  We will show that for no $m$ is $c$ an integer. Working with modulo $4$:
  $c^2 equiv 0 pmod(4) or c^2 equiv 1 pmod(4)$, while
  $4m+2 equiv 2 pmod(4)$.
  It leads to the contradiction, meaning that sum of $a^2+b^2$ for odd $a,b$ never leads to a perfect square. Therefore, if $a^2+b^2$ is a perfect square, then $a$ and $b$ are not both odd.

  q.e.d
]

#exercise[Prove the division algorithm: If $a,b in NN$, there exist _unique_ integers $q,r$ for which $a=b q+r$, and $0<=r<b$.]

#solution[
  First of all, we shall establish that $a$ and $b$ are non-zero, and $a >= b$.

  If $b divides.not a$, then exists such $r$, that $b divides (b-r)$. Therefore, $a=b q + r$.


  Secondly, we shall show that such representation is unique. Let $q',r' in ZZ$ and $q!=q'$ and $r!=r'$
  $
    & a = b q + r = b q' +r' \
    & b q + r = b q' + r' \
    & b(q-q')+r-r' = 0 \
  $
  It is true only if $q=q'$ and $r=r'$.

  Thus, $q,r$ are unique.

  Now, we shall examine what if $a < b$:
  $q=0$ and $r=a$ solves the equation for each $a$ and $b$.

  q.e.d
]

#exercise[If $a divides b c$ and $gcd(a, b)=1$, then $a divides c$.]

#solution[
  Since $a$ divides $b c$, then either $a$ divides $b$ or it divides $c$.

  By the proposition 7.1 from page 152. If $a,b in NN$, then there exist integers $k$ and $l$, for which $gcd(a, b)=a k+b l$.

  As $gcd(a, b)=1 => a k + b l =1$ for some non-zero $k,l in ZZ$. Hence, $a$ cannot divide $b$, as $a k = 1 - b l$ and thus:
  $
    & 1-b l equiv 0 pmod(a) \
    & - b l equiv -1 pmod(a) \
    & b l equiv 1 pmod(a)    & b equiv.not 0 pmod(a)
  $

  Therefore, $a divides c$

  q.e.d
]

#exercise[Suppose $a,b,p in ZZ$ and $p$ is prime. Prove that if $p divides a b$ then $p divides a$ or $p divides b$.]

#solution[
  Assume $p divides a b$. We consider two cases for $a$: either $p divides a$ or $p divides.not a$.

  If $p divides a$, then claim holds.

  Otherwise, since $p$ is a prime number, then $p divides.not a and gcd(p, a)=1$.
  By proposition 7.1 from page 152. If $a,b in NN$, then there exist integers $k$ and $l$, for which $gcd(a, b)=a k + b l$. Since $gcd(p, a)=1$, then there exists $k,l in ZZ$ such as $p k + a l = 1$. As $p divides a b$, then$a b = p m$ for some integer $m$. Next:

  $
    & p k + a l = 1 \
    & p b k + a b l = b \
    & p b k + p m l = b \
    & p(b k + m l) = b
  $
  We know therefore, that $p divides b$. Which proves that if $p divides a b$, then either $p divides a$ or $p divides b$.
]

#exercise[
  If $n in ZZ$, then $gcd(n, n+1)=1$
]

#solution[
  We know for sure that $k=gcd(n, n+1)$ for $n x + (n+1) y = k$ if and only if $k$ is the smallest possible positive integer that is generated by this equation by $x,y in ZZ$.

  Since $(-1) dot n + 1 dot (n + 1) = -n + n + 1 = 1$,
  then $gcd(n, n+1)=1$
]

#exercise[If $n in ZZ$, then $gcd(n, n+2) in {1,2}$]

#solution[
  We know for sure that $k=gcd(a, b)$ for $a x + b y = k$ if and only if $k$ is the smallest possible positive integer that is generated by this equation by $x,y in ZZ$.

  We shall approach this exercise by identifying two cases: even and odd numbers.

  If $n$ is even, then $n=2 k$ for some $k in ZZ$ and:
  $
    & n x + (n+2 ) y = \
    & 2k x + (2k+2) y = \
    & 2(k x + (k+1) y)
  $
  We already know that $gcd(k, k+1)=1$, so the smallest possible integer this expression can generate is $2$ times $1$: $2$.

  Otherwise, if $n$ is odd, then $n = 2k+1$ for some $k in ZZ$ and:
  $
    & n x + (n+2) y = \
    & (2k+1)x + (2k+2)y = \
    & (-1)(2k+1) + (2k+2)y = 2k+2 -2k -1 = 1
  $

  Therefore, if $n$ is odd, then $gcd(n, n+2)=1$.

  q.e.d
]

#exercise[If $n in ZZ$, then $gcd(2n+1, 4n^2+1)=1$.]

#solution[
  I shall prove this indirectly.

  If $gcd(a^2, b) =1$, then obviously $gcd(a, b)=1$.

  $
    & k = (2n+1)^2 x + (4n^2+1) y \
    & k = (4n^2+1) (x+y) + 4n x
  $
  If $k$ is the smallest possible positive integer solution of this equation, then $k = gcd((2n+1)^2, 4n^2+1) = gcd(4n^2+1, 4n)$.


  $
    & k = (4n^2+1) dot 1 + (-n) dot 4n \
    & k = 4n^2+1 - 4n^2 = 1
  $

  Therefore, $gcd(a, b)=1$
]

#exercise[If $gcd(a, c)=gcd(b, c)=1$, then $gcd(a b, c)=1$.]

#solution[
  Let $gcd(a, c) = a x + c y$ and $gcd(b, c) = b k + c l$ for some $x,y,k,l in ZZ$.

  $
    & a x + c y = 1 quad b k + c l = 1 \
    & a x = 1 - c y quad b k = 1 - c l \
    & a b x k = (1-c y)(1 - c l) \
    & a b x k = 1 - c(y+l) + c^2 y l \
    & a b x k - c(y+l-c y l) = 1       & (a b) m + c n = 1 quad "for" m = x k and n = -(y+l-c y l)
  $

  Therefore, $gcd(a b, c)=1$
]

#exercise[Suppose $a,b in NN$. Then $a=gcd(a, b)$ if and only if $a divides b$.]

#solution[
  Let $a divides b$. If so, then $a$ is a divior of $b$ and since it is the greatest common divisor, then $gcd(a, b)=a$. On the other hand if $gcd(a, b)=a$. Then $a divides a$ and $a divides b$.

  q.e.d
]

#exercise[Suppose $a,b in NN$. Then $a = lcm(a, b)$ if and only if $b divides a$.]

#solution[
  Since $b divides a$, then $gcd(a, b)=b$. We can now use the fact that $a b = lcm(a, b) gcd(a, b)$:

  $a b = lcm(a, b) b => a = lcm(a, b)$.

  On the other hand, if $lcm(a, b)=a$, then $a b = a gcd(a, b) => gcd(a, b)=b$ and thus: $b divides a$.

  q.e.d
]

== Proofs Involving Sets

#exercise[Prove that ${12n: n in ZZ} subset.eq {2n: n in ZZ} inter {3n: n in ZZ}$.]

#solution[
  Examine the intersection of the sets ${2n: n in ZZ}$ and ${3n: n in ZZ}$. Since ${2n: n in ZZ} inter {3n: n in ZZ} = {n: n in ZZ, 2 divides n} inter {n: n in ZZ, 3 divides n} = {n: n in ZZ, (2 divides n and 3 divides n)}$ which, due to the fact that $gcd(2, 3)=1$, is the set of multiples of $6$: ${6n: n in ZZ}$.

  Therefore, we shall now prove that ${12n: n in ZZ}$ is a subset of ${6n: n in ZZ}$.

  Now since every element of ${12n: n in ZZ}$ is divisible by $6$, then it belongs to the set ${6n: n in ZZ}$. Given that every element of ${12n: n in ZZ}$ belongs to ${6n: n in ZZ}$, it follows that ${12n: n in ZZ} subset.eq {6n:n in ZZ}$ and thus: ${12n: n in ZZ} subset.eq {2n:n in ZZ} inter {3n:n in ZZ}$.

  q.e.d
]

#exercise[Prove that ${6n: n in ZZ}={2n: n in ZZ} inter {3n: n in ZZ}$]

#solution[
  We shall prove that ${6n: n in ZZ} subset.eq {2n: n in ZZ} inter {3n: n in ZZ}$ and ${2n: n in ZZ} inter {3n: n in ZZ} subset.eq {6n: n in ZZ}$.

  We can clearly see that those sets can be rearranged into ${n: n in ZZ, 6 divides n}$ and ${n: n in ZZ, 2 divides n and 3 divides n}$. Given that $gcd(2, 3)=1$, if an integer is divided by both $2$ and $3$, then it is divided by $6$ as well. It works both ways, so we shall state that $forall_(n in ZZ) thick 2 divides n and 3 divides n iff 6 divides n$. Hence, every element of the set ${2n: n in ZZ} inter {3n: n in ZZ}$ belongs to ${6n: n in ZZ}$, while on the other hand every element of ${6n: n in ZZ}$ belongs to the intersection of ${3n: n in ZZ}$ and ${2n: n in ZZ}$. Therefore both sets are subsets of each others, implying that in fact, they are equal to each other.

  q.e.d
]

#exercise[If $k in ZZ$, then ${n in ZZ: n divides k} subset.eq {n in ZZ: n divides k^2}$.]
#solution[
  We shall see, that every element $n in ZZ$, where $n divides k$ in fact shall divide $k^2$ as well. Clearly you can see, that if $k = n q$ for some integer $q$, then $k^2 = n (n q^2)$, where the part $n q^2$ is some integer, implying that $n divides k^2$. Therefore, every element of the set ${n in ZZ: n divides k}$ belongs to the set ${n in ZZ: n divides k^2}$.
  q.e.d
]

#exercise[If $m,n in ZZ$, then ${x in ZZ: m n divides x} subset.eq {x in ZZ: m divides x} inter {x in ZZ: n divides x}$.]

#solution[
  We shall see that the set ${x in ZZ: m n divides x}$ contains only those elements, which are divisible by $m n$. Since every element divisible by $m n$ is also divisible by $m$ and $n$ (Every integer $a$ divisible by $m n$can be represented as $m(n q)$ and $n (m q)$ for some integer $q$), then it is clear that it belongs to the set ${x in ZZ: m divides x} inter {x in ZZ: n divides x}$, which contains elements that are divisible by both $m$ and $n$.

  ps. As long as $gcd(m, n)!=1$, the implication is not bidirectional, and thus those sets are not equal to each other.

  q.e.d
]

#exercise[If $p$ an $q$ are positive integers, then ${p n: n in NN} inter {q n: n in NN} != emptyset$.]

#solution[
  Given that ${p n: n in NN} inter {q n: n in NN}$ can be represented as ${n: n in NN, p divides n} inter {n: n in NN, q divides n}$ and hence, ${n: n in NN, p divides n and q divides n}$, it follows that the set contains numbers which are divided by both $p$ and $q$. Such numbers can be generated by an expression $p q k$ for some integer $k$. Therefore, such set cannot be empty.

  q.e.d
]

#exercise[Suppose $A,B$ and $C$ are sets. Prove that if $A subset.eq B$, then $A-C subset.eq B-C$.]

#solution[

  Given that $A subset.eq B$, we shall observe that all elements of $A \\ C$ belongs to $B \\ C$. Therefore $A \\ C subset.eq B \\ C$.
]

#exercise[Suppose $A,B$ and $C$ are sets. If $B subset.eq C$, then $A times B subset.eq A times C$]

#solution[
  We shall use the fact that $X times Y = {(x,y): x in X, y in Y}$.

  Owing to the fact that $B subset.eq C$, $A times B = {(a,b): a in A, b in B}$ and $A times C = {(a,c): a in A, c in C}$, it is clear that every element from the set $A times B$ belongs to the set $A times C$. Thus: $A times B subset.eq A times C$.

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $A union (B inter C) = (A union B) inter (A union C)$.]

#solution[
  Given that $X union Y = {x: x in X or x in Y}$ and $X inter Y = {x: x in X and x in Y}$, then:

  $
    & A union (B inter C) = A union {x: x in B and x in C} \
    & = {x: X in A or (x in B and x in C)} = \
    & = {x: (x in A or x in B) and (x in A or x in C)} = \
    & = {x: x in A or x in B} inter {x: x in A or x in C} = \
    & = (A union B) inter (A union C)
  $

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $A inter (B union C) = (A inter B) union (A inter C)$.]

#solution[
  Same as above.

  $
    & A inter (B union C) = A inter {x: x in B or x in C} = \
    & = {x: x in A and (x in B or x in C)} = \
    & = {x: (x in A or x in B) and (x in A or x in C)} = \
    & = {x: x in A or x in B} inter {x: x in A or x in C} = \
    & = (A union B) inter (A union C)
  $

  q.e.d
]

#exercise[If $A$ and $B$ are sets in a universal set $U$, then $overline(A inter B)= overline(A) union overline(B).$]

#solution[
  Since $overline(A inter B) = U \\ (A inter B)$ and $A inter B = {x: x in A and x in B}$, then:

  $
    & overline(A inter B) = U \\ {x: x in A and x in B} = \
    & = {x: x in U and (x in.not A or x in.not B)} = \
    & = {x: (x in U and x in.not A) or (x in U and x in.not B)} = \
    & = {x: x in U and x in.not A} union {x: x in U and x in.not B} = \
    & = overline(A) union overline(B)
  $

  q.e.d
]

#exercise[If $A$ and $B$ are sets in a universal set $U$, then $overline(A union B) = overline(A) inter overline(B)$.]

#solution[
  We shall use the fact that:
  $
    & overline(A union B) = \
    & U \\ (A union B) = \
    & U \\ {x: x in A or x in B} = \
    & {x: x in U and not (x in A or x in B)} = \
    & {x: x in U and x in.not A and x in.not B} = \
    & {x: (x in U and x in.not A) and (x in U and x in.not B)} = \
    & {x: x in U and x in.not A} inter {x: x in U and x in.not B} = \
    & (U \\ A) inter (U \\ B) = \
    & overline(A) inter overline(B)
  $
  Thus:
  $overline(A union B) = overline(A) inter overline(B)$

  q.e.d
]


#exercise[If $A,B$ and $C$ are sets, then $A \\ (B inter C) = (A \\ B) union (A \\ C)$.]
#solution[
  We shall show that:
  $
    & A \\ (B inter C) = \
    & A \\ {x: x in B and x in C} = \
    & {x: x in A and not (x in B and x in C)} = \
    & {x: x in A and (x in.not B or x in.not C)} = \
    & {x: (x in A and x in.not B) or (x in A and x in.not C) = \
    & {x: x in A and x in.not B} union {x: x in A and x in.not C} = \
    & (A \\ B) union (A \\ C)
  $

  Therefore, $A \\ (B inter C) = (A \\ B) union (A \\ C)$.

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $A \\ (B union C) = (A \\ B) inter (A \\ C)$.]

#solution[
  We shall see that:
  $
    & A \\ (B union C) = \
    & A \\ {x: x in B or x in C} = \
    & {x: x in A and not (x in B or x in C)} = \
    & {x: x in A and x in.not B and x in.not C} = \
    & {x: (x in A and x in.not B) and (x in A and x in.not C)} = \
    & {x: x in A and x in.not B} inter {x: x in A and x in.not C} = \
    & (A \\ B) inter (A \\ C)
  $

  Thus: $A \\ (B union C) = (A \\ B) inter (A \\ C)$.

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $(A union B) \\ C = (A \\ C) union (B \\ C)$.]

#solution[
  We shall show that:
  $
    & (A union B) \\ C = \
    & {x: x in A or x in B} \\ C = \
    & {x: (x in A or x in B) and x in.not C} = \
    & {x: (x in A and x in.not C) or (x in B and x in.not C)} = \
    & {x: x in A and x in.not C} union {x: x in B and x in.not C} = \
    & (A \\ C) union (B \\ C)
  $

  Therefore: $(A union B) \\ C = (A \\ C) union (B \\ C)$.

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $(A inter B) \\ C = (A \\ C) inter (B \\ C)$. ]

#solution[
  We shall see that:
  $
    & (A inter B) \\ C = \
    & {x: x in A and x in B} \\ C = \
    & {x: (x in A and x in B) and x in.not C} = \
    & {x: (x in A and x in.not C) and (x in B and x in.not C)} = \
    & {x: x in A and x in.not C} inter {x: x in B and x in.not C} = \
    & (A \\ C) inter (B \\ C)
  $

  Thus: $(A inter B) \\ C = (A \\ C) inter (B \\ C)$

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $A times (B union C) = (A times B) union (A times C)$.]

#solution[
  We shall show that:
  $
    & A times (B union C) = \
    & A times {x: x in B or x in C} = \
    & {(x,y): x in A and (y in B or y in C)} = \
    & {(x,y): (x in A and y in B) or (x in A and y in C)} = \
    & {(x,y): x in A and y in B} union {(x,y): x in A and y in C} = \
    & (A times B) union (A times C)
  $
  Therefore, $A times (B union C) = (A times B) union (A times C)$.

  q.e.d
]

#exercise[IF $A,B$ and $C$ are sets, then $A times (B inter C) = (A times B) inter (A times C)$.]

#solution[
  We shall observe that:
  $
    & A times (B inter C) = \
    & A times {x: x in B and x in C} = \
    & {(x,y): x in A and y in B and y in C} = \
    & {(x,y): (x in A and y in B) and (x in A and y in C)} = \
    & {(x,y): x in A and y in B} inter {(x,y): x in A and y in C} = \
    & (A times B) inter (A times C)
  $

  Hence, $A times (B inter C) = (A times B) inter (A times C)$.

  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, then $A times (B \\ C) = (A times B) \\ (A times C)$.]

#solution[
  We shall see that:
  $
    & A times (B \\ C) = \
    & A times {x: x in B and x in.not C} = \
    & {(x,y): x in A and y in B and y in.not C} = \
    & {(x,y): (x in A and y in B) and (x in.not A or y in.not C) } = \
    & {(x,y): (x in A and y in B) and not(x in A and x in Y)} = \
    & {(x,y): x in A and y in B} \\ {(x,y): x in A and y in C} = \
    & (A times B) \\ (A times C)
  $
  Thus: $A times (B \\ C) = (A times B) \\ (A times C)$

  q.e.d
]

#exercise[Prove that ${9^n: n in ZZ} subset.eq {3^n: n in ZZ$, but ${9^n: n in ZZ}!={3^n: n in ZZ}$]

#solution[
  We will begin with prooving that every element of the set ${9^n: n in ZZ}$ belongs to the set ${3^n: n in ZZ}$. Clearly, the former set can be represented as ${3^(2n): n in ZZ}$ and since $2n in ZZ$, then every element of this set belongs to the set ${3^n: n in ZZ}$. Hence, ${9^n: n in ZZ} subset.eq {3^n: n in ZZ}$.

  However, we shall now show that this relation is not bidirectional. For example, the element $3 in {3^n: n in ZZ}$, but $3 in.not {9^n: n in ZZ}$. Therefore: ${3^n: n in ZZ} subset.not.eq {9^n: n in ZZ}$.

  Thus both sets are not equal.

  q.e.d
]

#exercise[Prove that ${9^n: n in QQ} = {3^n: n in QQ}$.]

#solution[
  We will start with observing that since $1/2 in QQ$, then former subset can be represented as ${3^k: n in QQ}$, where $k = 2 n$. Thus every element of ${3^k: in QQ}$ belongs to the set ${3^n: n in QQ}$ and vice versa. It means that ${9^n: n in QQ} subset.eq {3^n: n in QQ}$ and ${3^n: n in QQ} subset.eq {9^n in QQ}$ and moreover: ${9^n: n in QQ} = {3^n: n in QQ}$.

  q.e.d
]

#exercise[Suppose $A$ and $B$ are sets. Prove $A subset.eq B$ if and only if $A-B= emptyset$.]

#solution[
  Examine three cases:
  1. If $A$ is an emptyset, then $A-B=emptyset$ and we shall use the fact that every emptyset is a subset of another set: $A subset.eq B$.
  2. If $A != emptyset$ and $A subset.eq B$. Since every element from $A$ belongs to $B$, then $A-B = emptyset$, because there are no such elements $x$ for which $x in A$ and $x in.not B$.
  3. If $A != emptyset$ and $A subset.not.eq B$. Since now, not every element of $A$ belongs to $B$, then $A-B!=emptyset$.

  Therefore, by examining the cases we proved that $A subset.eq B$ if and only if $A-B = emptyset$.

  q.e.d
]

#exercise[Let $A$ and $B$ be sets. Prove that $A subset.eq B$ if and only if $A inter B = A$.]

#solution[
  We shall approach this exercise, as we aproached the previous one:
  1. If $A$ is an emptyset, then $A inter B = A$ (since $emptyset inter X = emptyset$). On the other hand, we know that emptyset is a subset of every other set.
  2. If $A != emptyset$ and $A subset.eq B$, then obviously every element of set $A$ is in set $B$, meaning that $A inter B = A$.
  3. If $A != emptyset$, but $A subset.not.eq B$, then $A inter B != A$ as not every element of set $A$ is in set $B$.

  Thus, we showed that $A subset.eq B$ if and only if $A inter B = A$.

  q.e.d
]

#exercise[For each $a in RR$, let $A_a={(x,a(x^2-1))in RR^2: x in RR}$. Prove that $inter.big_(a in RR) A_a = {(-1,0),(1,0)}$.]

#solution[
  We shall see that roots of $x^2-1$: $x in {-1,1}$ are fixed base points for every $a in RR$ (For every $a in RR$, if $x in {-1,1}$, then $a(x^2-1)=0$).

  Now, if $x in {-1, 1}$, then $a(x^2-1)=0$ and hence $inter.big_(a in RR) A_a = {(-1,0),(1,0)}$.
  q.e.d
]

#exercise[Prove that $inter.big_(x in RR)[3-x^2, 5+x^2]=[3,5]$.]

#solution[
  We shall observe that $[3,5]$ is a subset of $[3-x^2, 5+x^2]$ for every $x in RR$. To prove that, we will observe, what happens at the boundaries:
  1. Lower boundary equals $3-x^2$. We can show that $3-x^2<=3$ as $-x^2<=0 <=> x^2>=0$ which is always true for every $x in RR$. We have shown that lower boundary is always not greater than $3$.
  2. Upper boundary equals $5+x^2$. Clearly, you can see that since $x^2>=0$, then $5+x^2>=5$ for every $x in RR$. Thus, upper boundary is not lower than $5$.

  We have examined that for every $x in RR$, lower boundary is not greater than $3$ and upper boundary is not lower than $5$, meaning that $[3,5]$ is a subset of $[3-x^2,5+x^2]$ for every $x in RR$. We shall now see that $inter.big_(x in RR) [3-x^2,5+x^2] subset.eq [3,5]$, which know that it is true for $x=0$.

  Therefore $inter.big_(x in RR) [3-x^2,5+x^2] = [3,5]$

  q.e.d
]

#exercise[Suppose $A,B,C$ and $D$ are sets. Prove that $(A times B) union (C times D) subset.eq (A union B) times (B union D)$.]

#solution[
  We shall examine both sets:
  1. The former set can be represented as:
  $ & (A times B) union (C times D) = \
  & {(x,y): x in A and y in B} union {(x,y): x in C and y in D} = \
  & {(x,y): (x in A and y in B) or (x in C and y in D)} $.
  2. The latter set can be written as:
  $
    & (A union C) times (B union D) = \
    & {x: x in A or x in C} times {y: y in B or y in D} = \
    & {(x,y): (x in A or x in C) and {y in B or y in D} } = \
    & {(x,y): (x in A and y in B) or (x in A and y in D)or (x in C and y in B) or (x in C and y in D)}
  $

  Now, you can see that the latter set can be represented as $(A times B) union (C times D) union (A times D) union (B times C)$. Therefore $(A times B) union (C times D) subset.eq (A union B) times (B union D)$.

  q.e.d

]

#exercise[Prove that ${4k+5: k in ZZ}={4k+1: k in ZZ}$. ]

#solution[
  We shall prove that both sets are a subset to each otehr. Firstly, we shall see that we can represent the former set as ${4(k+1)+1: k in ZZ}$. Hence, every element of the set ${4(k+1)+1: k in ZZ}$ belongs to the set latter set for $k+1$. On the other hand, every element of the latter set belongs to the set ${4(k+1)+1: k in ZZ}$ for $k-1$. Thus, since the inclusion is bidirectional, then both sets are equal.

  q.e.d
]

#exercise[Prove that ${12a+4b: a,b in ZZ}={4c: c in ZZ}$.]

#solution[
  We shall obseve that the former set can be represented as ${4(3a+b): a,b in ZZ}$. Thus, every element of the latter set belongs to the former for $c = 3a+b$ and vice versa. Therefore, the inclusion of the sets is bidirectional, meaning that both sets are equal.

  q.e.d
]

#exercise[Prove that ${12a+25b, a,b in ZZ}=ZZ$.]

#solution[
  Firsly, it is obvious that every element of the set ${12a+25b: a,b in ZZ}$ is a linear combination of other integer, meaning that ${12a+25b: a,b in ZZ}
  subset.eq ZZ$.

  Now, we shall show that every element of $ZZ$ can be represented as $12a+25b$. Since $gcd(12, 25)=1$, then $12a+25b=1$ for some $a$ and $b$, and thus, it can generate any number in $ZZ$ as $12a q + 25b q = q <=> 12c+25d =q$, for some $c,d in ZZ$.

  Therefore, $ZZ subset.eq {12a+25b: a,b in ZZ}$ and therefore: ${12a+25b: a,b in ZZ} = ZZ$

  q.e.d
]

#exercise[Suppose $A!=emptyset$. Prove that $A times B subset.eq A times C$ if and only if $B subset.eq C$.]

#solution[
  Firsly, we shall see that if $A = emptyset$, then $A times X = emptyset$, where $X$ is some set. Since, $emptyset$ is a subset of every set, then if $A=emptyset$, then the latter statement is false. Thus, $A$ shall be not empty.

  Next, we shall see that if $B subset.eq C$, then every element of $A times B$ belongs to $A times C$.

  Lastly, we shall observe that if $A times B$ is included in $A times C$, then $A subset.eq A$ (which is always true) and $B subset.eq C$. Suppose $(x,y) in A times B$ and $(x,y) in A times C$, but $B subset.not.eq C$. Therefore, there shall be some $(x,y)$ for which $y in.not C$, which cannot be an element of the set $A times C = {(x,y): x in A and y in C}$.

  Hence, $A times B subset.eq A times C iff B subset.eq C and A!=emptyset$.

  q.e.d
]

#exercise[Prove that $(ZZ times NN) inter (NN times ZZ)= (NN times NN)$.]

#solution[
  Firsly, we shall examine the former set:
  $
    & (ZZ times NN) inter (NN times ZZ) = \
    & {(x,y): x in ZZ and y in NN} inter {(x,y): x in NN and y in ZZ} = \
    & {(x,y): (x in ZZ and y in NN) and (x in NN and y in ZZ)}
  $
  Since $NN subset ZZ$, then $NN inter ZZ = NN$.
  $
    & {(x,y): (x in ZZ and x in NN) and (y in ZZ and y in NN)} = \
    & {x: x in ZZ and x in NN} times {y: y in ZZ and y in NN} = \
    & (ZZ inter NN) times (ZZ inter NN) = \
    & NN times NN
  $
  Therefore,
  $(ZZ times NN) inter (NN times ZZ) = (NN times NN)$.
  q.e.d
]

#exercise[Suppose $B != emptyset$ and $A times B subset.eq B times C$. Prove that $A subset.eq C$.]

#solution[
  We shall be really cautious with proving that statemnet. Let's begin with $A = emptyset$. If so, then $A times B = emptyset subset.eq B times C$ and $A subset.eq C$, since emptyset is a subset of every possible set. Now, let $(x,y) in A times B$ and $A != emptyset$. Since $A times b subset.eq B times C$, then if $(x,y) in A times B$ then $(x,y) in B times C$.

  We shall focus on $x$. Since $A times B subset.eq B times C$, then every $(x,x) in A times B and (x,x) in B times C$. It is easy to show, as $x$ has to be in $B$ for $A times B$ to be a subset of $B times C$. Thus, every $x in A$ shall belong to $C$ as well. Thus $A subset.eq C$.
  q.e.d
]

== Disproof

#exercise[If $x,y in RR$, then $|x+y|=|x|+|y|$.]
#solution[Suppose that $|x+y|=|x|+|y|$.
  Therefore,
  $
    & |2 + (-2)|=|2|+|-2| \
    & 0 = 4
  $
  Which is false. Thus, the statement is false.
]

#exercise[For every natural number $n$, the integer $2n^2-4n+31$ is prime.]

#solution[
  Let $n=31 in NN$. $2 dot 31^2-4 dot 31 + 31 = 31(62 -4 +1) = 31 dot 59$ which is not a prime.

  Therefore, the statement is false.
]

#exercise[If $n in ZZ$ and $n^5-n$ is even, then $n$ is even.]

#solution[
  Let $n in ZZ$ and $n^5-n$ be even. If so, then $n^5-n pmod(2) = 0$.

  Since $n^5-n equiv n dot (n^2)^2 - n pmod(2)$ and $n^2 equiv n pmod(2)$, then $n^5-n equiv n - n equiv 0$ regardless of $n$. Therefore, $n$ can be either even or odd, which disproves the statement.
]

#exercise[For every natural number $n$, the integer $n^2 +17n + 17$ is prime.]

#solution[It is not since, for $n=17$, $17^2+17^2+17$ is divisible by $17$.]

#exercise[If $A,B,C$ and $D$ are sets, then $(A times B) union (C times D)= (A union C) times (B union D)$.]

#solution[
  We shall see that:
  $
    & (A times B) union (C times D) = \
    & {(x,y): x in A and y in B} union {(x,y): x in C and y in D} = \
    & {(x,y): (x in A and y in B) or (x in C and y in D)}
  $
  while
  $ & (A union C) times (B union D) = \
  & {x: x in A or x in C} times {y: y in B and y in D} = \
  & {(x,y): (x in A or x in C) and (y in B or y in D)} = \
  & {(x,y): (x in A and y in B) or (x in A and y in D) or (x in C and y in B) or (x in C and y in D)} $.
  Since $(A times B) union (C times D) subset.eq (A union C) times (B union D)$, but $(A union C) times (B union D) subset.not.eq (A times B) union (C times D)$, then $(A times B) union (C times D) != (A union C) times (B union D)$.

  Therefore, the initial statement is false.
]


#exercise[If $A,B,C$ and $D$ are sets, then $(A times B) inter (C times D) = (A inter C) times (B inter D)$.]

#solution[
  Let's see:
  $
    & (A times B) inter (C times D) = \
    & {(x,y): x in A and y in B} inter {(x,y): x in C and y in D} = \
    & {(x,y): (x in A and y in B) and (x in C and y in D)} = \
    & {(x,y): (x in A and x in C) and (y in B and y in D)} = \
    & {x: x in A and x in C} times {y: y in B and y in D} = \
    & (A inter C) times (B inter D)
  $
  Therefore, $(A times B) inter (C times D) = (A inter C) times (B inter D)$.
  q.e.d
]

#exercise[If $A,B$ and $C$ are sets, and $A times C = B times C$, then $A =B$.]

#solution[
  Let $A times C = B times C$ and $C = emptyset$. You shall see that for every set $X$, $X times emptyset = emptyset$. Suppose now, that $A != B$, but we already know that $A times emptyset = emptyset$ and $B times emptyset = emptyset$, thus $A times C = B times C$, which disproves the initial statement.
]

#exercise[If $A,B$ and $C$ are sets, then $A \\ (B union C) = (A \\ B) union (A \\ C)$.]

#solution[
  We shall see that:
  $
    & A \\ (B union C) = \
    & A \\ {x: x in B or x in C} = \
    & {x: x in A and not (x in B or x in C)} = \
    & {x: x in A and x in.not B and x in.not C} = \
    & {x: (x in A and x in.not B) and (x in A and x in.not C)} = \
    & (A \\ B) inter (A \\ C)
  $

  It is trivial to show that the initial statement is false since, as far as $(A \\ B) inter (A \\ C) subset.eq (A \\ B) union (A \\ C)$, then obviously $(A \\ B) union (A \\ C) subset.not.eq (A \\ B) inter (A \\ C)$, meaning that both sets are not equal.

  For rigoristic purpose we shall show that on some example, let $A={1,2}, B={2}, C={1}$. While $A \\ (B union C) = emptyset$, at the same time $(A \\ B) union (A \\ C) = {2} union {1} = {1,2}$. Which is false.
]

#exercise[If $A$ and $B$ are sets, then $cal(P)(A) \\ cal(P)(B) subset.eq cal(P)(A \\ B)$.]

#solution[
  We shall establish the fact that power set can be represented in the builder notation: $cal(P)(A) = {X: X subset.eq A}$.

  Firstly, we shall see that:
  $
                      cal(P)(A) \\ cal(P)(B) & subset.eq cal(P)(A \\ B) \
    {X: X subset.eq A} \\ {X: X subset.eq B} & subset.eq {X: X subset.eq (A \\ B)} \
    {X: X subset.eq A and X subset.not.eq B} & subset.eq {X: X subset.eq (A \\ B)}
  $

  This is true if all elements from the former set belong to the latter set. We shall examine it case by case:

  Case 1. $A subset.eq B$:
  If so, ${X: X subset.eq A and X subset.not.eq B} = emptyset$ and $emptyset subset.eq {X: X subset.eq (A \\ B)}$.

  Case 2. $B subset.eq A$:
  Let $A={2,1}$ and $B={1}$, then $cal(P)(A)={emptyset, {1},{2},{1,2}}$ and $cal(P)(B)={emptyset, {1}}$, but $cal(P)(A \\ B) = {emptyset, {2}}$. Thus: $cal(P)(A) \\ cal(P)(B) subset.eq.not cal(P)(A \\ B)$

  It is not essential to examine other cases.
  The initial statement is false.
]

#exercise[If $A$ and $B$ are sets and $A inter B = emptyset$, then $cal(P)(A) \\ cal(P)(B) subset.eq cal(P)(A \\ B)$.]

#solution[
  We know from the previous excercise that the whole statement occur to be false in the second case: $B subset.eq A$, which is true if $A inter B = B$. Since $A inter B = emptyset$, we can exclude case 1. and case 2. from the previous excercise.

  Now, we shall examine the last case that we skipped in the previous excercise: $A inter B = emptyset$.

  If $A inter B = emptyset$, then $cal(P)(A) inter cal(P)(B) = {emptyset}$. Thus:
  $cal(P)(A) \\ cal(P)(B) = cal(P)(A) \\ {emptyset}$, while $cal(P)(A \\ B) = cal(P)(A)$, leading to the conclusion that $cal(P)(A) \\ cal(P)(B) subset.eq cal(P)(A \\ B)$.


  q.e.d
]


#exercise[If $a,b in NN$, then $a+b < a b$.]

#solution[
  That's false.

  Let $a=1, b=2$ $1+2 > 1 dot 2$.
]

#exercise[If $a,b,c in NN$ and $a b, b c$ and $a c$ all have the same parity, them $a,b$ and $c$ all have the same parity.]

#solution[Let $a$ and $b$ be even and $c$ be odd. If so, then $b c$ and $a c$ are even and $a b$ is even as well, leading to the conclusion that the initial statement is false.]

#exercise[There exists a set $X$ for which $RR subset.eq X$ and $emptyset in X$.]

#solution[
  Let $X = RR union {emptyset}$. Therefore, $RR subset.eq X$ and $emptyset in X$.

  q.e.d
]

#exercise[If $A$ and $B$ are sets, then $cal(P)(A) inter cal(P)(B) = cal(P)(A inter B)$.]

#solution[We shall see that:
  $& cal(P)(A) inter cal(P)(B) = \
  & {X: X subset.eq A} inter {X: X subset.eq B} = \
  & {X: Y in X => Y in A} inter {X: Y in X => Y in B} = \ & {X: (Y in X => Y in A) and (Y in X => Y in B) = \ & {X: Y in X => (Y in A and Y in B)} = \
  & { X: Y in X => Y in (A inter B)} = \
  & cal(P)(A inter B)$ \

  Therefore, $cal(P)(A) inter cal(P)(B) = cal(P)(A inter B)$.
  q.e.d
]

#exercise[Every odd integer is the sum of three odd integers.]

#solution[
  Let $2n+1, 2m+1$ and $2k+1$ be a three odd integers, where $m,n,k in ZZ$. We can clearly see, that the sum of those three integers equals $2(n+m+k+1)+1$, which is always an odd number. Now, every odd integer can be obtained by some combination of $n,m,k$.

  q.e.d
]

#exercise[If $A$ and $B$ are finite sets, then $|A union B| = |A|+|B|$.]

#solution[
  This can be easily disproved by showing that if $A inter B != emptyset$, for example: $A={1,2}, B={1,3}$, then $|A union B| = 3$, not $4$.
]

#exercise[For all sets $A$ and $B$, if $A \\ B = emptyset$, then $B != emptyset$.]

#solution[This can be easily disproved by showing that if $A = emptyset, B=emptyset$, then $A \\ B = emptyset$ as well.]


#exercise[If $a,b,c in NN$, then at least one of $a-b, a+c$ and $b-c$ is even.]

#solution[
  We shall examine three cases:
  1. $a,b,c$ are odd: If so, then $a+c$ is even (as sum of odd numbers is even).
  2. $a,b,c$ are even: Therefore, $a+c$ is even as well.
  3. At least one element has other parity then others:
  Without loss of generality let $a,b$ be even and $c$ be odd. If so, then $a-b$ is even. Now, on the other hand, if $a,b$ is odd and $c$ is even, then $a-b$ is still even.

  Thus, the initial statement is true.

  q.e.d

  Post scriptum: We can use Pigeonhole principle here.
]

#exercise[For every $r,s in QQ$ with $r < s$, there is an irrational number $u$ for which $r<u<s$.]

#solution[
  We shall observe that since $r < s$, and $0<sqrt(2)/2<1$, then $0 < (s-r) sqrt(2) / 2 < s -r$.

  Therefore, $r < (s-r) sqrt(2) /2 + r < s$ and hence, the statement is true.
  q.e.d
]

#exercise[There exist prime numbers $p$ and $q$ for whcih $p-q=1000$.]

#solution[Yes $1013-13 = 1000$. q.e.d]

#exercise[There exist prime number $p$ and $q$ for which $p-q=97$.]

#solution[No, there is no such pair of prime numbers. To prove that we shall see, that every prime number except from $2$ is odd, and if one of the numbers is not $2$, never does the difference between those numbers equal odd number Therefore, either $q=2$, but $p=99$ which is not a prime number, or there is no such pair. Thus, there is no such $p$ and $q$.

  q.e.d]


#exercise[If $p$ and $q$ are prime numbers for which $p<q$, then $2p + q^2$ is odd.]

#solution[
  Let $p$ have unknown parity and $q$ be odd as all primes except $2$ are odds, then $2p + q^2 equiv q^2 pmod(2) equiv 1$. Therefore, there is no necessity to examine cases whether $p$ is $2$ and even or is not $2$ and is odd as regardless of this $2p + q^2$ is always odd.

  q.e.d
]

#exercise[If $x,y in RR$ and $x^3<y^3$, then $x<y$.]

#solution[
  We shall prove contrapositive statement that if $x>=y$, then $x^3>=y^3$. Since $x>=y$, then $x-y>=0$.

  Now, we know that $x^2+x y + y^2>=0$. To prove it, we shall observe that $x^2+x y + y^2$ can be represented as both $(x-y)^2 + 3 x y$ or $(x+y)^2 - x y$. If $x,y$ are both positive or negative, then $(x-y)^2 + 3x y$ is always positive, otherwise, if one is positive and another is negative, then $(x-y)^2 -x y$ is always positive.

  Next, knowing that $x^2+x y + y^2>=0$, we shall multiply it by $(x-y)$. We shall now use the fact that $(x-y)(x^2+x y + y^2) = x^3-y^3$. Following the fact that $x-y>0$ and $(x^2+x y + y^2)>=0$, then the product of those two elements is equal or greater than zero as well. Thus, $x^3-y^3>=0$ and $x^3>=y^3$.

  q.e.d
]

#exercise[The inequality $2^x>=x+1$ is true for all positive real numbers $x$.]

#solution[
  We shall observe that for $x=0$ $2^x=x+1$. Thus, if we take for example $x=1/2$, then $2^x$ equals $sqrt(2) approx 1.41$, while $x+1$ equals $1.5$. Therefore, the statement is false.
]

#exercise[For all $a,b,c in ZZ$, if $a divides b c$, then $a divides b$ or $a divides c$.]

#solution[Suppose that $a=20$, while $b=10$ and $c=10$.
  You can observe that while $a divides b c$, then neither $a divides b$ nor $a divides c$.]

#exercise[Suppose $A,B$ and $C$ are sets. If $A=B \\ C$, then $B = A union C$.]

#solution[Unfortunately, it is false. Suppose $B = {2,1}$ and $C = {1,3}$. If $A = B \\ C$, then $A = {2}$. However, $A union C = {1,2,3}$.]

#exercise[The equation $x^2=2^x$ has three real solutions.]

#solution[
  We know for sure that two real solutions are $2$ and $4$. However, to prove that the third real solution exist, we shall use Darboux Theorem on the function $x^2-2^x$. Now, you can see that the function is positive on $x=-2$, but negative on $x=0$, implying that there is additional real solution on $(-2,0)$.

  q.e.d
]

#exercise[Suppose $a,b in ZZ$. If $a divides b$ and $b divides a$, then $a=b$.]

#solution[
  Suppose $a=2$ and $b=-2$. $2 divides (-2)$ and $(-2) divides 2$, but $2 != -2$.
]

#exercise[If $x,y in RR$ and $|x+y|=|x-y|$, then $y=0$.
]

#solution[
  Let $x=0$, then $|y|=|-y|$ regardless of the value of $y$. Therefore, the initial statement is false.
]

#exercise[There exist integers $a$ and $b$ for which $42a + 7b = 1$.]

#solution[
  Since $42 a + 7 b = 7(6 a + b)$ and there is no integer $a,b$ for which $7(6 a + b) = 1$, then initial statement is false.
]

#exercise[No number (other than $1$) appears in Pascal's triangle more than four times.]

#solution[
  Number $3003$ appears eight times in Pascal's triangle.
]

#exercise[If $n,k in NN$ and $binom(n, k)$ is a prime number, then $k=1$ or $k=n-1$.]

#solution[
  We know that $binom(n, k)=n/k dot binom(n-1, k-1)$.
  Now, we shall use this fact and state that $k dot binom(n, k) = n dot binom(n-1, k-1)$.

  Let $binom(n, k)$ be a prime number. If so, then $p divides n$ or $p divides binom(n-1, k-1)$. However, since $binom(n, k)=(n(n-1)(n-2)...(n-k+1))/k!>n$, then $p divides.not n$. Since $binom(n, k)-binom(n-1, k-1) = (n/k-1) binom(n-1, k-1)>=0$ for $n>0$, then $p>binom(n-1, k-1)$ and $p divides.not binom(n-1, k-1)$.

  Since for prime $binom(n, k)=n/k dot binom(n-1, k-1)$ does not sustain, then $k=1$ (as $binom(n, k)=n$) or $k=n-1$.
]

#exercise[Suppose $f(x)=a_0+a_1 x+a_2 x^2+...+a_n x^n$ is a polynomial of degree $1$ or greater, and for whcih each coefficient $a_i$ is in $NN$. Then there is a $k in NN$ for which integer $f(k)$ is not a prime.]

#solution[
  We shall consider following cases:

  1. $a_0=0$. If so, then $x divides f(x)$ and for example $4 divides f(4)$, which proves there is a composite number in such polynomial.

  2. $a_0!=0$ and $a_0$ is a composite number. If so, then $a_0 divides f(a_0)$, which analogously like in case 1., proves that there is a composite number in such polynomial.

  3. $a_0!=0$ and $a_0$ is a prime number (This one is though). We shall observe that since $a_i in NN$ for all $i$ and $x in NN$, then $f(x)$ is injective. If so, then if $f(a_n)$ is still a prime, then $f(2 a_n)>a_n$ and since $a_n divides f(2 a_n)$, then $f(2 a_n)$ is a composite number.
]


#exercise[if $x subset.eq a union b$, then $x subset.eq a$ or $x subset.eq b$.]

#solution[the statement is false. suppose $x={1,2,3}$ and $a={1,3}, b={1,2}$. we can clearly see that $x subset.eq a union b$ (moreover, both sets are equal), but $x subset.not.eq a$ and $x subset.not.eq b$.
]

#exercise[In Chapter $5$, Excercise 25 asked you to prove that if $2^n-1$ is a prime, then $n$ is prime. Is the converse true?]

#solution[No, suppose $n=11$ for which $2^n-1$ equals $2047$, which is a composite number since $2047=23 dot 89$. ]

== Mathematical Induction

#exercise[Prove that $1+2+3+4+...+n=(n^2+n)/2$ for every positive integer $n$.]

#solution[
  1. Base step ($n=1$): $1=(1^2+1)/2$. True.

  2. Inductive step: Fix $k>=1$. Assume that $1+2+3+4+...+k=(k^2+k)/2$. Then we shall observe that:
  $
    1+2+3+4+...+k+k+1 & = (k^2+k)/2 + k+1 \
                      & = (k(k+1))/2 + k+1 \
                      & = (k+1)(k/2 + 1) \
                      & = (k+1)(k+2)/2 \
                      & = (k+1)(k+1 + 1)/2 \
                      & = ((k+1)^2+k+1)/2
  $

  Thus $P(k+1)$ holds. Hence $1+2+3+4+...+n=(n^2+n)/2$ for all positive integers.
  q.e.d
]

#exercise[Prove that $1^2+2^2+3^2+4^2+...+n^2 = (n(n+1)(2n+1))/6$.]

#solution[
  1. Base step ($n=1$): $1=(1 dot 2 dot 3)/6$. True.

  2. Inductive step: Fix $k>=1$. Assume that $1^2+2^2+3^2+4^2+...+k^2=(k(k+1)(2k+1))/6$.

  Now, for $k+1$ we shall observe that:
  $
    1^2+2^2+3^2+...+k^2+(k+1)^2 & =(k(k+1)(2k+1))/6 + (k+1)^2 \
                                & = (k+1)(k(2k+1)+6k+6)/6 \
                                & = (k+1)(2k^2+7k+6)/6 \
                                & = ((k+1)(k+2)(2k+3))/6
  $

  Thus $P(k+1)$ holds. Hence, $1^2+2^2+3^2+4^2+...+n^2=(n(n+1)(2n+1))/6$ for all positive integers.


  q.e.d
]

#exercise[Prove that $1^3+2^3+3^3+4^3+...+n^3=(n^2(n+1)^2)/4$ for every positive integer $n$.]

#solution[
  We will prove this with mathematical induction.
  1. *Base step ($n=1$):* $1^3=(1^2 dot 2^2)/4$. True.

  2. *Inductive step:* Fix $k>=1$. Suppose that $1^3+2^3+3^3+...+k^3=(k^2(k+1)^2)/4$. If so, then:

  $
    1^3+2^3+3^3+...+k^3+(k+1)^3 & = (k^2(k+1)^2)/4 + (k+1)^3 \
                                & = (k+1)^2(k^2/4+k+1) \
                                & = ((k+1)^2(k^2+4k+4))/4 \
                                & = ((k+1)^2(k+2)^2)/4
  $
  Therefore, $P(k+1)$ holds. Hence, $1^3+2^3+3^3+4^3+...+n^3=(n^2(n+1)^2)/4$.

  q.e.d
]

#exercise[If $n in NN$, then $1 dot 2 + 2 dot 3 + 3 dot 4 +4 dot 5 + ... + n(n+1)=(n(n+1)(n+2))/3$.]

#solution[
  We shall prove this with mathematical induction.
  1. *Base step ($n=1$):* $1 dot 2 = (1 dot 2 dot 3)/3$. True.

  2. *Inductive step:* Fix $k>=1$. Assume that $1 dot 2 + 2 dot 3 + 3 dot 4 + ... + k(k+1) = (k(k+1)(k+2))/3$.We shall observe that:
  $
    1 dot 2 + 2 dot 3 + 3 dot 4 + dots + k(k+1) + (k+1)(k+2) & = (k(k+1)(k+2))/3+(k+1)(k+2) \
                                                             & = (k+1)(k+2)(k/3+1) \
                                                             & = ((k+1)(k+2)(k+3))/3
  $

  Hence, $P(k+1)$ holds and $1 dot 2 + 2 dot 3 + ... + n(n+1) = (n(n+1)(n+2))/3$.

  q.e.d
]

#exercise[If $n in NN$, then $2^1+2^2+2^3+...+2^n = 2^(n+1)-2$.]

#solution[
  We will prove this with mathematical induction.

  1. *Base step ($n=1$):* $2 = 2^2-2$. True.

  2. *Inductive step:* Let $k>=1$. Suppose that $2^1+2^2+2^3+...+2^n = 2^(k+1)-2$. We shall see that:
  $
    2^1+2^2+2^3+dots+2^k+2^(k+1) & = 2^(k+1) - 2 + 2^(k+1) \
                                 & = 2 dot 2^(k+1) - 2 \
                                 & = 2^(k+2) - 2
  $
  Thus, $P(k+1)$ holds and $2^1+2^2+dots+2^n = 2^(n+1)-2$ for all positive integers.
]

#exercise[Prove that $sum^n_(i=1) (8i-5)=4n^2-n$ for every positive integer $n$.]

#solution[
  We will prove this with mathematical induction.

  1. *Base step ($n=1$):* $sum^1_(i=1) (8i-5) = 4 dot 1^2 - 1 <=> 8 - 5 = 4 - 1$. True.

  2. *Inductive step:* Fix $k>=1$ and assume that $sum^k_(i=1) (8i-5)=4k^2-k$. If so, then:
  $
    sum^(k+1)_(i=1) (8i-5) & = sum^k_(i=1) (8i-5) + 8(k+1) - 5 \
                           & = 4k^2-k + 8(k+1) -5 \
                           & = 4k^2-k+8k+8-5 \
                           & = 4k^2+7k+3 \
                           & = 4k^2+8k+4 - (k+1) \
                           & = 4(k^2+2k+1) - (k+1) \
                           & = 4(k+1)^2 - (k+1)
  $
  Hence, $P(k+1)$ holds and $sum^n_(i=1) (8i-5) = 4n^2-n$.
  q.e.d
]

#exercise[If $n in NN$, then $1 dot 3 + 2 dot 4 + 3 dot 5 + 4 dot 6 + dots + n(n+2) = (n(n+1)(2n+7))/6$.]

#solution[We shall prove this with mathematical induction.

  1. *Base step ($n=1$):* $1 dot 3 = (1 dot 2 dot 9)/6$. True.

  2. *Inductive step:* Let $k>=1$ and $1 dot 3 + 2 dot 4 + 3 dot 5 + 4 dot 6 + dots + k(k+2) = (k(k+1)(2k+7))/6$. Therefore:
  $
    1 dot 3 + 2 dot 4 + 3 dot 5 + 4 dot 6 + dots + k(k+2) + (k+1)(k+3) & = (k(k+1)(2k+7))/6 + (k+1)(k+3) \
                                                                       & = ((k+1)(k(2k+7)+6(k+3)))/6 \
                                                                       & = ((k+1)(2k^2+7k+6k+18))/6 \
                                                                       & = ((k+1)(2k^2+13k+18))/6 \
                                                                       & = ((k+1)(2k^2+8k+8 + 5k + 10))/6 \
                                                                       & = ((k+1)(2(k+2)^2 + 5(k+2)))/6 \
                                                                       & = ((k+1)(k+2)(2k+4+5))/6 \
                                                                       & = ((k+1)(k+1 + 1)(2(k+1)+7))/6
  $

  Thus, $P(k+1)$ holds and $1 dot 3 + 2 dot 4 + 3 dot 5 + 4 dot 6 + dots + n(n+2)=(n(n+1)(2n+7))/6$ for every positive integer.
]

#exercise[If $n in NN$, then $1/2!+2/3!+3/4!+dots+n/(n+1)! =1-1/(n+1)!$.]

#solution[We shall prove this with mathematical induction.

  1. *Base step ($n=1$):* $1/2! = 1-1/(2)!$. True.
  2. *Inductive step:* Let $k>=1$ and $1/2!+2/3!+3/4!+dots+k/(k+1)! = 1-1/(k+1)!$. Thus:
  $
    1/2!+2/3!+3/4!+dots+k/(k+1)!+(k+1)/(k+2)! & = 1-1/(k+1)! + (k+1)/(k+2)! \
                                              & = 1 - 1/(k+1)! + (k+1)/((k+2)(k+1)!) \
                                              & = 1 - 1/(k+1)!(1 - (k+1)/(k+2)) \
                                              & = 1 - 1/(k+1)!((k+2-(k+1))/(k+2)) \
                                              & = 1 - 1/(k+1)!dot 1/(k+2) \
                                              & = 1 - 1/(k+2)!
  $

  Hence, $P(k+1)$ holds and $1/2!+2/3!+3/4!+dots+n(n+1)! = 1-1/(n+1)!$ for all positive integers.
]

#exercise[Prove that $24 divides (5^(2 n) -1)$ for every integer $n>=0$.]

#solution[
  We will prove this with mathematical induction.

  1. *Base step ($n=0$):* $24 divides (5^0 -1)$ is true since $24 divides 0$ as every integer divides $0$.

  2. *Inductive step:* Let $k>=0$ and $24 divides (5^(2 k)-1)$. If so, then $5^(2k)-1 = 24 q$ for some $q in ZZ$. We shall observe that for $n=k+1$:

  $
    5^(2(k+1))-1 & = 5^(2k+2) - 1 \
                 & = 5^(2k) dot 5^2 - 1 \
                 & = 5^(2k) dot 5^2 - 5^2 + 5^2 - 1 \
                 & = 25(5^(2k)-1)+25 - 1 \
                 & = 25(24 q) + 24 \
                 & = 24(25 q) + 24 \
                 & = 24(25 q + 1) => 24 divides (5^(2(k+1))-1)
  $

  Thus, $P(k+1)$ holds and $24 divides 5^(2 n)-1$ for every integer $n>=0$.

  q.e.d
]

#exercise[Prove that $3 divides (5^(2n) - 1)$ for every integer $n>=0$.]

#solution[
  We will use mathematical induction to prove this.

  1. *Base step ($n=0$):* $3 divides (5^0-1)$ is true as $3 divides 0$.

  2. *Inductive step:* Fix $k>=0$ and assume that $3 divides (5^(2k)-1)$. If so, then we shall observe that $5^(2k)-1=3 q$ for some integer $q$ and we shall use this fact in the following:
  $
    5^(2(k+1))-1 & = 5^(2k +2) - 1 \
                 & = 5^2 dot 5^(2k) -1 \
                 & = 5^2 dot 5^(2k) - 5^2 + 5^2 - 1 \
                 & = 5^2(5^(2k)-1)+24 \
                 & = 5^2(3 q) + 24 \
                 & = 3 (25 q) + 24 \
                 & = 3(25 q + 8) => 3 divides (5^(2(k+1))-1)
  $
  Hence, $P(k+1)$ holds and for every integer $n>=0$, $3 divides (5^(2n)-1)$.

  q.e.d
]

#exercise[Prove that $3 divides (n^3+5n+6)$ for every integer $n>=0$.]

#solution[
  1. *Base step ($n=0$):* $3 divides 6$. True.

  2. *Inductive step:* Let $k>=0$ and assume that $3 divides (k^3+5k+6)$. If so, then $k^3+5k+6 = 3q$ for some integer $q$. We shall see that:

  $
    (k+1)^3+5(k+1)+6 & = k^3+3k^2+3k+1+5k+5+6 \
                     & = k^3+5k+ 6 + 3k^2 + 3k + 5 + 1 \
                     & = 3q + 3k^2+3k+6 \
                     & = 3(q + k^2 + k +2) => 3 divides ((k+1)^3+5(k+1)+6)
  $

  Hence, $P(k+1)$ holds and for every integer $n>=1$, $3 divides (n^3+5n+6)$.

  q.e.d
]

#exercise[Prove that $9 divides (4^(3n)+8)$ for every integer $n>=0$.]

#solution[
  1. *Base step ($n=0$):* $9 divides (1+9)$. True.
  2. *Inductive step:* Let $k>=0$ and $9 divides (4^(3k)+8)$. Thus, $4^(3k)+8=9q$ for some integer $q$. We shall observe that:
  $
    4^(3(k+1))+8 & = 4^(3k+3) + 8 \
                 & = 64 dot 4^(3k) + 8 \
                 & = 64 dot 4^(3k) + 64 dot 8 - 64 dot 8 + 8 \
                 & = 64(4^(3k)+8) - 63 dot 8 \
                 & = 64(9q) - 9 dot 7 dot 8 \
                 & = 9(64q-56) => 9 divides (4^(3(k+1))+8)
  $
  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $6 divides (n^3-n)$ for every integer $n>=0$.]

#solution[
  1. *Base step ($n=0$):* $6 divides 0$. True.

  2. *Inductive step:* Let $k>=0$ and suppose $6 divides (k^3-k)$. Since $6 divides (k^3-k)$, then $3 divides (k^3-k)$ and $k^3-k= 3 q$ for some $q in ZZ$. We can observe that:
  $
    (k+1)^3-(k+1) & = (k+1)(k^2+2k+1-1) \
                  & = k^3 + 2k^2 + k^2 + 2k \
                  & = k^3 - k + 3k^2 + 3k \
                  & = 3q + 3k^2 + 3k \
                  & = 3(q+k^2+k) => 3 divides ((k+1)^3-(k+1))
  $
  Now, we shall show that $(k+1)^3-(k+1)$ is even. Working on the modulo $2$, we can observe that $(k+1)^3-(k+1) equiv (k+1)-(k+1) equiv 0 pmod(2)$. Therefore, since $2 divides ((k+1)^3-(k+1))$, $3 divides ((k+1)^3-(k+1))$ and $gcd(2, 3)=1$, Then $6 divides ((k+1)^3-(k+1))$ and $P(k) => P(k+1)$.

  The statement is indeed true.

  q.e.d
]

#exercise[Suppose $a in ZZ$. Prove that $5 divides 2^n a$ implies $5 divides a$ for any $n in NN$.]

#solution[
  1. *Base step ($n=1$):* If $5 divides 2 a$, then either $5 divides 2$ or $5 divides a$. Since $5 divides.not 2$, then $5 divides a$. True.

  2. *Inductive step:* Let $k>=1$ and suppose $5 divides 2^k a$ implies $5 divides a$ for any $n in NN$. We shall observe that $2^(k+1) a = 2 dot (2^k a)$. Now, if $5 divides 2^(k+1) a$, then either $5 divides 2$ or $5 divides (2^k a)$. Since $5 divides.not 2$ and $gcd(5, 2)=1$, then $5 divides (2^k a)$ which implies that $5 divides a$.

  Hence, $n=k+1$ holds and $5 divides 2^n a => 5 divides a$ for any $n in NN$.
  q.e.d
]

#exercise[If $n in NN$, then $1/(1 dot 2)+1/(2 dot 3)+1/(3 dot 4)+1/(4 dot 5)+dots+1/n(n+1)=1-1/(n+1)$.]

#solution[
  1. *Base step ($n=1$):* $1/(1 dot 2) = 1-1/(2)$. True.

  2. *Inductive step:* Let $k>=1$ and assume $1/(1 dot 2)+1/(2 dot 3)+1/(3 dot 4)+1/(4 dot 5)+dots+1/k(k+1)=1-1/(k+1)$. We shall observe that:
  $
    1/(1 dot 2) + 1/(2 dot 3)+ 1/(3 dot 4)+dots+1/k(k+1)+1/(k+1)(k+2) & = 1-1/(k+1) + 1/(k+1)(k+2) \
                                                                      & = 1 - 1/(k+1)(1 - 1/(k+2)) \
                                                                      & = 1 - 1/(k+1)((k+2)/(k+2)-1/(k+2)) \
                                                                      & = 1 - 1/(k+1)((k+1)/(k+2)) \
                                                                      & = 1 - 1/(k+2)
  $

  Thus, $n=k+1$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $2^n + 1 <= 3^n$ for every positive integer $n$.]

#solution[
  1 *Base step ($n=1$):* $2^1 + 1 <= 3^1$. True.

  2. *Inductive step:* Fix $k>=1$ and assume that $2^k + 1 <= 3^k$. We shall see that:
  $
    2^(k+1) + 1 & = 2 dot 2^k + 1 \
                & = 2(2^k + 1) - 1 \
                & <=2 dot 3^k -1 \
                & <= 3 dot 3^k - 3^k - 1 \
                & <= 3^(k+1) - 3^k - 1 <= 3^(k+1)
  $

  Therefore, $n=k+1$ holds and the initial statement is true.

  q.e.d
]


#exercise[Suppose $A_1, A_2,dots,A_n$ are sets in some universal set $U$, and $n>= 2$. Prove that $overline(A_1 inter A_2 inter dots inter A_n)=overline(A_1) union overline(A_2) union dots union overline(A_n)$.]

#solution[
  We shall prove this with mathematical induction.

  1. *Base step ($n=1,2$):*
  - For $n=1$, we have $overline(A_1) = overline(A_1)$, which holds trivially.
  - For $n=2$, we have $overline(A_1 inter A_2) = overline(A_1) union overline(A_2)$, which is true by de Morgan's laws.

  2. *Inductive step:* Let $k>=2$ and assume that $overline(A_1 inter A_2 inter dots inter A_k) = overline(A_1) union overline(A_2) union dots union overline(A_k)$. We shall observe, that:
  $
    overline(A_1 inter A_2 inter dots inter A_k inter A_(k+1)) &= overline((A_1 inter A_2 inter dots inter A_k) inter A_(k+1)) \
    &= overline(A_1 inter A_2 inter dots inter A_k) union overline(A_(k+1)) quad "by de Morgan's laws" \
    &= (overline(A_1) union overline(A_2) union dots union overline(A_k)) union overline(A_(k+1)) quad "by inductive hypothesis" \
    &= overline(A_1) union overline(A_2) union dots union overline(A_k) union overline(A_(k+1))
  $
  Hence, $n=k+1$ holds and the initial statements is true.

  q.e.d
]

#exercise[Suppose $A_1,A_2,dots,A_n$ are sets in some universal set $U$, and $n>=2$. Prove that $overline(A_1 union A_2 union dots union A_n)=overline(A_1) inter overline(A_2) inter dots inter overline(A_n)$.]

#solution[
  We shall once again prove this by mathematical induction.

  1. *Base step ($n=2$):* $overline(A_1 union A_2) = overline(A_1) inter overline(A_2)$. True by de Morgan's laws.

  2. *Inductive step:* Fix $k>=2$ and suppose that $overline(A_1 union A_2 union dots union A_k) = overline(A_1) inter overline(A_2) inter dots inter overline(A_k)$. We shall see that:
  $
    overline(A_1 union A_2 union dots union A_k union A_(k+1)) & = overline((A_1 union A_2 union dots union A_k) union A_(k+1)) \
    &= overline(A_1 union A_2 union dots union A_k) inter overline(A_(k+1)) quad "by de Morgan's laws" \
    &= (overline(A_1) inter overline(A_2) inter dots inter overline(A_k)) inter overline(A_(k+1)) quad "by inductive hypothesis" \
    &= overline(A_1) inter overline(A_2) inter dots inter overline(A_k) inter overline(A_(k+1))
  $
  Thus, $n=k+1$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $1/1+1/4+1/9+dots+1/(n^2)<=2-1/n$ for every $n in NN$.]

#solution[
  1. *Base step ($n=1$):* $1/1<=2-1/1$. True
  2. *Inductive step:* Let $k>=1$ and $1/1+1/4+1/9+dots+1/(k^2)<=2-1/k$. If so, then:
  $
    1/1+1/4+1/9+dots+1/(k^2)+1/((k+1)^2) & <= 2-1/k+1/((k+1)^2) \
                                         & <= 2 - (k+1)^2/k(k+1)^2 + k/k(k+1)^2 \
                                         & <= 2- (k^2+2k+1-k)/k(k+1)^2 \
                                         & <= 2 - (k^2+k+1)/k(k+1)^2 \
                                         & <= 2 - (k(k+1)+1)/k(k+1)^2 \
                                         & <= 2 - k(k+1)/k(k+1)^2 - 1/k(k+1)^2 \
                                         & <= 2 - 1/(k+1) - 1/k(k+1)^2 <= 2 - 1/(k+1)
  $

  Therefore, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $(1+2+3+dots+n)^2=1^3+2^3+3^3+dots+n^3$ for every $n in NN$.]

#solution[
  1. *Base step ($n=1$):* $1^2=1^3$. True.
  2. *Inductive step:* Let $k>=1$ and assume that $(1+2+3+dots+k)^2 = 1^3+2^3+3^3+dots+k^3$. We shall observe that:
  $
    (1+2+3+dots+k + k+1 )^2 & = ((1+2+3+dots+k)+k+1)^2 \
                            & = (1+2+3+dots+k)^2 + 2(1+2+3+dots+k)(k+1) + (k+1)^2 \
                            & "using arithmetic sum formula" \
                            & = (1+2+3+dots+k)^2 + 2 dot (1+k)/2 dot k dot (k+1) + (k+1)^2 \
                            & = (1+2+3+dots+k)^2 + k(k+1)^2 + (k+1)^2 \
                            & = (1+2+3+dots+k)^2 + (k+1)^2(k + 1) \
                            & = (1+2+3+dots+k)^2 + (k+1)^3 \
                            & "using inductive hypothesis" \
                            & = 1^3+2^3+3^3+dots+k^3+(k+1)^3
  $
  Hence, $P(k+1)$ holds and the initial statement is indeed true.

  q.e.d
]

#exercise[If $n in NN$, then $1/1+1/2+1/3+1/4+1/5+dots+1/(2^n-1)+1/2^n >= 1 + n/2$.]

#solution[
  1. *Base step ($n=1$):* $1/1+1/2>=1+1/2$. Trivially true.
  2. *Inductive step:* Let $k>=1$ and suppose that $1/1+1/2+1/3+1/4+1/5+dots+1/(2^k-1)+1/2^k >=1+k/2$. We shall now observe that:
  $
    1/1+underbrace(1/2, 2^0"-elements")+underbrace(1/3+1/4, 2^1"-elements")+dots+1/2^k+underbrace(dots+1/2^(n+1), 2^k"-elements") & >= 1 + n/2 + underbrace(1/(2^k+1) + dots + 1/2^(k+1), 2^k"-elements") \
    & >= 1 + n/2 + 2^k dot 1/2^(k+1) \
    & >= 1 + n/2 + 1/2 \
    & >= 1 + (n+1)/2
  $
  Thus, $P(k+1)$ holds and the initial statement is true.
  q.e.d
]

#exercise[If $n in NN$, then $(1-1/2)(1-1/4)(1-1/8)(1-1/16)dots(1-1/2^n)>=1/4+1/2^(n+1)$.]

#solution[
  1. *Base step ($n=1$):* $1-1/2>=1/4+1/4$. True.
  2. *Inductive step:* Let $k>=1$ and suppose that $(1-1/2)(1-1/4)(1-1/8)dots(1-1/2^k)>=1/4+1/2^(k+1)$. Now, we shall observe that:
  $
    (1-1/2^(k+1)) > 0 \
  $
  and
  $
    (1-1/2)(1-1/4)dots(1-1/2^k)(1-1/2^(k+1)) & >= (1/4+1/2^(k+1))(1-1/2^(k+1)) \
                                             & >= 1/4 - 1/2^(k+3) + 1/2^(k+1) - 1/2^(2(k+1)) \
                                             & >= 1/4 + 2/2^(k+2) - 1/2^(k+2)(1/2+1/2^k) \
                                             & "since" (1/2+1/2^k)<1 \
                                             & >= 1/4 +2/2^(k+2) - 1/2^(k+2) \
                                             & >=1/4 + 1/2^(k+2)
  $
  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Use mathematical induction to prove the binomial theorem $(x+y)^n=binom(n, 0)x^n+binom(n, 1)x^(n-1)y+dots+dots binom(n, n-1)x y^(n-1)+binom(n, n)y^n$. You may find that you need $binom(n+1, k)=binom(n, k-1)+binom(n, k)$.]

#solution[
  1. *Base step ($n=1$):* $(x+y)^1 = binom(1, 0) x^1 y^0+ binom(1, 1) x^0 y^1$. True.

  2. *Inductive step:* Let $k>=1$ and suppose that $(x+y)^k = sum^k_(i=0) binom(k, i) x^(k-i) y^i$. We shall observe that:
  $
    (x+y)^(k+1) &= (x+y)^k dot (x+y) \
    &= (x+y) sum^k_(i=0) binom(k, i) x^(k-i) y^i \
    &= x sum^k_(i=0) binom(k, i) x^(k-i)y^i + y sum^k_(i=0) binom(k, i) x^(k-i) y^i \
    &= sum^k_(i=0) binom(k, i) x^(k-i+1) y^i + sum^k_(i=0) binom(k, i) x^(k-i) y^(i+1) \
    &= sum^k_(i=0) binom(k, i) x^(k+1-i) y^i + sum^(k+1)_(i=1) binom(k, i-1) x^(k+1-i) y^i \
    &= binom(k, 0)x^(k+1-0)y^0 + sum^(k+1)_(i=1) binom(k, i) x^(k+1-i) y^i - cancel(binom(k, k+1) x^(k+1-k-1) y^(k+1)) + sum^(k+1)_(i=1) binom(k, i-1) x^(k+1-i) y^i \
    &= x^(k+1) + sum^(k+1)_(i=1) x^(k+1-i)y^i (binom(k, i)+binom(k, i-1)) \
    &= binom(k+1, 0)x^(k+1)y^0 + sum^(k+1)_(i=1) binom(k+1, i) x^(k+1-i)y^i \
    &= sum^(k+1)_(i=0) binom(k+1, i) x^(k+1-i) y^i
  $
  Therefore, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[
  Prove that $sum^n_(k=1) k binom(n, k) = n 2^(n-1)$ for each natural number $n$.
]

#solution[
  1. *Base step ($n=1$):* $1 dot binom(n, 1) = 1 dot 2^0$. True.

  2. *Inductive step:* Let $k>=1$ and suppose $sum^k_(i=1) i binom(k, i) = k 2^(k-1)$. We shall observe that:
  $
    sum^(k+1)_(i=1) i binom(k+1, i) &= sum^(k+1)_(i=1) (i binom(k, i) + i binom(k, i-1)) \
    &= sum^(k+1)_(i=1) i binom(k, i) + sum^(k+1)_(i=1) i binom(k, i-1) \
    &= sum^(k+1)_(i=1) i binom(k, i) + sum^k_(i=0) (i+1) binom(k, i) \
    &= sum^k_(i=1) i binom(k, i) + cancel((k+1) binom(k, k+1)) + sum^k_(i=0) i binom(k, i) + sum^k_(i=0) binom(k, i) \
    &= 2 sum^k_(i=1) i binom(k, i) + 0 dot binom(k, 0) + sum^k_(i=0) binom(k, n) \
    &= 2 dot k 2^(k-1) + 2^k \
    &= k 2^k + 2^k \
    &= (k+1) 2^k
  $

  Hence, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Concerning the Fibonacci sequence, prove that $F_1+F_2+F_3+F_4+dots+F_n=F_(n+2)-1$.]

#solution[
  1. *Base step ($n=1$):* $F_1 = F_3 -1$. True, since $1 = 2 - 1$.
  2. *Inductive step:* Let $k>=1$ and assume that $F_1+F_2+F_3+F_4+dots+F_k=F_(k+2)-1$. We shall observe that:
  $
    F_1+F_2+F_3+F_4+dots+F_k+F_(k+1) & = F_(k+2) - 1 + F_(k+1) \
                                     & = F_(k+3) - 1 "by definition" F_(k+1) + F_(k+2) = F_(k+3)
  $
  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Concering the Fibonacci sequence, prove that $sum^n_(k=1) F_k^2=F_n F_(n+1)$.]

#solution[
  1. *Base step ($n=1$):* $F_1^2 = F_1 F_2$. True, since $1^2 = 1 dot 1$.

  2. *Inductive step:* Let $k>=1$ and suppose that $sum^k_(i=1) F_i^2=F_k F_(k+1)$. We shall see that:
  $
    sum^(k+1)_(i=1) F_i^2 & = sum^k_(i=1) F_i^2 + F_(k+1)^2 \
                          & = F_k F_(k+1) + F_(k+1)^2 \
                          & = F_(k+1)(F_(k+1) + F_k) \
                          & = F_(k+1)F_(k+2)
  $
  Hence, $P(k+1)$ holds and the initial statement is true.
]

#exercise[Concering the Fibonacci sequence, prove that $F_1+F_3+F_5+F_7+dots+F_(2n-1)=F_(2n)$.]

#solution[
  1. *Base step ($n=1$):* $F_1 = F_2$. Which is true, since $F_1=F_2=1$.

  2. *Inductive step:* Let $k>=1$ and assume that $F_1+F_3+F_5+F_7+dots+F_(2k-1)=F_(2k)$. We shall observe that:
  $
    F_1 + F_3 + F_5 + F_7 + dots + F_(2k-1) + F_(2k+1) & = F_(2k) + F_(2k+1) \
                                                       & = F_(2k+2) = F_(2(k+1)) \
  $

  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Concering the Fibonacci sequence, prove that $F_2+F_4+F_6+F_8+dots+F_(2n)=F_(2n+1)-1$.]

#solution[
  1. *Base step ($n=1$):* $F_2 = F_3 - 1$. True.
  2. *Inductive step:* Let $k>=1$ and suppose that $F_2+F_4+F_6+F_8+dots+F_(2k)=F_(2k+1)-1$. We shall show that:
  $
    F_2 + F_4 + F_6 + F_8 + dots + F_(2k) + F_(2k+2) & = F_(2k+1) -1 + F_(2k+2) \
                                                     & = F_(2k+3) - 1 \
                                                     & = F_(2(k+1)+1)
  $

  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[The indicated diagonals of Pascal's triangle sum to Fibonacci numbers. Prove that this pattern continues forever.]

#solution[We shall prove that $sum^floor(n/2)_(i=0) binom(n-i, i)= F_n$, which we will do with mathematical induction.

  1. *Base step ($n=1$):* $sum^floor(1/2)_(i=0) binom(1-i, i) = F_1$, which is true since $sum^0_(i=0) binom(1-i, i) = 1 = F_1$.

  2. *Inductive step:* Let $k>=1$ and suppose that $sum^floor(k/2)_(i=0) binom(k-i, i) = F_k$ and $sum^floor((k-1)/2)_(i=0) binom(k-1-i, i)=F_(k-1)$. We shall observe that $floor((k+1)/2)= floor(k/2) or floor((k+1)/2)=floor(k/2)+1$. Now, if $floor((k+1)/2) = floor(k/2)$, then:
  $
    sum^floor((k+1)/2)_(i=0) binom(k+1-i, i) & = sum^floor(k/2)_(i=0) (binom(k-i, i) + binom(k-i, i-1)) \
                                             & = sum^floor(k/2)_(i=0) binom(k-i, i) + sum^floor(k/2)_(i=0) binom(k-i, i-1) \
                                             & = F_k + sum^floor(k/2)_(i=1) binom(k-i, i-1) \
                                             & = F_k + sum^floor(k/2)_(i=1) \
                                             & = F_k + sum^(floor(k/2)-1)_(i=0) binom(k-i-1, i) \
                                             & = F_k + F_(k-1) \
                                             & = F_(k+1)
  $
  However, if $floor((k+1)/2) = floor(k/2)+1$, then:
  $
    sum^floor((k+1)/2)_(i=0) binom(k+1-i, i) &= sum^(floor(k/2)+1)_(i=0) binom(k+1-i, i) \
    &= sum^(floor(k/2)+1)_(i=0) (binom(k-i, i)+binom(k-i, i-1)) \
    &= sum^(floor(k/2)+1)_(i=0) binom(k-i, i) + sum^(floor(k/2)+1)_(i=0) binom(k-i, i-1) \
    &= sum^floor(k/2)_(i=0) binom(k-i, i) + binom(k-floor(k/2)-1, floor(k/2)+1) + sum^(floor(k/2)+1)_(i=1) binom(k-i, i-1) \
    &= sum^floor(k/2)_(i=0) binom(k-i, i) + binom(k-floor(k/2)-1, floor(k/2)+1) + sum^(floor(k/2))_(i=0) binom(k-i-1, i) \
    &= sum^floor(k/2)_(i=0) binom(k-i, i) + binom(k-floor(k/2)-1, floor(k/2)+1) + sum^(floor(k/2)-1)_(i=0) binom(k-i-1, i) + binom(k-floor(k/2)-1, floor(k/2)) \
    &= F_k + F_(k-1) + cancel(binom(k-floor(k/2), floor(k/2)+1)) = F_(k+1)
  $
  It is crucial to mention that $binom(k-floor(k/2), floor(k/2)+1)$ cancels, since $k-floor(k/2)<floor(k/2)+1$.

  Now, since $P(k+1)$ holds then, by strong induction, the initial statement is true.

  q.e.d
]

#exercise[Here $F_n$ is the $n$th Fibonacci number. Prove that

  $
    F_n=(((1+sqrt(5))/2)^n-((1-sqrt(5))/2)^n)/sqrt(5)"."
  $
]

#solution[
  1. *Base step ($n=1$):* $((1+sqrt(5))/2-(1-sqrt(5))/2)/sqrt(5)=sqrt(5)/sqrt(5)=1$. True.
  2. *Inductive step:* Let $k>=1$ and suppose $F_k=(((1+sqrt(5))/2)^k-((1-sqrt(5))/2)^k)/sqrt(5)$ and $F_(k-1)=(((1+sqrt(5))/2)^(k-1)-((1-sqrt(5))/2)^(k-1))/sqrt(5)$. We shall observe that:
  $
    F_(k+1) & = F_k + F_(k-1) \
            & = (((1+sqrt(5))/2)^k-((1-sqrt(5))/2)^k)/sqrt(5) + (((1+sqrt(5))/2)^(k-1)-((1-sqrt(5))/2)^(k-1))/sqrt(5) \
            & = (((1+sqrt(5))/2)^(k-1)(1+(1+sqrt(5))/2)-((1-sqrt(5))/2)^(k-1)(1+(1-sqrt(5))/2))/sqrt(5) \
            & = (((1+sqrt(5))/2)^(k-1)((1+sqrt(5))/2)^2-((1-sqrt(5))/2)^(k-1)((1-sqrt(5))/2)^2)/sqrt(5) \
            & = (((1+sqrt(5))/2)^(k+1)-((1+sqrt(5))/2)^(k+1))/sqrt(5)
  $
  Hence, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $sum^n_(k=0) binom(k, r)=binom(n+1, r+1)$, where $1<=r<=n$.]

#solution[
  1. *Base step ($n=1$):* $sum^1_(k=0) binom(k, r) = binom(0, r) + binom(1, r) = binom(2, r+1)$. Since $1<=r <=n$, then $binom(0, r)=0$ and $binom(1, 1) = binom(2, 2)$ is trivially true.

  2. *Inductive step:* Let $k>=1$ and assume that $sum^k_(i=0) binom(i, r) = binom(k+1, r+1)$, where $1<=r<=k$. We shall observe that:
  $
    sum^(k+1)_(i=0) binom(i, r) & = sum^k_(i=0) binom(i, r) + binom(k+1, r) \
  $
  $
    sum^(k+1)_(i=0) binom(i, r) & = binom(k+1, r+1) + binom(k+1, r) \
                                & = binom(k+2, r+1) quad "by Pascal's rule"
  $

  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that the number of $n$-digit binary numbers that have no consequtive $1$'s is the Fibonacci number $F_(n+2)$. For example, for $n=2$ there are three such numbers (00, 01, and 10), and $3=F_(2+2)=F_4$. Also, for $n=3$ there are five such numbers (000, 001, 010, 100, 101), and $5=F_(3+2)=F_5$.]

#solution[
  We shall prove this with mathematical induction.

  1. *Base step ($n=1$):* In $1$-digit binary number $0$ and $1$ has no consecutive $1$'s while $F_(1+2)=2$. True.

  2. *Inductive step:* Let $k>=1$ and let $F_(k+2)$ and $F_(k+1)$ corresponds to the number of $k$ and $k-1$-digit binary numbers that have no consequtive $1$'s.


  Were we to assess how many $k+1$-digit binary number exists, we shall solve it combinatorically. We know for sure that the remaining digit can be either $1$ or $0$, however, we must exclude cases where corresponding digit is $1$.

  Now, we shall see that last digit is $0$ $F_(k+2)$ times by multiplication law $1 dot F_(k+2)$ for $k$-digit binary numbers. The remaining problem is how many times $1$ is the last digit. It is $F_(k+1)$ times, since by the same reasoning second to last digit equals $0$ $F_(k+1)$ times. Therefore, the number of $k+1$-digit binary numbers that have no consequtive $1$'s is $F_(k+2)+F_(k+1)=F_(k+3)$. The $P(k+1)$ holds and the initial statement is indeed true.

  q.e.d
]

#exercise[Suppose $n$ (infinitely long) straight lines lie on plane in such a way that no two of the lines are parallel, and no three of the lines intersect at a single point. Show that this arrangement divides the plane into $(n^2+n+2)/2$.]

#solution[We shall prove this by mathematical induction.

  1. *Base step ($n=1$):* One line divides plane into two into two, while $(1^2+1+2)/2=2$. True.

  2. *Inductive step:* Let $k>=1$ and assume that $k$ lines divide the plane into $(k^2+k+2)/2$.

  Firstly, we shall see that never does the line intersects with another line twice and always, if not parallel, every two line intersect. Since no two lines are parallel and no three intersect at a single point, shall we put another line on the plane, it will intersect $k$-times with the other lines. Now, it means that this line is divided now into $k+1$ pieces and every piece splits the areas into two, generating $k+1$ regions.

  Now, we shall show that if $P_k$ is a number of regions created by $k$ lines, then:
  $
    P_(k+1) & = P_k + k+1 \
            & = (k^2+k+2)/2 + (2k+2)/2 \
            & = (k^2+2k+1 + k+1 + 2)/2 \
            & = ((k+1)^2+ (k+1) + 2)/2
  $
  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $3^1+3^2+3^3+3^4+dots+3^n=(3^(n+1)-3)/2$ for every $n in NN$.]

#solution[
  1. *Base step ($n=1$):* $3^1 = (3^2-3)/2$. True.

  2. *Inductive step:* Let $k>=1$ and suppose $3^1+3^2+3^3+3^4+dots+3^k=(3^(k+1)-3)/2$. We shall observe that:
  $
    3^1+3^2+3^4+dots+3^k+3^(k+1) & = (3^(k+1)-3)/2 + 3^(k+1) \
                                 & = (3^(k+1)+2 dot 3^(k+1)-3)/2 \
                                 & = (3^(k+2)-3)/2
  $

  Hence, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that if $n,k in NN$, and $n$ is even and $k$ is odd, then $binom(n, k)$ is even.]

#solution[
  We will prove it with mathematical induction.

  1. *Base step ($n=1$):* $binom(2, 1) = 2$ and $2$ is even. True.

  2. *Inductive step:* Let $m>=1, m>=k>=1$ and $n = 2 m$, where $m in NN$. Suppose that $P(m)$ holds for every odd $k in NN$. Thus, $binom(n, k)$ and $binom(n, k-2)$ are even. We shall observe that:

  $
    binom(2m+2, k) & = binom(2m+1, k) + binom(2m+1, k-1) \
    binom(2m+2, k) & = binom(2m, k) + binom(2m, k-1) + binom(2m+1, k-1) \
  $
  $
    binom(2m+2, k) & = binom(2m, k) + 2 binom(2m, k-1) + binom(2m, k-2) \
  $
  Working on modulo $2$:
  $
    binom(2m+2, k) & equiv binom(2m, k) + 2 binom(2m, 2k-1) + 0 pmod(2) \
                   & equiv 0 + 0 + 0 pmod(2)
  $
  Hence, $binom(2m+2, k)$ is even and $P(m+1)$ holds.
]

#exercise[Prove that if $n=2^k-1$ for some $k in NN$, then every entry in the $n$th row of Pascal's triangle is odd.]

#solution[We shall prove it by mathematical induction.

  1. *Base step ($k=1$):* First row of pascal's triangle is $1,1$. Both number are odd. True.

  2. *Inductive step:* Let $m>=1$ and suppose that $forall_(0<=l<=2^m-1) (binom(2^m-1, l) equiv 1 pmod(2))$. We shall observe that by inductive hypothesis:
  $
    binom(2^m, l) & = binom(2^m-1, l) + binom(2^m-1, l-1) \
    binom(2^m, l) & equiv 1 +1 equiv 0
  $

  Therfore, $binom(2^m, l)$ is even for every $l$ except $l=0$ and $l=2^m$, which are equal $1$.

  Next, we shall establish that $(x+1)^n$ equals a polynomial, which coefficents are $binom(n, k)$: $1+binom(n, 1)x + binom(n, 2)x^2 + dots + binom(n, n)x^n$.

  Now, we shall see that:
  $
    (x+1)^(2^(m+1)-1) & = (x+1)^(2^m - 1 + 2^m) \
                      & = (x+1)^(2^m-1) (x+1)^2^m
  $
  Working on modulo $2$, we shall remember that $binom(2^m, l)$ is even for $0<l<2^m$ and $binom(2^m-1, l)$ is odd for all $0<=l<=2^m-1$. Thus:
  $
    (x+1)^(2^(m+1)-1) & equiv (x+1)^(2^m-1)(x+1)^2^m pmod(2) \
                      & equiv (1+x+x^2+dots+x^(2^m-1))(1+x^2^m) pmod(2) \
                      & equiv 1+x+x^2+dots+x^(2^m-1)+x^2^m + x^(2^m+1) + dots + x^(2^(m+1)-1) pmod(2)
  $

  Therefore, every coefficient of $(x+1)^(2^(m+1)-1)$ is odd and $P(m+1)$ holds. Initial statement is true.

  q.e.d
]

#exercise[Prove that if $m,n in NN$, then $sum^n_(i=0) i binom(m+i, m)=n binom(m+n+1, m+1) - binom(m+n+1, m+2)$.]

#solution[
  1. *Base step ($n=1$):* $sum^1_(i=0) i binom(m+i, m) = binom(m+1, m) = binom(m+2, m+1) - binom(m+2, m+2)$. True, since $m+1 = m+2 - 1$.

  2. *Inductive step:* Let $k>=1$ and $sum^k_(i=0) i binom(m+i, m) = k binom(m+k+1, m+1) - binom(m+k+1, m+2)$. We shall see that:
  $
    sum^(k+1)_(i=0) i binom(m+i, m) & = sum^k_(i=0) i binom(m+i, m) + (k+1) binom(m+k+1, m) \
    & = k binom(m+k+1, m+1) - binom(m+k+1, m+2) + (k+1) binom(m+k+1, m) \
    & = k binom(m+k+1, m+1) - binom(m+k+1, m+2) + k binom(m+k+1, m) + binom(m+k+1, m) \
    & = k (binom(m+k+1, m+1) + binom(m+k+1, m))- binom(m+k+1, m+2) + binom(m+k+1, m) \
    & = k binom(m+k+2, m+1)- binom(m+k+1, m+2) + binom(m+k+1, m) + binom(m+k+1, m+1) - binom(m+k+1, m+1) \
    & = k binom(m+k+2, m+1)- (binom(m+k+1, m+2)+binom(m+k+1, m+1)) + binom(m+k+2, m+1) \
    & = (k+1) binom(m+k+2, m+1)- binom(m+k+2, m+2)\
  $

  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove that $sum^l_(i=0) binom(m, i)binom(n, l-i) = binom(m+n, l)$ for non-negative integers $m,n$ and $l$.]

#solution[
  1. *Base step ($m=0$):* $sum^l_(i=0) binom(0, i) binom(n, l-i) = binom(n, l) + cancel(sum^l_(i=1) binom(0, i) binom(n, l-i)) = binom(m+n, l)$. True.

  2. *Inductive step:* Let $k>=0$ and suppose that for all non-negative integers $n,l$, $sum^l_(i=0) binom(k, i) binom(n, l-i) = binom(k+n, l)$. We shall observe that:

  $
    sum^l_(i=0) binom(k+1, i) binom(n, l-i) & = sum^l_(i=0) (binom(k, i) + binom(k, i-1))binom(n, l-i) \
  $
  $
    sum^l_(i=0) binom(k+1, i) binom(n, l-i) &= sum^l_(i=0) binom(k, i) binom(n, l-i) + sum^l_(i=0) binom(k, i-1) binom(n, l-i) \
    &= binom(k+n, l) + cancel(binom(k, -1) binom(n, l-0)) + sum^l_(i=1) binom(k, i-1) binom(n, l-i) \
    &= binom(k+n, l) + sum^(l-1)_(i=0) binom(k, i) binom(n, l-1 -i) \
    &= binom(k+n, l) + binom(k+n, l-1) = binom(k+n+1, l)
  $

  Hence, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[
  Prove that $sum^m_(i=0) binom(m, i) binom(n, l+i) = binom(m+n, m+l)$ for non-negative integers $m,n$ and $l$.
]

#solution[
  1. *Base step ($m=0$):* $sum^0_(i=0) binom(0, i) binom(n, l+i) = binom(0, 0) binom(n, l) = binom(0+n, 0+l)$. True.

  2. *Inductive step:* Let $k>=0$ and suppose that for all non-negative integers $n,l$, $sum^k_(i=0) binom(k, i) binom(n, l+i) = binom(k+n, k+l)$. We shall observe that:
  $
    sum^(k+1)_(i=0) binom(k+1, i) binom(n, l+i) &= sum^k_(i=0) binom(k+1, i) binom(n, l+i) + binom(k+1, k+1) binom(n, l+k+1) \
    &= sum^k_(i=0) (binom(k, i) + binom(k, i-1)) binom(n, l+i) + binom(n, l+k+1)\
    &= sum^k_(i=0) binom(k, i)binom(n, l+i) + sum^k_(i=0) binom(k, i-1) binom(n, l+i) + binom(n, l+k+1) \
    &= binom(k+n, k+l) + cancel(binom(k, -1)binom(n, l)) + sum^k_(i=1) binom(k, i-1)binom(n, l+i) + binom(n, l+k+1) \
    &= binom(k+n, k+l) + sum^(k-1)_(i=0) binom(k, i) binom(n, l+1+i)+ binom(k, k) binom(n, l+1+k) \
    &= binom(k+n, k+l) + sum^k_(i=0) binom(k, i) binom(n, l+1+i) \
    &= binom(k+n, k+l) + binom(k+n, k+l+1) = binom(k+1 + n, k+1 + l)
  $

  Hence, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Use Exercise 2.38 above to prove that if $n in NN$, then $binom(n, 0)^2+binom(n, 1)^2+binom(n, 2)^2+dots+binom(n, n)^2 = binom(2n, n)$.]

#solution[
  We know for sure that by Vandermonde's identity $sum^p_(k=0) binom(m, k) binom(n, p-k) = binom(m+n, p)$.

  Therefore, we shall observe that:
  $
    sum^n_(i=0) binom(n, i)^2 & = sum^n_(i=0) binom(n, i) binom(n, n-i) \
                              & = binom(n+n, n) \
                              & = binom(2n, n)
  $

  q.e.d
]

#exercise[If $n$ and $m$ are non-negative integers, then $binom(n+0, 0)+binom(n+1, 1)+binom(n+2, 2)+dots+binom(n+m, m)=binom(n+m+1, m)$.]

#solution[
  We shall prove that $sum^m_(i=0) binom(n+i, i)=binom(n+m+1, m)$

  1. *Base step ($m=0$):* $sum^0_(i=0) binom(n+i, i) = binom(n, 0) = 1 = binom(n+0+1, 0)$. True.

  2. *Inductive step:* Let $k>=0$ and suppose that for all non-negative integers $n$ the following statement is true: $sum^k_(i=0) binom(n+i, i) = binom(n+k+1, k)$. We shall observe that:
  $
    sum^(k+1)_(i=0) binom(n+i, i) & = sum^k_(i=0) binom(n+i, i) + binom(n+k+1, k+1) \
                                  & = binom(n+k+1, k) + binom(n+k+1, k+1) = binom(n+(k+1)+1, k+1)
  $

  Thus, $P(k+1)$ holds and the initial statement is true.

  q.e.d
]

#exercise[Prove: The $n$th Fibonacci number $F_n$ is even if and only if $3 divides n$.]

#solution[

  1. *Base step:* $F_1=F_2=1$ and $F_3=F_2+F_1=1+1=2$, which is even. True.

  2. *Inductive step:* Let $k>=1$ and $F_(3k) equiv 0 pmod(2)$. We shall show that:
  $
    F_(3(k+1)) & = F_(3k+3) \
               & = F_(3k+2) + F_(3k+1) \
               & = (F_(3k+1) + F_(3k)) + (F_(3k) + F_(3k-1)) \
               & = F_(3k) + F_(3k-1) + 2* F_(3k) + F_(3k-1) \
               & = 3* F_(3k) + 2 * F_(3k-1)
  $
  Now, working on modulo $2$:
  $
    F_(3(k+1)) equiv 1 dot 0 + 0 equiv 0
  $
  Hence, $P(k+1)$ holds and $3 divides n => 2 divides F_n$

  We shall prove now, that if $2 divides F_n$, then $3 divides n$.

  We know for sure, that $F_(3k+2) = F_(3k+1)+F_(3k)$ and $F_(3k+3) = F_(3k+2) + F_(3k+1)$. Moreover, we proved that $3 divides n => 2 divides F_n$, hence $F_(3k+3)$ and $F_(3k)$ are even. Working on modulo $2$, we shall observe that:

  $
    F_(3k+2) equiv F_(3k+1) + 0 pmod(2),
  $
  This is true only if $F_(3k+2)$ and $F_(3k+1)$ are both even or both odd. However, if they are even, then every Fibonacci number is even, which is false, therefore they must be odd. Hence, $3 divides.not n => 2 divides.not F_n$ and by contrapositive statement $2 divides F_n => 3 divides n$.

  Thus: $3 divides n iff 2 divides F_n$.

  q.e.d
]

#exercise[Prove that $8 divides (3^n-2n^2-1)$ for every integer $n>=0$.]

#solution[
  1. *Base step ($n=0$):* $(3^n-2n^2-1) = 1-0-1 = 0$. $8 divides 0$ therefore $8 divides (3^n-2n^2-1)$ for $n=0$. True.

  2. *Inductive step:* Let $k>=0$ and suppose that $8 divides 3^k-2k^2-1$. We shall observe that:
  $
    3^(k+1) - 2(k+1)^2-1 & = 3^(k+1) - 2k^2 -4k -2 -1 \
                         & = 3^(k+1) - 6k^2 -3 +4k^2 - 4k \
                         & = 3(3^k-2k^2-1) + 4(k^2 - k)
  $
  Since $k^2-k equiv k-k equiv 0 pmod(2)$, then
  both $8 divides 3(3^k-2k^2-1)$ and $8 divides 4(k^2-k)$. Hence, $8 divides 3^(k+1)-2(k+1)^2-1$. $P(k+1)$ holds and the initial statement is true.
]
