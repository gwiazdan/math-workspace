#import "/templates/preamble.typ": *

= Vector Spaces

== $RR^n$ and $CC^n$

#definition(title: $"Complex numbers" CC$)[
  - A complex number is an ordered pair $(a,b)$, where $a,b in RR$, but we will write this as $a+b i$.

  - The set of all complex numbers is denoted by $CC$:
  $
    CC = {a + b i: a,b in RR}
  $
  - _Addition_ and _multiplication_ on $CC$ are defined by
  $
    (a+ b i) + (c + d i) & = (a+c) + (b+d) i \
       (a+b i )(c + d i) & = (a c- b d) + (a d + b c)i
  $

]

#exercise[Show that $alpha + beta = beta + alpha$ for all $alpha,beta in CC$.]

#proof[
  Let $alpha = a+b i$, $beta = c+ d i$ for some $a,b,c,d in RR$. _Addition_ on $CC$ is defined by
  $
    (a + b i) + (c + d i) = (a+c) + (b+d) i
  $
  Now, since $+$ is commutative on $RR$, then:
  $
    alpha + beta & = (a + b i) + (c + d i) \
                 & = (a+c)+(b+d)i \
                 & = (c+a)+(d+b)i \
                 & = (c+d i) + (a + b i) \
                 & = beta + alpha
  $

  Therefore, $alpha+beta=beta+alpha$ for all $alpha,beta in CC$.
]

#exercise[Show that $(alpha+beta) + lambda = alpha + (beta + lambda)$ for all $alpha,beta,lambda in CC$.]

#proof[
  Let $alpha=a+b i$, $beta=c+d i$ and $lambda=e+f i$. We shall show that
  $
    (alpha+beta)+lambda & = ((a+b i) + (c+d i)) + lambda \
                        & = ((a+b i)+(c+d i)) + lambda \
                        & = ((a+c) + (b+d) i) + e + f i \
                        & = (a+c+e) + (b+d+f) i \
                        & = (a+b i) + ((c+e) +(d+f)i) \
                        & = alpha + ((c+d i) + (e+f i)) \
                        & = alpha + (beta + lambda)
  $
  Hence, $(alpha+beta)+lambda = alpha + (beta+lambda)$.
]

#exercise[Show that $(alpha beta) lambda = alpha (beta lambda)$ for all $alpha, beta, lambda in CC$.]

#proof[
  Let $alpha=a+b i$, $beta=c+d i$ and $lambda = e+f i$ for some $a,b,c,d,e,f in RR$. W e shall show that
  $
    (alpha beta) lambda & = ((a+b i)(c+d i))(e+f i) \
                        & = ((a c-b d)+(a d + b c)i)(e+f i) \
                        & = ((a c - b d )e-(a d + b c)f)+((a c - b d)f + (a d + b c)e)i \
                        & = (a c e - b d e - a d f - b c f) + (a c f - b d f + a d e + b c e)i \
                        & = (a(c e - d f) - b(c f + d e))+ (a(c f + d e) + b(c e - d f))i \
                        & = (a + b i)((c e - d f)+(c f + d e)i) \
                        & = (a+b i)((c + d i)(e + f i)) \
                        & = alpha (beta lambda)
  $
  Hence, $(alpha beta) lambda = alpha (beta lambda)$.
]

#exercise[Show that $lambda(alpha + beta) = lambda alpha + lambda beta$ for all $lambda, alpha, beta in CC$.]

#proof[
  Let $alpha=a+b i$, $beta=c+d i$ and $lambda = e+f i$ for some $a,b,c,d,e,f in RR$. We shall show that
  $
    lambda(alpha + beta) & = (e+f i)((a+b i)+(c+d i)) \
                         & = (e + f i) ((a+c)+(b+d)i) \
                         & = (e(a+c)-f(b+d))+(e(b+d)+f(a+c))i \
                         & = (a e + c e -b f -d f) +(b e + d e + a f + c f)i \
                         & = ((a e - b f) + (c e - d f)) + ((a f + b e) + (c f + d e))i \
                         & = ((a e - b f)+(a f+b e)i)+((c e - d f)+(c f + d e)i) \
                         & = ((e a - f b)+(f a + e b)i)+((e c - f d)+(f c + e d)i) \
                         & = (e + f i)(a + b i) + (e + f i)(c + d i) \
                         & = lambda alpha + lambda beta
  $
  Thus, $lambda(alpha+beta)=lambda alpha + lambda beta$.
]

#exercise[Show that for every $alpha in CC$, there exists a unique $beta in CC$ such that $alpha + beta =0$.]

#proof[
  Let $alpha = a + b i$ for some $a,b in RR$.

  1. Existence of $beta$: #v(0.1em) Define $beta in CC$ such that $beta = (-a) + (-b)i = -alpha$. Notice that $a+b i + (-a) + (-b) i = (a +(-a)) + (b+(-b))i = 0 + 0i = 0$. Hence, such beta exists for every $alpha$.

  2. Uniqueness of $beta$: #v(0.1em) Let $alpha + beta = alpha + beta'$ for $beta=c+ d i$ and $beta'=c' + d' i$, where $c,d,c',d' in RR$. Now $        alpha + beta & = alpha +beta' \
    (a+b i) + (c + d i) & = (a+ b i) + (c'+ d' i) \
         (a+c) + (b+d)i & = (a+c') + (b+d') i $ Thus, $a+c=a+c'$ and $b+d=b+d'$, so $c=c'$ and $d=d'$. To conclude, $beta = c+ d i = c' + d' i = beta'$, so $beta = beta'$, which implies that $beta$ is unique.
]

#exercise[Show that for every $alpha in CC$ with $alpha!=0$, there exists a unique $beta in CC$ such that $alpha beta = 1$.]

#proof[
  Let $alpha = a+b i$ for some $a,b in RR$. Note that since $alpha !=0$, then $a!=0 or b!=0$, so $a^2+b^2!=0$.

  1. Existence of $beta$: #v(0.1em) Define $beta = (a/(a^2+b^2) + (-b)/(a^2+b^2)i)$. Notice that $ alpha beta & = (a+b i) (a/(a^2+b^2)+(-b)/(a^2+b^2)i) \
               & = (a^2/(a^2+b^2)+b^2/(a^2+b^2)) + ((a b)/(a^2+b^2)-(a b)/(a^2+b^2)) \
               & = (a^2+b^2)/(a^2+b^2) + 0 i = 1 $
    Therefore, such $beta$ exists for every $alpha!=0$.

  2. Uniqueness of $beta$: #v(0.1em) Suppose $beta, beta' in CC$ satisfies $alpha beta = 1$ and $alpha beta'=1$. If so, then $ beta' = beta' dot 1 & = beta' (alpha beta) quad "by identity element" \
                        & = (beta' alpha) beta quad "by associativity" \
                        & = (alpha beta') beta quad "by commutativity" \
                        & = 1 dot beta = beta quad "since " alpha beta' = 1 $
    Therefore, $beta'=beta$, which leads us to the conclusion that $beta$ is unique.
]

#exercise[Show that $ (-1 + sqrt(3) i)/2 $ is a cube root of $1$.]

#proof[
  It follows that
  $
    ((-1+sqrt(3)i)/2)^3 & = (-1/2+sqrt(3)/2 i)^3 \
                        & = ((-1/2+sqrt(3)/2 i) dot (-1/2 + sqrt(3)/2 i)) dot (-1/2+sqrt(3)/2 i) \
                        & = ((1/4-3/4)+(-sqrt(3)/4+(-sqrt(3)/4))i) dot (-1/2 + sqrt(3)/2 i) \
                        & = (-1/2 + (- sqrt(3)/2 )i) dot (-1/2 + sqrt(3)/2 i) \
                        & = (1/4 + 3/4) + (-sqrt(3)/4 +sqrt(3)/4)i \
                        & = 1 + 0 i = 1
  $
  Therefore, $((-1+sqrt(3)i)/2)^3 = 1$, which means that it is a cube root of $1$.
]

#exercise[Find two distinct square roots of $i$.]

#solution[
  Select two complex numbers $alpha = sqrt(2)/2 + sqrt(2)/2 i$ and $beta = -sqrt(2)/2 - sqrt(2)/2 i$.

  First, establish that both numbers are distinct, since $alpha+(-beta) = (sqrt(2)/2+sqrt(2)/2 i)+(-(-sqrt(2)/2-sqrt(2)/2 i)) = (sqrt(2)/2+sqrt(2)/2 i) + (sqrt(2)/2 + sqrt(2)/2 i) = sqrt(2) + sqrt(2)i != 0$.

  Notice that $alpha^2 = alpha dot alpha = (sqrt(2)/2+sqrt(2)/2 i )(sqrt(2)/2 + sqrt(2)/2 i)=(1/2-1/2)+(1/2+1/2)i=i$, and $beta^2=beta dot beta = (-sqrt(2)/2-sqrt(2)/2 i)(-sqrt(2)/2-sqrt(2)/2 i) = (1/2 - 1/2) + (1/2+1/2)i = i$.
]

