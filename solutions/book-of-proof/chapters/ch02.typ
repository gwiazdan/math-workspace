#import "/templates/preamble.typ": *

= II How to Prove Conditional Statements

== Proof by Contradiction

+ Prove the following statements using any method from Chapters 4,5 or 6.
#exercise[We say that a point $P=(x,y)$ in $RR^2$ is rational if both $x and y$ are rational. More precisely, $P$ is rational if $P=(x,y)in QQ^2$, An equation $F(x,y)=0$ is said to have a rational point if there exists $x_0,y_0 in QQ$ such that $F(x_0,y_0)=0$. For example the curve $x^2+y^2-1=0$ has rational point $(x_0,y_0)=(1,0)$. Show that the curve $x^2+y^2-3=0$ has no rational points.]

#solution[
  Suppose $x^2+y^2-3=0$ has rational point. Therefore, there is such $x=p/q quad y= k/m$ for some $p,q,k,m in ZZ$, where $p,q$ and $k,m$ are co-prime integers and $m!=0 and q!=0$ that satisfies the equation.

  $
    & "Since" x^2+y^2-3=0 \
    & (p/q)^2+(k/m)^2-3=0 \
    & p^2/q^2 + k^2/m^2 - 3 =0 \
    & (p^2 m^2 + q^2 k^2)/(m^2 q^2) =3 \
    & p^2 m^2 + q^2 k^2 = 3m^2 q^2 \
    & (p m)^2 + (q k)^2 = 3(m q)^2 => 3 divides (p m)^2+(q k)^2 \
  $

  Examine whether there is any pythagorean triple such as $a^2+b^2=3c^2$, where $a,b,c in ZZ$ and $gcd(a, b, c)=1$.
  Suppose field on $ZZ_3$:
  $
    & a^2+b^2 equiv 3 c^2 pmod(3) \
    & a^2+b^2 equiv 0 pmod(3) \
  $
  Since
  $
    & 0^2 equiv 0 pmod(3) \
    & 1^2 equiv 1 pmod(3) \
    & 2^2 equiv 1 pmod(3)
  $
  Then $a equiv b equiv c equiv 0 pmod(3)$ and $gcd(a, b, c)>=3$. Therefore, there is no such pythagorean triple and hence, $x^2+y^2-3=0$ has no rational point.


  q.e.d
]

#exercise[Exercise 20 (above) involved showing that there are no rational points on the curve $x^2+y^2-3=0$. Use this fact to show that $sqrt(3)$ is irrational.]

#solution[
  As we already know that no solution to $x^2+y^2-3=0$ is rational and since one of the solutions is $(sqrt(3),0)$, then $(sqrt(3),0)$ is no rational solution, leading to the conclusion that either $sqrt(3)$ or $0$ is irrational. As we know that $0$ is rational number, then $sqrt(3)$ is irrational.

  q.e.d
]

#exercise[Explain why $x^2+y^2-3=0$ not having any rational solutions implies $x^2+y^2-3^k=0$ has no rational solutions for $k$ and odd, positive $k$.]

#solution[
  Since $x^2+y^2-3=0$ has no rational solutions, then
  $
    & x^2+y^2-3^k = 0 "which can be represented as:" \
    & x^2+y^2-3^(2n+1) = 0 "for some" n in ZZ \
    & x^2+y^2-3 dot 3^(2n) =0 \
    & x^2/3^(2n)+y^2/3^(2n)-3=0 \
    & (x/3^n)^2 + (y/3^n)^2 -3 = 0
  $
  has no rational solutions, since for any $x,y in QQ$, $x/3^(2n), y/3^(2n) in QQ$ as well.

  q.e.d
]

#exercise[Use above result to prove that $sqrt(3^k)$ is irrational for all odd, positive $k$]

#solution[
  Since we proved that $x^2+y^2-3^k=0$ has no rational solutions for odd $k$, then any solution $(sqrt(3^k),0)$ is irrational and as $0$ is a rational number, hence $sqrt(3^k)$ is irrational.

  q.e.d
]

#exercise[The number $log_2(3)$ is irrational.]

#solution[
  Suppose $log_2(3)$ is rational and therefore $2^k=3$ has solution for rational $k$.

  Let $k=p/q$ for some co-prime integers $p,q$, where $q!=0$. Since $2^(p/q)=3$, then $2^p = 3^q$. This implies that $3 divides 2^p$ and $2 divides 3^q$, which is false. Hence, the number $log_2(3)$ is irrational.

  q.e.d
]