#exercise[Find $x in RR^4$ such that
  $
    (4,-3, 1, 7) + 2x = (5,9,-6,8)
  $
]

#solution[
  Note that
  $
    (4,-3,1,7) + 2x = (4+2x_1, -3+2x_2, 1+2x_3+7x_4)
  $
  We shall establish therefore that
  $
    (4, -3,1,7) +2x = (5,9,-6,8) & iff cases(4+2x_1&=5, -3+2x_2&=9, 1+2x_3&=-6, 7+2x_4&=8) \
                                 & iff cases(x_1 &= 1/2, x_2 &= 6, x_3 &= -7/2, x_4 &= 1/2)
  $
  Hence, $x=(1/2,6,-7/2,1/2)$.
]

#exercise[Explain why there does not exist $lambda in CC$ such that
  $
    lambda(2-3i, 5+4i, -6+7i) = (12-5i, 6+22i, -32-9i)
  $
]

#proof[
  Establish that
  $
    lambda(2-3i, 5+4i, -6+7i) = (12-5i,6+22i,-32-9i) &iff cases(lambda(2-3i)=12-5i, lambda(5+4i)=6+22i, lambda(-6+7i)=-32-9i) \
    & iff cases(lambda = (12-5i)/(2-3i), lambda=(6+22i)/(5+4i), lambda = (-32-9i)/(-6+7i)) \
  $

  Notice that $(12-5i)/(2-3i)=((12-5i)(2+3i))/((2-3i)(2+3i))=(26i+39)/13=3+2i$, and by the same reasoning $(6+22i)/(5+4i)=118/41+86/41 i$, hence two conditions are completely disjoint. There is no $lambda$ that can be simultaneously equal $2i+3$ and $118/41+86/41 i$.
]

#exercise[Show that $(x+y)+z = x+(y+z)$ for all $x,y,z in FF^n$.]

#proof[
  _Addition_ in $FF^n$ is defined by adding corresponding coordinates:
  $
    (x_1, dots, x_n) + (y_1, dots, y_n) = (x_1+y_1, dots, x_n+y_n)
  $

  Establish that $x=(x_1,dots,x_n)$, $y=(y_1,dots,y_n)$ and $z=(z_1,dots,z_n)$ for $n in NN$. Now, it follows that
  $
    (x+y) + z & = ((x_1, dots, x_n) + (y_1, dots, y_n)) + (z_1, dots, z_n) \
              & = (x_1+y_1, dots, x_n+y_n)+(z_1,dots, z_n) \
              & = ((x_1+y_1)+z_1, dots, ((x_n+y_n)+z_n) \
              & = (x_1+(y_1+z_1), dots, (x_n+(y_n+z_n)) \
              & = (x_1, dots, x_n) + (y_1+z_1, dots, y_n +z_n) \
              & = (x_1, dots, x_n) + ((y_1,dots,y_n)+(z_1,dots,z_n)) \
              & = x + (y+z)
  $
  Hence, $(x+y) + z = x+ (y+z)$.
]

#exercise[Show that $(a b)x=a(b x)$ for all $x in FF^n$ and all $a,b in FF$.]

#proof[
  Establish that $x=(x_1,dots,x_n)$ for $n in NN$. Notice that
  $
    (a b) x & = (a b) (x_1, dots, x_n) \
            & = ((a b)x_1, dots, (a b)x_n) \
            & = (a(b x_1), dots, a(b x_n)) \
            & = a (b x_1, dots, b x_n) \
            & = a (b (x_1, dots, x_n)) \
            & = a (b x)
  $
  where the equality $((a b) x_i) = a (b x_i)$ holds for each $i in {1,dots,n}$ due to the associativity of multiplication in the field $FF$.

  Thus, $(a b)x = a (b x)$.
]

#exercise[Show that $1 x = x$ for all $x in FF^n$.]

#proof[
  Establish that $x=(x_1, dots, x_n)$ for $n in NN$. Notice that
  $
    1 dot x & = 1 dot (x_1, dots, x_n) \
            & = (1 dot x_1, dots, 1 dot x_n) \
            & = (x_1, dots, x_n) \
            & = x
  $
  where the equality $1 dots x_i = x_i$ holds for each $i in {1, dots, n}$, since $1$ is identity element of multiplication in the field $FF$.

  Hence, $1 dot x = x$.
]

#exercise[Show that $lambda (x+y) = lambda x + lambda y$ for all $lambda in FF$ and all $x,y in FF^n$.]

#proof[
  Let $x=(x_1,dots,x_n)$ and $y=(y_1, dots, y_n)$ for $n in NN$. Now, note that
  $
    lambda (x + y) & = lambda ((x_1,dots,x_n)+(y_1,dots,y_n)) \
                   & = lambda (x_1 +y_1, dots, x_n + y_n) \
                   & = (lambda(x_1+y_1),dots,lambda(x_n+y_n)) \
                   & = (lambda x_1 + lambda y_1, dots, lambda x_n + lambda y_n) \
                   & = (lambda x_1, dots, lambda x_n) + (lambda y_1, dots lambda y_n) \
                   & = lambda (x_1, dots, x_n) + lambda (y_1, dots, y_n) \
                   & = lambda x + lambda y
  $

  Therefore, $lambda(x+y) = lambda x + lambda y$.
]

#exercise[Show that $(a+b) x = a x + b x$ for all $a,b in FF$ and all $x in FF^n$.]

#proof[
  Establish that $x=(x_1,dots,x_n)$ for $n in NN$. Notice that
  $
    (a+b) x & = (a+b) (x_1, dots, x_n) \
            & = ((a+b) x_1, dots, (a+b) x_n) \
            & = (a x_1 + b x_1, dots, a x_n + b x_n) \
            & = (a x_1, dots, a x_n) + (b x_1, dots, b x_n) \
            & = a (x_1, dots, x_n) + b(x_1, dots, x_n) \
            & = a x + b x
  $
  where $(a+b) x_i = a x_i + b x_i$ holds for all $i in {1, dots, n}$ due to the distributive property of multiplication over addition in the field $FF$.

  Thus, $(a+b) x = a x + b x$.
]


== Definition of Vector Space

#exercise[Prove that $-(-v) = v$ for every $v in V$.]

#proof[
  It follows that $(-v)$ is an additive inverse of $v$, so $v + (-v) = 0$, and $-(-v)$ is an additive inverse of $-v$, thus $-(-v) + (-v) = 0$. Observe that
  $
    -(-v) & = -(-v) + 0 \
          & = -(-v) + (v + (-v)) \
          & = -(-v) + (-v + v)   & quad "by commutativity" \
          & = (-(-v) + (-v)) + v & quad "by associativity" \
          & = 0 + v \
          & = v
  $
  Therefore, $-(-v) = v$, which matches up with the fact that every vector has an unique additive inverse.
]

#exercise[Suppose $a in FF$, $v in V$, and $a v = 0$. Prove that $a=0$ or $v=0$.]

#proof[
  We shall divide this into two cases:
  1. $a=0$ #v(0.1em) Since $a=0$, then $a v = 0 dot v$ which trivially equals $0$.
  2. $a!=0$ #v(0.1em) Due to the fact that $a!=0$, there exists an multiplicative inverse $a^(-1)$. Multiplying both sides of $a v= 0$ by $a^(-1)$ yields $  a^(-1) (a v) & = 1/a dot 0 \
    (a^(-1) a ) v & = 0         & quad "by associativity" \
          1 dot v & = 0 \
                v & = 0 $ Therefore, it is implied that $v=0$.

  Hence, if $a v =0$, then $a=0 or v=0$.
]

#exercise[Suppose $v, omega in V$. Explain why there exists a unique $x in V$ such that $v + 3 x = omega$.]

#proof[
  1. Existence: #v(0.1em) Define $x = 3^(-1) (omega - v) in V$. It follows that $ v + 3 dot (3^(-1) (omega-v)) & = v + (3 dot 3^(-1)) (omega-v) & quad "by associativity" \
                                 & = v+ 1 dot (omega - v) \
                                 & = (v+omega) -v \
                                 & = (omega +v) -v                & quad "by commutativity" \
                                 & = omega + (v-v) \
                                 & = omega + 0 \
                                 & = omega $ Hence $x$ exists and equals $1/3(omega-v)$.
  2. Uniqueness: #v(0.1em) Let $y in V$ such that $v+ 3 y = omega$. Since $v+3 x$ also equals $omega$, then $v+3 y = v + 3 x$. Note that $(-v)$ is an additive inverse of $v$, hence $v+(-v) = 0$. Therefore $         v+ 3 y & = v + 3 x \
    (-v) + (v+3 y) & = (-v) + (v+3 x) \
      (-v+v) + 3 y & = (-v+v) + 3 x \
           0 + 3 y & = 0 + 3 x \
         3 y = 3 x $ Now, multiplying both sides of the equantion by $3^(-1)$ yields $ 3^(-1) (3 y) = 3^(-1) (3 x) \
    (3^(-1) dot 3 )y = (3^(-1) dot 3) x \
    1 dot y = 1 dot x\
    y = x $ Hence, $x$ is unique.
]

#exercise[The empty set is not a vector space. The empty fails to satisfy only one of the requirements listed in the defintion of a vector space. Which one?]

#solution[
  This requirement is the existence of additive identity. By defintion, a vector space $V$ must contain an element $0 in V$ such that $v + 0 = v$ for all $v in V$.
]

#exercise[Show that in the definition of a vector space, the additive inverse condition can be replaced with the condition that
  $
    0 v = 0 "for all" v in V
  $
  Here the $0$ on the left side is the number $0$, and the $0$ on the right side is the additive identity of $V$.]

#proof[
  Let $A: forall v in V, thick exists omega in V, thick v+omega = 0$ be an original additive inverse condition and $B: forall v in V, thick 0 v = 0$ be the new one. We shall prove logical equivalence of both statements.

  1. Implication from $A$ to $B$. Suppose $A$. We have shown in the previous exercise that $omega = -v$. Thus, $v + (-v) = 0$, which can be restated into $1 dot v + (-1) dot v =0$, and by scalar addition $(1-1) v = 0$, hence $0 v = 0$. Thus $B$ holds.

  2. Implication from $B$ to $A$. Suppose $B$. Define a vector $omega = (-1) v in V$. Evaluating $v+omega$ gives $ v + omega & = v + (-1) v \
              & = 1 dot v + (-1) dot v \
              & = (1+(-1)) dot v       &   quad "by distributive property" \
              & = 0 dot v              & quad "by additive identity on" FF \
              & = 0 $ Hence, $A$ holds.

  Since $A=>B$ and $B=>A$, then $A iff B$.
]

#exercise[Let $infinity$ and $-infinity$ denote two distinct objects, neither of which is in $RR$. Define an addition and scalar multiplication on $RR union {infinity, -infinity}$ as you could guess from the notation. Specifically the sum and product of two real numbers is as usual, and for $t in RR$ define $ t infinity = cases(-infinity thick "if" t <0, 0 thick "if" t=0, infinity thick "if" t>0) quad t(-infinity) = cases(infinity thick "if" t<0, 0 thick "if" t=0, -infinity thick "if" t >0) $ and $             t+infinity & = infinity + t = infinity + infinity = infinity, \
          t+ (-infinity) & = (-infinity) + t = (-infinity) + (-infinity) = -infinity, \
  infinity + (-infinity) & = (-infinity) + infinity = 0 $ With these operations of addition and scalar multiplication, is $RR union {infinity, -infinity}$ a vector space over $RR$? Explain.
]

#solution[
  Notice that $RR union {-infinity, infinity}$ is not associative $ (- infinity+infinity) + infinity & = 0 + infinity \
   -infinity + (infinity+infinity) & = -infinity + infinity = 0 \ $ hence, it does not form a vector space.
]

#exercise[Suppose $cal(S)$ is a nonempty set. Let $V^cal(S)$ denote the set of functions from $cal(S)$ to $V$. Define a natural addition and scalar multiplication on $V^cal(S)$, and show that $V^cal(S)$ is a vector space with these definitions.]

#proof[
  Notice that $V$ is a vector space, hence it satisfies every property of a vector space such as commutativity, associativity and distributivity, as well as there exists additive and multiplicative identity. Keep in mind that $V$ is defined on $FF$

  Define addition such that for $f_1, f_2 in V^cal(S)$, it holds that $f_1+f_2 in V^cal(S)$, therefore for every $x in cal(S)$, $(f_1+f_2)(x) = f_1(x)+f_2(x)$.

  Establish scalar multiplication such that for $lambda in FF$, and $f in V^cal(S)$, it holds that $lambda f in V^cal(S)$, thus for every $x in cal(S)$, $(lambda f)(x) = lambda f(x)$.

  1. *Commutative property*: For every $x in cal(S)$, and $f_1, f_2 in V^cal(S)$, $f_1(x), f_2(x) in V$, hence $f_1(x) + f_2(x) = f_2(x) + f_1(x)$, which yields $f_1 + f_2 = f_2 + f_1$. Therefore commutativity holds.

  2. *Associativity of addition*: For every $x in cal(S)$, and $f_1, f_2, f_3 in V^cal(S)$, $f_1(x), f_2(x), f_3(x) in V$, thus $(f_1(x)+f_2(x))+f_3(x)=f_1(x)+(f_2(x)+f_3(x))$, which yields $(f_1+f_2)+f_3 = f_1 + (f_2+f_3)$. Associativity holds.

  3. *Associativity of scalar multiplication*: Let $a, b in FF$ and $f in V^cal(S)$. For every $x in cal(S)$, notice that $f(x) in V$. Since $V$ is a vector space, scalar multiplication in $V$ is associative, thus
    $ ((a b) f)(x) = (a b) f(x) = a (b f(x)) = a (b f)(x) = (a (b f))(x) $
    Since this holds for all $x in cal(S)$, it follows that $(a b) f = a (b f)$. Therefore, the property holds.

    4. *Existence of additive identity*: Let $0$ be an additive identity of $V$. Define $f:cal(S)->V$ such that $f(x)=0$. For every $x in cal(S)$, and $g in V^cal(S)$, $f + g = f(x) + g(x) = 0 + g(x) = g$. Naturally, $f in V^cal(S)$, thus additive identity exists.

    5. *Existence of additive inverse*: Let $f in V^cal(S)$. Define $-f = (-1)f in V^cal(S)$. For every $x in cal(S)$ it follows that $ f + (-f) & = f(x) + (-1)f(x) \
               & = f(x)-f(x) \
               & =0 $ Therefore $f + (-1) f = 0$, and additive inverse exists.

    6. *Existence of multiplicative identity*: Let $1$ be an multiplicative identity of $FF$. Define $lambda = 1$. Note that for every $x in cal(S)$, and $f in V^cal(S)$, $lambda f = lambda f(x) = 1 dot f(x) = f(x) = f$. Hence, multiplicative identity exists.

    7. *Distributive property*: For every $x in cal(S)$, $f_1, f_2 in V^cal(S)$, and $lambda, mu in FF$:
      $ (lambda(f_1+f_2))(x) = lambda(f_1(x)+f_2(x)) = lambda f_1(x) + lambda f_2(x) = (lambda f_1 + lambda f_2)(x) \
      ((lambda + mu)f_1)(x) = (lambda + mu)f_1(x) = lambda f_1(x) + mu f_1(x) = (lambda f_1 + mu f_1)(x) $ Therefore, both distributive properties hold.

    Since $V^cal(S)$ satisfies every property of the vector space, $V^cal(S)$ is a vector space.
]

#exercise[Suppose $V$ is a real vector space.
  - The _complexification_ of $V$, denoted by $V_CC$, equals $V times V$. An element of $V_CC$ is an ordered pair $(u,v)$, where $u,v in V$, but we write this as $u + i v$.
  - Addition on $V_CC$ is defined by $ (u_1 + i v_1) + (u_2 + i v_2) = (u_1 +u_2) + i(v_1 +v_2) $ for all $u_1,v_1,u_2,v_2 in V$.
  - Complex scalar multiplication on $V_CC$ is defined by $ (a+b i)(u + i v) = (a u - b v) + i(a v + b u) $ for all $a,b in RR$ and all $u,v in V$.

  Prove that with the definitions of addition and scalar multiplication as above, $V_CC$ is a complex vector space.
]

#proof[
  1. *Commutativity*: Let $(u_1,v_1),(u_2, v_2) in V_CC$. It follows that
    $
      (u_1,v_1) + (u_2,v_2) & = (u_1 + i v_1) + (u_2 + i v_2) \
                            & = (u_1+u_2)+i(v_1+v_2) \
                            & = (u_2+u_1)+i(v_2+v_1) \
                            & = (u_2+i v_2)+(u_1+i v_1) \
                            & = (u_2,v_2)+(u_1,v_1)
    $
    Thus, $(u_1,v_1)+(u_2,v_2)=(u_2,v_2)+(u_1,v_1)$, so commutativity holds.

    2. *Associativity of addition*: Let $(u_1,v_1),(u_2,v_2),(u_3,v_3) in V_CC$. Notice that
      $
        ((u_1,v_1) + (u_2,v_2)) + (u_3, v_3) & = ((u_1 + i v_1) + (u_2 + i v_2)) + (u_3 + i v_3) \
                                             & = ((u_1+u_2)+i (v_1 + v_2)) + (u_3+i v_3) \
                                             & = ((u_1+u_2)+u_3) + i ((v_1+v_2)+v_3) \
                                             & = (u_1 + (u_2+u_3)) + i(v_1 + (v_2+v_3)) \
                                             & = (u_1 + i v_1) + ((u_2+u_3) + i (v_2+v_3)) \
                                             & = (u_1+i v_1) + ((u_2+i v_2) + (u_3+ i v_3)) \
                                             & = (u_1,v_1) + ((u_2,v_2)+(u_3,v_3))
      $
      Therefore, $((u_1,v_1)+(u_2,v_2))+(u_3,v_3)=(u_1,v_1) +((u_2,v_2)+(u_3,v_3))$, so associativity holds.

    3. *Associativity of scalar multiplication*: Let $(u,v) in V_CC$, and $(a+b i),(c+d i) in CC$. Thus $ ((a+ i b)(c+ i d)) (u,v) & = ((a c - b d)+i(a d+ b c)) (u + i v) \
                               & = ((a c- b d)u - (a d + b c)v) + i ((a c- b d)v + (a d + b c)u) \
                               & = (a c u - b d u - a d v - b c v) + i(a c v - b d v + a d u + b c u) \
                               & = (a(c u - d v)-b(c v + d u)) + i (a(c v + d u) + b (c u - d v)) \
                               & = (a+i b)((c u - d v) + i(c v + d u)) \
                               & = (a+i b)((c + i d)(u + i v)) \
                               & = (a+i b)((c+i d)(u,v)) $

    4. *Existence of additive identity*: Define $e in V_CC$ as $e = (0,0)$. For every $(u,v) in V_CC$, $(u,v)+e = e+(u,v)=(0,0)+(u,v) = (0+0 i ) + (u + i v) = (u + i v) = (u,v)$. Therefore, $e$ exists and it is an additive identity.

    5. *Existence of additive inverse*: For every $(u,v) in V_CC$, define $(-u, -v) in V_CC$. Now, $(u,v) + (-u,-v) = (u+i v) + (-u + i (-v)) = (u + (-u)) + i(v + (-v)) =0 + 0 i = (0,0)$. Thus, an additive inverse exists for every $X in V_CC$.

    6. *Multiplicative identity*: Let $(u,v) in V_CC$. Define $e'$ as $e=1+0 i in CC$. Accordingly, $e' dot (u,v) = (1+0 i)(u + i v) = (1 u - 0 v) + i(1 v + 0 u) = u+i v=(u,v)$. Therefore, $e'$ exists and it is a multiplicative identity.

    7. *Distributive properties*: Let $(u_1,v_1),(u_2,v_2) in V_CC$ and $a_1 + i b_1, a_2 + i b_2 in CC$.
      $
        (a_1 + i b_1) ((u_1,v_1)+(u_2,v_2)) &= (a_1 + i b_1) ((u_1+u_2) + i (v_1 + v_2)) \
        &= (a_1(u_1+u_2)- b_1(v_1+v_2)) + i (a_1 ( v_1 + v_2)+ b_1 (u_1+u_2)) \
        &= (a_1 u_1 - b_1 v_1 + a_1 u_2 - b_1 v_2) + i (a_1 v_1 + b_1 u_1 + a_1 v_2 + b_1 u_2) \
        &= ((a_1 u_1 - b_1 v_1)+i (a_1 v_1 + b_1 u_1)) + ((a_1 u_2 - b_1 v_2)+i(a_1 v_2 + b_1 u_2)) \
        &= (a_1 + i b_1)(u_1 + i v_1) + (a_1 + i b_1) (u_2 + i v_2) \
        &= (a_1 + i b_1)(u_1,v_1) + (a_1+i b_1)(u_2,v_2)
      $
      and
      $
        ((a_1+i b_1)+(a_2+i b_2))(u_1,v_1) &= ((a_1+a_2)+ i ( b_1+b_2))(u_1 + i v_1) \
        &= ((a_1+a_2) u_1 - (b_1+b_2) v_1) + i ((a_1+a_2)v_1 + (b_1+b_2)u_1) \
        &= (a_1 u_1 - b_1 v_1 + a_2 u_1 - b_2 v_1) + i (a_1 v_1 + b_1 u_1 + a_2 v_1 + b_2 u_1) \
        &= ((a_1 u_1 -b_1 v_1) + i (a_1 v_1 + b_1 u_1)) + ((a_2 u_1- b_2 v_1) + i (a_2 v_1 + b_2 u_1)) \
        &= (a_1+i b_1)(u_1 + i v_1) + (a_2+i b_2)(u_1 + i v_1) \
        &= (a_1 + i b_1) (u_1, v_1) + (a_2 + i b_2) (u_1, v_1)
      $
      Therefore, both distributive properties hold.


  We have shown that $V_CC$ satisfies every property of vector space, hence it is vector space.
]

== Subspaces and Direct Sums

#exercise[For each of the following subsets of $FF^3$, determine whether it is a subspace of $FF^3$.

  1. ${(x_1,x_2,x_3) in FF^3: x_1+2x_2+3x_3 = 0}$
  2. ${(x_1,x_2,x_3) in FF^3: x_1+2x_2+3x_3=4}$
  3. ${(x_1,x_2,x_3) in FF^3: x_1 x_2 x_3 = 0}$
  4. ${(x_1, x_2,x_3) in FF^3: x_1=5x_3}$
]

#solution[
  1. Let $A={(x_1,x_2,x_3) in FF^3: x_1+2x_2+3x_3=0}$.
    - $(0,0,0) in A$, since for $x_1=x_2=x_3=0$, $x_1+2x_2+3x_3=0$. There exists an additive identity.
    - Let $(a,b,c),(alpha,beta,gamma) in A$, then $(a,b,c)+(alpha,beta,gamma) =(a+alpha,b+beta,c+gamma)$. If $a+2b+3c=0$ and $alpha+2beta+3gamma=0$, then $(a+2b+3c)+(alpha+2beta+3gamma)=0$, thus $(a+alpha)+2(b+beta)+3(c+gamma)=0$, yielding that $(a+alpha,b+beta,c+gamma) in A$. $A$ is closed under addition.
    - Let $a in FF$ and $(x_1,x_2,x_3) in A$, then $a(x_1,x_2,x_3) = (a x_1, a x_2, a x_3)$. Since $a(x_1+2x_2+3x_3)=0$, then $(a x_1)+ 2(a x_2) + 3(a x_3) =0$, hence $(a x_1, a x_2, a x_3) in A$. Thus, $A$ is closed under scalar multiplication.
    - $A$ satisfies every condition necessary for it to  be a subspace of $FF^3$.

  2. Let $B={(x_1,x_2,x_3) in FF^3: x_1+2x_2+3x_3=4}$.
    - Notice that $(0,0,0) in.not B$, since $0+2dot 0 +3 dot 0!=4$.
    - $B$ fails to satisfy an existence of additive identity condition, hence it is not a subspace.

  3. Let $C={(x_1,x_2,x_3) in FF^3: x_1 x_2 x_3 = 0}$
    - Since $x_1=x_2=x_3=0$ satisfies the equation $x_1 x_2 x_3 = 0$, then $(0,0,0) in C$. Thus, additive identity exists and belongs to $C$.
    - Let $(0,1,1),(1,1,0) in C$. Sum of both vectors equal $(1,2,1)$, but it does not belong to $C$, since $1 dot 2 dot 1 = 2 !=0$.
    - $C$ fails the condition of being closed under addition, hence it is not a subspace.

  4. Let $D= {(x_1,x_2,x_3) in FF^3: x_1=5x_3}$.
    - Naturally, $(0,0,0) in D$, hence $D$ contains an additive identity.
    - Let $(x_1,x_2,x_3),(y_1,y_2,y_3) in D$. Sum of both vectors equal $(x_1+y_1,x_2+y_2,x_3+y_3)$. Since both $x_1=5x_3$ and $y_1=5y_3$ holds, then $x_1+y_1=5(x_3+y_3)$, and thus $(x_1+y_1,x_2+y_2,x_3+y_3) in D$. To conclude, $D$ is closed under addition.
    - Let $a in FF$ and $(x_1,x_2,x_3) in D$. Vector multiplied by the scalar equals $(a x_1, a x_2, a x_3)$. Since $x_1 = 5x_3$ holds, then $a x_1 = 5 (a x_3)$ holds as well. Therefore $(a x_1, a x_2, a x_3) in D$, and $D$ is closed under scalar multiplication.
    - $D$ satisfies every condition, hence it is a subspace.
]

#exercise[Verify all assertions about subspaces:
  - If $b in FF$, then $ {(x_1,x_2,x_3,x_4) in FF^4: x_3 = 5x_4 + b} $ is subspace of $FF^4$ if and only if $b=0$.
  - The set of continous real-valued functions on the interval $[0,1]$ is subspace of $RR^[0,1]$.

  - The set of differentiable real-valued functions on $RR$ is a subspace of $RR^RR$.

  - The set of differentiable real-valued functions $f$ on the interval $(0,3)$ such that $f'(2)=b$ is a subspace of $RR^(0,3)$ if and only if $b=0$.

  - The set of all sequences of complex numbers with limit $0$ is a subspace of $CC^infinity$.
]

#solution(title: "a)")[
  1. Suppose $b = 0 in FF$, then $A={(x_1,x_2,x_3,x_4) in FF^4: x_3 = 5x_4 + 0}$.
    - $(0,0,0,0) in A$, since $0 = 5 dot 0$ holds. Additive identity belongs to $A$.
    - Let $(x_1,x_2,x_3,x_4), (y_1,y_2,y_3,y_4) in A$. Then, the sum of both vectors equals $(x_1+y_1,x_2+y_2,x_3+y_3,x_4+y_4)$. If $x_3 = 5 x_4$ and $y_3 = 5 y_4$ holds, then $x_3+y_3=5(x_4+y_4)$. Thus, $(x_1+y_1,x_2+y_2,x_3+y_3,x_4+y_4) in A$. $A$ is closed under addition.
    - Let $a in FF$ and $(x_1,x_2,x_3,x_4) in A$. If $x_1 = 5x_4$, then $a x_1 = 5 (a x_4)$. Thus $(a x_1, a x_2, a x_3,a x_4) in A$, hence $A$ is closed under scalar multiplication.
    - $A$ is a subspace if $b=0$.
  2. Suppose $A$ is a subspace.
    - $(0,0,0,0) in A$, hence $0 = 5 dot 0 + b$ holds, which implies that $b=0$.

  Therefore, $A$ is a subspace of $FF^4$ if and only if $b=0$.
]

#solution(title: "b)")[
  Define a subset $cal(C)([0,1]) subset RR^[0,1]$.
  1. Establish $f(x) = 0$. Constant function is trivially continous, hence $f in cal(C)([0,1])$. Notice that for every $g in cal(C)([0,1])$, $f(x)+g(x)=0+g(x)=g(x)$. Therefore, additive identity element exists in $cal(C)([0,1])$.
  2. Let $f, g in cal(C)([0,1])$ and $c in [0,1]$. For $epsilon>0$, there is a $delta_1$ such that $0< abs(x-c) < delta_1 => abs(f(x)-f(c)) <epsilon/2$ and $delta_2$ such that $0<abs(x-c)<delta_2 => abs(g(x)-g(c))<epsilon/2$. #v(0.1em) Fix $delta=min{delta_1,delta_2}$. Notice that $abs((f(x)-f(c)) + (g(x)-g(c)))<=abs(f(x)-f(c)) + abs(g(x)-g(c)) < epsilon/2+epsilon/2 = epsilon$, so there is $delta$ for which $abs(x-c)<delta => abs((f(x)+g(x))-(f(c)+g(c)))<epsilon$, hence $f+g in cal(C)([0,1])$, therefore $cal(C)([0,1])$ is closed under addition.

  3. Notice that if $a = 0$, then $a f(x) = 0 in cal(C)([0,1])$. For the remainder of the proof, we shall fix $a!=0$. Let $a in FF$ such that $a!=0$, and $f in cal(C)([0,1])$. For every $c in [0,1]$ and for every $epsilon>0$, there is a $delta$ for which $abs(x-c)<delta => abs(f(x)-f(c))<epsilon/abs(a)$. Note that $abs(a)>0$, and $abs(a)abs(f(x)-f(c)) < epsilon$, so $abs(a f(x) - a f(c)) <epsilon$. This means that $a f in cal(C)([0,1])$, hence $cal(C)([0,1])$ is closed under scalar multiplication.

  Thus, $cal(C)([0,1])$ is a subspace of $RR^[0,1]$.
]

#solution(title: "c)")[
  Establish a subset $cal(D)(RR) subset RR^RR$, which consists of differentiable real-valued functions on $RR$.
  1. Define $f(x)=0$. Notice that for every $x in RR$, $f'$ exists and equals $0$. Furthermore, for every $g in cal(D)(RR)$, $f(x)+g(x)=0+g(x)=g(x)$, hence $f$ is an additive identity.
  2. Let $f,g in cal(D)(RR)$. Both functions are differentiable, hence for $x in RR$ and $epsilon>0$, there is such $delta_1$ for which $0<abs(h)<delta_1 => abs((f(x+h)-f(x))/h-f'(x))<epsilon/2$ and $delta_2$ for which $0<abs(h)<delta_2 => abs((g(x+h)-g(x))/h - g'(x))<epsilon/2$.#v(0.1em) Let $delta = min{delta_1,delta_2}$, it follows that $abs((f(x+h)-f(x))/h - f'(x) + (g(x+h)-g(x))/h - g'(x))<=abs((f(x+h)-f(x))/h - f'(x)) + abs((g(x+h)-g(x))/h - g'(x))<epsilon/2+epsilon/2=epsilon$. #v(0.1em) Thus, $limits(lim)_(h->0) ((f+g)(x+h)-(f+g)(x))/h = (f+g)'(x)$, which leads us to the conclusion that $(f+g)$ is differentiable at every $x$, hence $(f+g) in cal(D)(RR)$, so $cal(D)(RR)$ is closed under addition.
  3. Suppose $a in FF$ and $f in cal(D)(RR)$. If $a=0$, then $a f = 0 in cal(D)(RR)$. For the remainder of the proof, we shall establish that $a!=0$. Now, let $epsilon>0$ and since $f$ is differentiable, then there is $delta in RR$ for which $0<abs(h)<delta => abs((f(x+h)-f(x))/h-f'(x))<epsilon/abs(a)$. It is easy to show that $abs(a) abs((f(x+h)-f(x))/h-f'(x)) < epsilon$, so $abs((a f(x+h)- a f(x))/h - a f'(x))<epsilon$. #v(0.1em) Hence, $limits(lim)_(h->0) ((a f)(x+h) - (a f)(x))/h = a f'(x)$, which means that $a f$ is differentiable and $a f in cal(D)(RR)$. To conclude, $cal(D)(RR)$ is closed under scalar multiplication.

  Subset $cal(D)(RR)$ satisfies every condition necessary, therefore it is a subspace of $RR^RR$.
]

#solution(title: "d)")[
  Let $E={f in cal(D)((0,3)): f'(2)=b} subset RR^((0,3))$
  1. Suppose $b = 0$.
    - Define $f in E$ such that $f(x)=0$, and $f'(2)=0$. Notice that for every $g in E$, $f(x)+g(x)=0+g(x)=g(x)$. Thus, $f$ is an additive identity.
    - Let $f,g in E$. Sum of two functions equal $f+g$. We proved in the previous exercise, that sum of differentiable functions is also differentiable. Furthermore, since $(f+g)'=f'+g'$, then if $f'(2)=0$ and $g'(2)=0$, then $(f+g)'(2)=0$ as well. Hence, $E$ is closed under addition.
    - Let $a in FF$ and $f in E$. Once again, we have shown in the previous exercise that if $f$ is differentiable, then $a f$ is also differentiable. Moreover, since $(a f)' = a f'$, then $f'(2)=0$ implies $(a f)'(2)=0$.  Therefore, $f$ is closed under scalar multiplication.
    - Therefore, $E$ is a subspace.

  2. Suppose $E$ is a subspace.
    - Since an additive element exists in $E$, then $f in E$ such that $f(x)=0$. If so, then $f'(x)=0$ for every $x$, so $f'(2)=0$. Therefore $b=0$.
]

#solution(title: "e)")[
  Let $F={a_n in CC^NN: limits(lim)_(n->infinity) a_n =0 } subset CC^NN$.

  1. Define $a_n = 0$. Since $limits(lim)_(n->infinity) a_n = 0$, then $a_n in F$. Notice that for every $b_n in F$, $a_n+b_n=0+b_n=b_n$, so $a_n$ is an additive identity.
  2. Let $a_n,b_n in F$. It follows that for $epsilon>0$, there is such $N_1 in NN$ for which $n>N_1 => abs(a_n)<epsilon/2$, and such $N_2 in NN$ for which $n>N_2 => abs(b_n)<epsilon/2$. #v(0.1em) Fix $N = max{N_1,N_2}$ and note that for $n>N$, $abs(a_n+b_n)<=abs(a_n)+abs(b_n)<epsilon/2+epsilon/2=epsilon$, thus $limits(lim)_(n->
    infinity) a_n+b_n = 0$. To conclude, $a_n+b_n in F$ and $F$ is closed under addition.
  3. Let $a in FF$ and $a_n in F$. If $a=0$, then $a f =0$, which trivially belongs to $F$. For the remainder of the proof let $a!=0$. Suppose $epsilon>0$ for which there is such $N in NN$ such that $n>N => abs(a_n)<epsilon/abs(a)$. Therefore, $abs(a) abs(a_n) < epsilon$, so $abs(a dot a_n) < epsilon$, hence $limits(lim)_(n->infinity) a dot a_n = 0$. If so, then $a a_n in F$ and $F$ is closed under scalar multiplication.
  4. $F$ is a subspace of $CC^NN$.
]

#exercise[Show that the set of differentiable real-valued functions $f$ on the interval $(-4,4)$ such that $f'(-1)=3 f(2)$ is a subspace $RR^((-4,4))$.]

#proof[
  Suppose $A = {f in cal(D)((-4,4)): f'(-1)= 3 f(2)}$.

  1. Define $f in A$ such that $f(x)=0$, which is trivially differentiable on $(-4,4)$ and satisfies $f'(-1)=3 f(2)$ ($f'(-1)=0$ and $f(2)=0$, so $0 = 3 dot 0$). For every $g in E$, $f(x)+g(x)=0+g(x)=g(x)$. Thus, $f$ is an additive identity.

  2. We have show that $(f+g)' = f'+g'$. It follows that for $f,g in cal(D)((-4,4))$, $f+g in cal(D)((-4,4))$. Furthermore, if $f'(-1)=3 f(2)$ and $g'(-1)=3 g(2)$, then $(f+g)'(-1)=3(f+g)(2)$. To conclude, $A$ is closed under addition.

  3. Let $a in FF$ and $f in A$. We know for sure that $(a f)' = a f'$, hence $a f$ is differentiable and satisfies $(a f)'(-1) = 3 (a f)(2)$, thus $a f in A$ and $A$ is closed under scalar multiplication.

  4. $A$ is a subspace of $RR^((-4,4))$.
]

#exercise[Suppose $b in RR$. Show that the set of continous real-valued functions $f$ on the interval $[0,1]$ such that $integral_0^1 f = b$ is a subspace of $RR^[0,1]$ if and only if $b=0$.]

#proof[
  Let $A={f: cal(C)([0,1]): integral_0^1 f = b}$

  1. Let $b=0$.
    - Define $f(x)=0$, we have shown that it is an additive identity. Since constant function is trivially continous and $integral_0^1 0 = 0$ holds. Thus, $f in A$.
    - Let $f,g in A$. We already proved that sum of continous functions is continous, so notice that $integral_0^1 (f+g) = integral_0^1 f + integral_0^1 g = 0 + 0 = 0$. Hence, $f+g in A$ and $A$ is closed under addition.
    - Let $a in FF$ and $f in A$. Once again, we already shown that $cal(C)([0,1])$ is closed under multiplication, so we shall move on to the second condition. Notice that $integral_0^1 a f = a integral_0^1 f = a dot 0 = 0$. Therefore, $a f in A$ and $A$ is closed under multiplication.
    - $A$ is a subspace of $RR^[0,1]$.

  2. Let $A$ be a subspace of $RR^[0,1]$.
    - Since an additive identity exists in $A$, then there is such $f(x)=0$ which satisfies the condition $integral_0^1 f = b$. Notice that $integral_0^1 0 = 0$, which implies that $b=0$.
]

#exercise[Is $RR^2$ a subspace of the complex vector space $CC^2$?]

#solution[
  No, it is not. Let $a= 2+3i in CC$ and $u = (1,2) in RR^2$, then $a u = (2+3i,4+6i) in.not RR^2$, thus there is no closure under scalar multiplication.
]

#exercise[
  1. Is $A={(a,b,c) in RR^3: a^3=b^3}$ a subspace of $RR^3$?
  2. Is $B={(a,b,c) in CC^3: a^3=b^3}$ a subspace of $CC^3$?
]

#solution[
  Notice that both sets have an additive identity element $(0,0,0)$ and it is easy to show that both are closed under multiplicative scalar, since $RR^3$ is closed under multiplicative scalar and if $x_1^3=x_2^3$, then $(a x_1)^3=(a x_2)^3$.

  Furthermore, for $(a_1,b_1,c_1), (a_2,b_2,c_2) in A$, $a_1^3=b_1^3 iff a_1=b_1$ and $a_2^3=b_2^3 iff a_2=b_2$, so $a_1+a_2 = b_1+b_2 iff (a_1+a_2)^3=(b_1+b_2)^3$. This means that $(a_1+a_2,b_1+b_2,c_1+c_2) in A$, and hence $A$ is closed under addition and therefore it is a subspace.

  However, the same logic does not apply if $(a_1,b_1,c_1),(a_2,b_2,c_2) in B$. Suppose $(-1/2 + i sqrt(3)/2,1,0), (-1/2-i sqrt(3)/2,1,0) in B$. Sum of vectors equals $(-1, 2, 0)$, which does not satisfy equation $x_1^3=x_2^3$. Hence, it is not closed under addition, and thus it cannot be a subspace.
]

#exercise[Prove or give a counterexample: If $cal(U)$ is a nonempty subset of $RR^2$ such that $cal(U)$ is closed under addition and under taking additive inverses (meaning $-u in cal(U)$ whenever $u in cal(U)$), then $cal(U)$ is a subspace of $RR^2$.]

#solution[
  Firstly, notice that if $cal(U)$ is closed under addition and under taking additive inverses, then $u, (-u) in cal(U)$, $u+(-u) = 0$ implies $0 in cal(U)$, hence $cal(U)$ has an obligatory additive identity element.

  Remaining condition for $cal(U)$ to be a subspace is being closed under scalar multiplication. Let $cal(U)=ZZ^2$. Notice that while $cal(U)$ is both closed under addition and under taking additive inveres, then it is not closed under scalar multiplication, since multiplying by any irrational numbers, shall yield vector which does not belong to $cal(U)$.
]

#exercise[Give an example of a nonempty subset $cal(U)$ of $RR^2$ such that $cal(U)$ is closed under scalar multiplication, but $cal(U)$ is not a subspace of $RR^2$.]

#solution[
  Suppose $cal(U) = {a dot (2,1): a in RR} union {a dot (1,2): a in RR}$. This set is trivially closed under scalar multiplication, however $(2,1)+(1,2)=(3,3)$, but $(3,3)$ does not belong to $cal(U)$, thus it is not closed under addition, hence it is not a subspace.
]

#exercise[A function $f: RR->RR$ is called _periodic_ if there exists a positive number $p$ such that $f(x)=f(x+p)$ for all $x in RR$. Is the set of periodic functions from $RR$ to $RR$ a subspace of $RR^RR$? Explain.]

#proof[
  Let $cal(P)$ be a set of periodic functions.

  1. An additive identity in $RR^RR$ is $f(x)=0$. Notice that $f(x)=0$ satisfies $f(x+p)=f(x)$ for every $p in RR$, hence $f in cal(P)$.

  2. Let $f, g in cal(P)$. For both functions there is such $p_1$ for which $f(x+p_1)=f(x)$ and $p_2$ for which $g(x+p_2)=g(x)$. Now, $(f+g)(x) = f(x+p_1) + g(x+p_2)$. Notice that $exists p in RR, (f+g)(x) = (f+g)(x+p) iff p_2/p_1 in QQ$

  3. Consider $f(x)=sin(x), g(x)=sin(pi x) in cal(P)$. Those funcitions are periodic, where $sin(x + 2 pi) = sin(x)$ and $sin(pi(x+2))=sin(pi x)$. Both periods are incommensurable $(2 pi)/2 = pi in.not QQ$, hence there is no period $p$ which is a multiple of both $2$ and $2 pi$. To conclude, there is no $p$ for which $(f+g)(x+p)=(f+g)(x)$.

  4. Therefore, $cal(P)$ is not a subspace.
]

#exercise[Suppose $V_1$ and $V_2$ are subspaces of $V$. Prove that the intersection $V_1 inter V_2$ is a subspace of $V$.]

#proof[
  Let $V_1$ and $V_2$ be subspaces.

  1. Since $0 in V_1$ and $0 in V_2$, then $0 in V_1 inter V_2$ trivially. Therefore $V_1 inter V_2$ has an additive identity element.

  2. Suppose that $v in V_1 inter V_2$, if so then $v in V_1$ and $v in V_2$. Let $a in FF$. We know that $V_1$ and $V_2$ are closed under scalar multiplication, so $a v in V_1$ and $a v in V_2$. This means that $a v in V_1 inter V_2$ as well, and thus $V_1 inter V_2$ is closed under scalar multiplication.

  3. Suppose $v, u in V_1 inter V_2$. By the same reasoning, $v,u in V_1$ and $v,u in V_2$. Since both $V_1$ and $V_2$ are closed under addition, then $v+u in V_1$ and $v+u in V_2$, which implies that $v+u in V_1 inter V_2$. Thus, $V_1 inter V_2$ is closed under addition.

  4. Therefore, $V_1 inter V_2$ is a subspace.
]

#exercise[Prove that the intersection of every collection of subspace of $V$ is a subspace of $V$.]

#proof[
  Let $cal(C)$ be an arbitrary collection of subspaces of $V$, and let $W = inter.big_(U in cal(C)) U$.

  1. Since every $U in cal(C)$ is a subspace, each contains the zero vector $0$. Thus, $forall U in cal(C), 0 in U$, which implies $0 in W$.

  2. Let $u, v in W$. By definition of intersection, $u, v in U$ for all $U in cal(C)$. Since each $U in cal(C)$ is closed under addition, $u + v in U$ for all $U in cal(C)$. Therefore, $u + v in W$, so $W$ is closed under addition.

  3. Let $a in bb(F)$ and $v in W$. Then $v in U$ for all $U in cal(C)$. Since each $U in cal(C)$ is closed under scalar multiplication, $a v in U$ for all $U in cal(C)$. Therefore, $a v in W$, so $W$ is closed under scalar multiplication.

  Hence, $W = inter.big_(U in cal(C)) U$ is a subspace of $V$.
]

#exercise[Prove that the union of two subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces is contained in the other.]

#proof[
  Let $V_1, V_2$ be a subspaces of $V$.

  Firstly, it is easy to show that since ${0} in V_1, V_2$, then ${0} in V_1 union V_2$. Furthermore, if $a in FF$ and $v in V_1$, then $a v in V_1$, so $a v in V_2$. Analogously, if $u in V_2$, then $a u in V_1 => a u in V_1 union V_2$. It is trivial to show that union $V_1 union V_2$ is closed under scalar multiplication and contains an additive identity. We shall now move on to the closure under addition.

  1. Suppose $V_1 union V_2$ is a subspace. If so, then for $v in V_1$ and $u in V_2$, $v+u in V_1 union V_2$. However, this implies that $v+u in V_1 or v+u in V_2$. Without loss of generality, suppose $v+u in V_1$. If so, then $(-v), v+u in V_1 => u in V_1$. Hence, $V_2 subset.eq V_1$.
  2. Let $V_2 subset.eq V_1$. If so, then $V_1 union V_2 = V_1$, which means that if $V_1$ is a subspace, then $V_1 union V_2$ is a subspace as well.
]

#exercise[Prove the union of three subspaces of $V$ is a subspace of $V$ if and only if one of the subspaces contains the other two.]

#proof[
  Let $V_1, V_2, V_3$ be a subspaces of $V$. It is trivially to show that their union has an additive identity element, since $0 in V_1, V_2, V_3$, hence $0 in V_1 union V_2 union V_3$. Union of those subspaces is also trivially closed under scalar multiplication, since for every $a in FF$ and $v in V_1 union V_2 union V_3$, $v$ belongs to at least one of those sets. Without loss of generality, suppose $v in V_1$, which implies that $a v in V_1$, hence $a v in V_1 union V_2 union V_3$

  Now, we shall prove the bidirectional implication.

  1. Suppose $V_2, V_3 subset.eq V_1$. If so, then $V_1 union V_2 union V_3 = V_1$. Since $V_1$ is a subspace, hence it is naturally closed under addition, then $V_1 union V_2 union V_3$ is closed under addition as well, and by this means it is also a subspace.

  2. Suppose $V_1 union V_2 union V_3$ is a subspace. We have shown that $X union Y$ is a subspace if and only if $X subset.eq Y$ or $Y subset.eq X$. Hence, without loss of generatlity, $V_1 subset.eq V_2 union V_3$ or $V_2 union V_3 subset.eq V_1$. Either $V_2 union V_3$ is a subspace or not. If it is the subspace, then:
    - If $V_1 subset.eq V_2 union V_3$, then by the same reasoning $V_2 union V_3$ is a subspace if and only if $V_2 subset.eq V_3$ or $V_3 subset.eq V_2$, hence $V_1, V_2 subset.eq V_3$ or $V_1, V_3 subset.eq V_1$.
    - Otherwise, $V_2 union V_3 subset.eq V_1$ and either $V_2 subset.eq V_3$ or $V_3 subset.eq V_1$, hence $V_2, V_3 subset.eq V_1$.
    Therefore, if $V_2 union V_3$ is a subspace, then one subspace contains two others. However, if $V_2 union V_3$ is not a subspace, then $V_2 subset.not.eq V_3$ and $V_3 subset.not.eq V_2$. This implies that there is such $v in V_2$ which does not belong to $V_3$, and $u in V_3$ which does not belong to $V_2$, since $v,u,(-v),(-u) in V_1 union V_2 union V_3$, then $v+u, (v+(-u)) in V_1 union V_2 union V_3$. Since $v+u, (v+(-u)) in.not V_2$ or $V_3$, then $v+u, (v+(-u)) in V_1 => (v+u + (v+(-u))), (v+u -(v+(-u))) in V_1$, so $2 v, 2 u in V_1$, hence $v,u in V_1$. #v(0.1em) Finally, notice that $V_2 union V_3 = V_2 inter V_3 union V_2 without V_3 union V_3 without V_2$. Since $V_2 without V_3, V_3 without V_2 subset.eq V_1$, then $V_1 union (V_2 union V_3) = V_1 union (V_2 inter V_3)$. Intersection of two subspaces is a trivial subspace, hence $V_1 subset.eq V_2 inter V_3$ (which is trivially false, since $V_2 without V_3 subset.eq V_1$) or $V_2 inter V_3 subset.eq V_1$. To conclude, $V_2, V_3 subset.eq V_1$.
]

#exercise[Suppose $ cal(U)={(x,-x,2 x) in FF^3: x in FF}quad "and" quad cal(W)={(x,x,2x) in FF^3: x in FF} $ Describe $cal(U)+cal(W)$ using symbols, and also give a description of $cal(U)+cal(W)$ that uses no symbols. ]

#solution[
  Note that $cal(U) + cal(W) = {(x,-x,2 x) + (y, y, 2 y)}$. Substituting $a = x+y$ and $b=y-x$, $cal(U)+cal(W)={(a,b,2a) in FF^3: a,b in FF}$.

  Therefore, $cal(U)+cal(W)$ is a subspace, where first and second entry is any number in $FF$ and third entry is strictly twice the first entry.
]

#exercise[Suppose $cal(U)$ is a subspace of $V$. What is $cal(U)+cal(U)$?]

#solution[
  $cal(U)+cal(U)=cal(U)$. To prove that we shall establish that $cal(U) subset.eq cal(U)+cal(U)$ trivially, and now show that for every $v in cal(U) + cal(U)$ it follows that $v in {v_1 + v_2: v_1 in cal(U), v_2 in U}$, so by the closured under addition, $v in {v_1 + v_2: (v_1+v_2) in cal(U)}$, so $v in {u: u in cal(U)}$, hence $v in cal(U)$, which shows that $cal(U)+cal(U) subset.eq cal(U)$.

  $cal(U) subset.eq cal(U) + cal(U)$ and $cal(U) + cal(U) subset.eq cal(U)$ yields $cal(U)+cal(U)=cal(U)$.
]

#exercise[Is the operation of addition on the subspaces of $V$ commutative? In other words, if $cal(U)$ and $cal(W)$ are subspaces of $V$, is $cal(U)+cal(W)=cal(W)+cal(U)$?]

#solution[
  Yes, addition on the subspaces of $V$ is commutative.

  Notice that addition is defined as follows:
  $cal(U)+cal(W) = {u+w: u in cal(U), w in cal(W)}$. Since addition is commutative, then $u+w = w+u$. Hence $ cal(U)+cal(W) & = {u+w: u in cal(U), w in cal(W)} \
                & = {w+u: w in cal(W), u in cal(U)} \
                & = cal(W)+cal(U) $ Therefore, $cal(U)+cal(W)=cal(W)+cal(U)$.
]

#exercise[Is the operation of addition on the subspaces of $V$ associative? In other words, if $V_1,V_2,V_3$ are subspaces of $V$, is $ (V_1+V_2)+V_3 = V_1 +(V_2+V_3)"?" $]

#solution[
  Yes, addition on the subspaces of $V$ is associative.

  It follows that
  $
    (V_1+V_2) + V_3 & = {v_1+v_2: v_1 in V_1, v_2 in V_2}+ V_3 \
                    & = {(v_1+v_2)+v_3: v_1 in V_1, v_2 in V_2, v_3 in V_3} \
                    & = {v_1 + (v_2+v_3): v_1 in V_1, v_2 in V_2, v_3 in V_3} \
                    & = V_1 + {v_2+v_3: v_2 in V_2, v_3 in V_3} \
                    & = V_1 + (V_2 +V_3)
  $
  Therefore, $(V_1+V_2)+V_3=V_1+(V_2+V_3)$.
]

#exercise[Does the operation of addition on the subspaces of $V$ have an additive identity? Which subspaces have additive inverses?]

#solution[
  Yes, addition on the subspaces of $V$ has an additive identity, which is $\{0\}$.
  Observe that for any subspace $cal(U) subset.eq V$:
  $ cal(U) + {0} = { u + 0 : u in cal(U) } = { u : u in cal(U) } = cal(U) $

  When it comes to additive inverses, the only solution to $V_1 + V_2 = {0}$ is $\{0\} + \{0\} = {0}$.

  To prove no non-trivial subspace has an inverse, suppose one of the subspaces is non-zero, say $V_1 != {0}$. It follows that:
  $ V_1 + V_2 = { v_1 + v_2 : v_1 in V_1, v_2 in V_2 } $
  Since there exists at least one non-zero element $v_1 in V_1$, and $0 in V_2$, the sum contains $v_1 + 0 = v_1 != 0$. Thus, $V_1 + V_2 != {0}$.

  Therefore, only the zero subspace $\{0\}$ has an additive inverse (which is $\{0\}$ itself).
]

#exercise[Prove or give a counterexample: If $V_1, V_2, cal(U)$ are subspaces of $V$ such that $ V_1 + cal(U) = V_2 + cal(U)"," $ then $V_1=V_2$.]

#solution[
  This is false. Suppose $V_1 = {(x,2x): x in FF}, V_2 = {(x,3x):x in FF}$, and $cal(U)={(0,y): y in FF}$.

  It follows that $V_1 + cal(U) = {(x,2x+y): x,y in FF}=FF^2$ and $V_2+cal(U)={(x,3x+y):x,y in FF} = FF^2$. Hence, $V_1 + cal(U) = V_2 + cal(U)$, but $(1,2) in V_1$ and $(1,2) in.not V_2$, so $V_1!=V_2$.
]

#exercise[Suppose $ cal(U) = {(x,x,y,y) in FF^4: x,y in FF}"." $ Find a subspace $cal(W)$ of $FF^4$ such that $FF^4 = cal(U) plus.o cal(W)$.]

#solution[
  Such subspace is for example $cal(W) = {(0,z,0,omega) in FF^4: z,omega in FF}$. Observe that
  $
    cal(U) + cal(W) = {(x,x+z,y,y+omega): FF^4: x,y,z,omega in FF}
  $
  Substitute $a = x, b=x+z, c=y, d=y+omega$:
  $
    cal(U)+cal(W) = {(a,b,c,d): FF^4: a,b,c,d in FF} = FF^4
  $
  Notice that $cal(U) inter cal(W)$ are all vectors such that $(x,x,y,y)=(0,z,0,omega) => z=x=0, omega=y=0$, so the only vector that satisfies this equations is $(0,0,0,0)$. To conclude, $cal(U) inter cal(W) = {0}$.

  Hence, $cal(U) plus.o cal(W)=FF^4$.
]

#exercise[Suppose
  $
    cal(U) = {(x,y,x+y,x-y,2x) in FF^5: x,y in FF}.
  $
  Find three subspaces $W_1, W_2, W_3$ of $FF^5$, none of which equals ${0}$, such that $FF^5 = U plus.o W_1 plus.o W_2 plus.o W_3$.
]

#solution[
  It follows that $V_1+dots+V_m$ is a direct sum if and only if the only way to write $0$ as a sum $v_1+dots+v_m$, where each $v_k in V_k$ is by taking each $v_k$ equal to $0$.

  Now, let $W_1 = {(0,0,alpha,0,0) in FF^5: alpha in FF}$, $W_2 = {(0,0,0,beta,0) in FF^5: beta in FF}$ and $W_3={(0,0,0,0,gamma) in FF^5: gamma in FF}$. Sum $cal(U)+W_1+W_2+W_3={(x,y,x+y+alpha,x-y+beta,2x+gamma) in FF^5: x,,y,alpha,beta,gamma in FF^5}$. Substituting $a=x,b=y,c=x+y+alpha,d=x-y+beta,e=2x+gamma$ yields $(a,b,c,d,e) in FF^5: a,b,c,d,e in FF$, hence $cal(U)+W_1+W_2+W_3 = FF^5$.

  Now, notice that $(x,y,x+y+alpha,x-y+beta,2x+gamma)=0$  specifically if $x=y=alpha=beta=gamma=0$, hence $cal(U) plus.o W_1 plus.o W_2 plus.o W_3 = FF^5$.
]

#exercise[Prove or give a counterexample: If $V_1, V_2, U$ are subspaces of $V$ such that
  $ V = V_1 plus.o U quad "and" quad V=V_2 plus.o U"," $ then $V_1=V_2$.]

#solution[
  This is false as well. Suppose $U = {(x,x) in FF^2: x, in FF}, V_1 = {(0,y) in FF^2: y in FF}$ and $V_2 = {(y,0) in FF^2: y in FF}$. Note that $V_1+U$ and $V_2+U$ both yields $FF^2$. Furthermore, $(x,x+y)=(0,0)$ specifically if $x=y=0$ and $(x+y,x)=(0,0)$ if and only if $x=y=0$. Thus, $V = V_1 plus.o U$ and $V = V_2 plus.o U$, but $V_1!=V_2$.
]

#exercise[
  A function $f: RR -> RR$ is called _even_ if
  $
    f(-x) & = f(x)
  $
  for all $x in RR$. A function $f: RR->RR$ is called _odd_ if
  $
    f(-x) & = f(x)
  $
  for all $x in RR$. Let $V_e$ denote the set of real-valued even functions on $RR$ and let $V_o$ denote the set of real-valued odd functions on $RR$. Show that $RR^RR = V_e plus.o V_o$
]

#proof[Let $V_e = {f in RR^RR: forall x in RR, thick f(-x)=f(x)}$ and $V_o = {f in RR^RR: forall x in RR, thick f(-x)=-f(x)}$. Let $f in V_e inter V_o$, $f(x) = f(-x) = -f(x) => 2f(x)=0 => f(x)=0$, hence $V_o inter V_e = {0}$.

  Now, every function can be deconstructed into even and odd part. Take arbitrarily $f: RR->RR$, then define $h: RR->RR$ and $g: RR->RR$ such that:
  $
    h(x)=(f(x)+f(-x))/2 quad "and" quad g(x)=(f(x)-f(-x))/2
  $
  Notice that:
  - $h(-x)=(f(-x)+f(x))/2 = h(x)$.
  - $g(-x)=(f(-x)-f(x))/2 = -g(x)$.

  Most importantly, $h(x)+g(x)= (f(x)+f(-x))/2 + (f(x)-f(-x))/2 = (f(x)+f(-x)+f(x)-f(-x))/2 = (2 f(x))/2 = f(x)$. From this we can derive that every function can be represented as the sum of some even and odd function.


  For example, let us take $e^x$. Notice that even part equals $cosh(x)$, while odd part equals $sinh(x)$. Sum of those parts equals $e^x$.


  Therefore, $V_e plus.o V_o = RR^RR$.
]
