#import "/templates/preamble.typ": *

= Linear Maps

== Vector Space of Linear Maps

#definition(title: "linear map")[
  A linear map from $V$ to $W$ is a function: $T: V->W$ with the following properties.

  - *additivity*: $T(u+v) = T u + T v$ for all $u,v in V$.

  - *homogeneity* $T(lambda v)=lambda (T v)$ for all $lambda in FF$ and 4all $v in V$.
]

#exercise[Suppose $b,c in RR$. Define $T: RR^3 -> RR^2$ by
  $ T(x,y,z) = (2x-4y+3z+b,6x+c x y z)"." $ Show that $T$ is linear if and only if $b=c=0$.
]

#proof[
  1. Suppose $T$ is a linear map, so it satisfies additive additivite property. Let $(x,y,z),(x',y',z') in RR^3$. Let $T((x,y,z)=(x',y',z'))=T(x,y,z)+T(x',y',z')$. Therefore, $(2(x+x')-4(y+y')+3(z+z')+b,6(x+x')+c (x+x')(y+y')(z+z'))=(2x-4y+3z+b,6x+c x y z)+(2x'-4y'+3z'+b,6x'+ c x' y' z')$. Thus $ & cases(2(x+x') -4(y+y') + 3(z+z') +b &= 2x-4y+3z+b + 2x'-4y'+3z'+b, 6(x+x')+c (x+x')(y+y')(z+z') &= 6x+c x y z + 6x' + c x' y' z') \ & cases(b = 2b, c(x+x')(y+y')(z+z')=c x y z + c x' y' z') \ & cases(b=0, c(1+1)(1+1)(1+1)=c dot 1 + c dot 1 => 8c = 2c => c =0) $ hence $b=c=0$.

  2. Suppose $b=c=0$. It follows that
    - For $(x,y,z),(x',y',z') in RR^3$, $ T((x,y,z)+(x',y',z')) & = (2(x+x')-4(y+y')+3(z+z'),6(x+x')) \
                            & = (2x +2x'-4y-4y'+3z+3z',6x+6x') \
                            & = (2x-4y+3z,6x)+(2x'-4y'+3z',6x') \
                            & = T(x,y,z) + T(x',y',z') $ which means that $T$ is additive.
    - Let $lambda in FF$ and $(x,y,z) in RR^3$. Now $ T(lambda(x, y, z)) & = T(lambda x,lambda y, lambda z) \
                         & = (2 lambda x - 4 lambda y + 3 lambda z, 6 lambda x) \
                         & = lambda (2 x-4y+3z, 6x) \
                         & = lambda (T(x,y,z)) $ which implies that $T$ is homogeneous.
    Thus, $T$ is a linear map.

  Therefore, $T$ is a linear map if and only if $b=c=0$.
]

#exercise[Suppose $b,c in RR$. Define $T: cal(P)(RR)->RR^2$ by $T p = (3 p(4) + 5 p'(6) + b p(1) p(2), integral^2_(-1) x^3 p(x) thick d x + c sin p(0))$. Show that $T$ is linear if and only if $b=c=0$.]

#proof[
  1. Suppose $b=c=0$, so that $T p = (3 p(4) + 5 p'(6), integral_(-1)^2 x^3 p(x) thick d x)$. We can show that:
    - For $p_1,p_2 in cal(P)(RR)$, $ T (p_1+p_2) & = (3 (p_1+p_2)(4) + 5(p_1+p_2)'(6), integral_(-1)^2 x^3 (p_1+p_2)(x) thick d x) \
      & = (3 p_1 (4) + 5 p'_1(6) + 3 p_2 (4) + 5 p'_2 (6), integral^2_(-1) x^3 p_1 (x) thick d x + integral^2_(-1) x^3 p_2 (x) thick d x) \ &= (3p_1 (4)+5 p'_1(6),integral^2_(-1) x^3 p_1 (x) thick d x) + (3p_2 (4)+5 p'_2 (6), integral^2_(-1) x^3 p_2 (x) thick d x) \ &= T(p_1) + T(p_2) $hence $T$ is additive.
    - Let $lambda in RR$ and $p in cal(P)(RR)$, so that $ T(lambda p) & = (3(lambda p)(4)+5(lambda p)'(6), integral^2_(-1) x^3 (lambda p)(x) thick d x ) \
                  & = (lambda(3p(4)+5p'(6)),lambda integral^2_(-1) x^3 p(x) thick d x) \
                  & = lambda(3p(4)+5p'(6), integral^2_(-1) x^3 p(x) thick d x) \
                  & = lambda (T p) $ therefore $T$ is homogeneous.
    Hence $T$ is a linear map.

  2. Let $T$ be linear map, so that $T$ is additive. This means that for $p_1,p_2 in cal(P) (FF)$, $T(p_1+p_2)=T p_1 + T p_2$. Therefore $ & T(p_1+p_2) & = T p_1 + T p_2 $
  This is satisfied if $3(p_1+p_2) (4)+5(p_1+p_2)'(6) + b (p_1+p_2)(1) dot (p_1+p_2) (2) = 3 p_1 (4) + 3p_2(4) + 5p'_1 (6) + 5p'_2 (6) + b p_1 (1) p_1 (2) + b p_2 (1) p_2 (2)$ and $integral^2_(-1) x^3 (p_1+p_2) (x) thick d x + c sin (p_1+p_2)(0)=integral^2_(-1) x^3 p_1 (x) thick d x + integral^2_(-1) x^3 p_2 (x) thick d x + c sin p_1 (0) + c sin p_2 (0)$, from which we can derive that
  $
    & cases(b (p_1+p_2) (1) (p_1+p_2) (2) &= b p_1 (1) p_1 (2) + b p_2 (1) p_2 (2), c sin (p_1+p_2)(0) &= c sin p_1(0) + c sin p_2(0)) \
  $
  Which for $x_1 = x_2 = 1$ implies that
  $b dot 2 dot 2 &= b dot 1 dot 1 + b dot 1 dot 1 => 4 b = 2b => b=0$ and for $x_1 = x_2 = pi/2$ and $c sin pi = c sin pi/2 + c sin pi/2 iff 0 = 2 c => c =0$. Hence $b=c=0$.
]

#exercise[
  Suppose that $T in cal(L) (FF^n, FF^m)$. Show that there exist scalars $A_(j,k) in FF$ for $j=1,dots,m$ and $k=1,dots,n$ such that
  $ T(x_1,dots,x_n) = (A_(1,1) x_1 + dots + A_(1,n) x_n, dots, A_(m,1) x_1 + dots + A_(m,n) x_n) $ for every $(x_1, dots, x_n) in FF^n$.
]

#proof[
  Let $e_1,e_2,dots,e_n$ be a standard basis of $FF^n$ such that $(x_1,dots,x_n) = x_1 e_1 + dots + x_n e_n$. Notice that $T(x_1,dots,x_n)=T(x_1 e_1 + dots + x_n e_n) = T(x_1 e_1) + dots + T(x_n e_n) = x_1 T(e_1) + dots + x_n T(e_n)$. Notice that as a result, we have obtained other linear combination. For each $k in (1,dots,n)$, $(A_(1,k), dots, A_(m,k)) in FF^m$ represents a vector $T e_k$, which implies that such scalars exists. Therefore, $sum^n_(k=1) x_i T e_k = (A_(1,1) x_1 + dots + A_(1,n) x_n, dots, A_(m,1) x_1 + dots + A_(m,n) x_n )$.
]

#exercise[Suppose $T in cal(L)(V,W)$ and $v_1,dots,v_m$ is a list of vectors in $V$ such that $T v_1, dots, T v_m$ is a linearly independent list in $W$. Prove that $v_1,dots, v_m$ is linearly independent.]

#proof[
  Let $a_1 v_1 + dots a_m v_m = 0$, so that $T(a_1 v_1 + dots + a_m v_m) = T(0)=0$, hence $T(a_1 v_1) + dots + T(a_m v_m) = 0$, and so $a_1 T v_1 + dots a_m T v_m = 0$. Since $T v_1, dots T v_m$ is linearly independent, then $a_1=dots=a_m=0$, hence $v_1, dots, v_m$ is linearly independent as well.
]

#definition(title: $"addition and scalar multiplication on" cal(L)(V,W)$)[
  Suppose $S,T in cal(L)(V,W)$ and $lambda in FF$. The sum $S+T$ and the product $lambda T$ are the linear maps from $V$ to $W$ defined by
  $
    (S+T)(v) = S v + T v quad "and" quad (lambda T) (v) = lambda(T v)
  $
] <linear-maps-properties>

#exercise[Prove that $cal(L)(V,W)$ is a vectors space, as was asserted.]

#proof[
  By @linear-maps-properties, if $S,T in cal(L)(V,W)$, then $(S+T) in cal(L)(V,W)$, satisfying closure under addition. Similarly, if $lambda in FF$ and $T in cal(L)(V,W)$, then $lambda T in cal(L)(V,W)$, satisfying closure under scalar multiplication.

  1. *Commutativity:* Let $S,T in cal(L)(V,W)$. For every $v in V$,
    $ (S+T)(v) = S v + T v = T v + S v = (T+S)(v), $
    so $S+T = T+S$.

  2. *Associativity:* Let $S,T,M in cal(L)(V,W)$. For every $v in V$,
    $ ((S+T)+M)(v) = (S+T)(v) + M v = (S v + T v) + M v = S v + (T v + M v) = (S+(T+M))(v), $
    so $(S+T)+M = S+(T+M)$.

  3. *Existence of additive identity:* Define the zero map $0 in cal(L)(V,W)$ by $0(v) = 0_W$ for all $v in V$. Then for any $S in cal(L)(V,W)$ and $v in V$,
    $ (S+0)(v) = S v + 0(v) = S v + 0_W = S v, $
    so $S+0 = S$.

  4. *Existence of additive inverse:* For $S in cal(L)(V,W)$, define $-S in cal(L)(V,W)$ by $(-S)(v) = -(S v)$. Then for every $v in V$,
    $ (S + (-S))(v) = S v + (-S)(v) = S v - S v = 0_W = 0(v), $
    so $S + (-S) = 0$.

  5. *Existence of scalar identity:* For $1 in FF$ and any $T in cal(L)(V,W)$, $(1 dot T)(v) = 1 dot (T v) = T v$ for all $v in V$, so $1 dot T = T$.

  6. *Distributive properties:* For all $S,T in cal(L)(V,W)$, $lambda, mu in FF$, and $v in V$:
    $
          (lambda(S+T))(v) & = lambda (S+T)(v) = lambda (S v + T v) = lambda S v + lambda T v = (lambda S + lambda T)(v), \
      ((lambda + mu) T)(v) & = (lambda + mu)(T v) = lambda (T v) + mu (T v) = (lambda T + mu T)(v).
    $
    Hence $lambda(S+T) = lambda S + lambda T$ and $(lambda + mu)T = lambda T + mu T$.

  Therefore, $cal(L)(V,W)$ is a vector space over $FF$.
]

#definition(title: "product of linear maps")[
  If $T in cal(L)(cal(U),V)$ and $S in cal(L)(V,W)$, then the _product_ $S T in cal(L)(cal(U), W)$ is defined by$ (S T)(u) = S (T u) $ for all $u in cal(U)$.
]

#exercise[Prove that the multiplication of linear maps has the associative, identity, and distributive properties]

#proof[
  1. Let $R in cal(L)(cal(U), V)$, $T in cal(L)(V, W)$ and $S in cal(L)(W, Z)$. For every $u in cal(U)$,
  $
    ((S T) R)(u) & = (S T) (R u) \
                 & = S(T(R u)) \
                 & = S((T R) u) \
                 & = (S (T R))(u)
  $
  hence $(S T) R = S (T R)$, implying associativity.

  2. Let $S in cal(L)(cal(U), V)$, $I_(cal(U)) in cal(L)(cal(U))$ and $I_V in cal(L)(V)$. For every $u in cal(U)$:
  $
    (S I_(cal(U))) (u) & = S(I_(cal(U)) u) & = S u \
           (I_V S) (u) & = I_V (S u)       & = S u
  $
  Thus, $S I_(cal(U)) = S$ and $I_V S = S$, meaning the identity map depends on the domain/codomain space.

  3. Suppose $S_1, S_2 in cal(L)(cal(U), V)$ and $T_1, T_2 in cal(L)(V, W)$. For all $u in cal(U)$: #text(size: 0.8em)[$ ((S_1 + S_2)T_1)(u) & = (S_1+S_2)(T_1 u) = S_1 (T_1 u) + S_2 (T_1 u) = (S_1 T_1)(u) + (S_2 T_1)(u), \
    (S_1(T_1+T_2))(u) & = S_1((T_1+T_2)(u)) = S_1(T_1 u + T_2 u) = S_1 (T_1 u) + S_1 (T_2 u) = (S_1 T_1)(u) + (S_1 T_2)(u) $]
  Hence, $(S_1+S_2)T_1 = S_1 T_1 + S_2 T_1$ and $S_1 (T_1+T_2) = S_1 T_1 + S_1 T_2$, implying that the product of linear maps satisfies the distributive properties.
]

#exercise[Show that every linear map from a one-dimensional vector space to itself is multiplication by some scalar. More precisely, prove that if $dim V=1$ and $T in cal(L)(V)$, then there exists $lambda in FF$ such that $T v = lambda v$ for all $v in V$.]

#proof[
  Let ${v}$ be a basis of $V$. Since $T v in V$ and every vector in $V$ is a scalar multiple of $v$, there exists $lambda in FF$ such that $T v = lambda v$.

  Now, for any $x in V$, we can write $x = a v$ for some $a in FF$. By the linearity of $T$:
  $ T x = T(a v) = a (T v) = a (lambda v) = lambda (a v) = lambda x $

  Thus, $T x = lambda x$ for all $x in V$.
]

#exercise[Give an example of a function $phi: RR^2->RR$ such that $ phi(a v) = a phi (v) $ for all $a in RR$ and all $v in RR^2$ but $phi$ is not linear.]

#solution[
  Suppose $ phi(x, y)= cases(y^2/x quad &"if" x!=0, 0 quad &"if" x=0) $  it satisfies homogeneous property, since $phi(a x, a y) = (a y)^2 / (a x) = (a^2 y^2) /(a x) = a y^2/x = a phi(x, y)$, but does not satisfy additive property as for example $phi(2+1, 1+2) = 9/ 3 = 3$, but $phi(2, 1)=4$ and $phi(1, 2) = 1/2$, hence $phi(2+1, 1+2) != phi(2, 1) + phi(1, 2)$.
]

#exercise[Give an example of a function $phi: CC->CC$ such that
  $
    phi(omega + z) = phi(omega) + phi(z)
  $
  for all $omega, z in CC$ but $phi$ is not linear.
]

#proof[
  Let $phi(z) = Re(z)$, which is trivially additive, since $phi(z_1+z_2)=Re(z_1+z_2)=Re(z_1)+Re(z_2)$. However, notice that $phi(i z) = Im(z) != i Re(z)$, for example, $phi(i(1+2i))=phi(i-2)=Re(i-2)=2$ while $phi(1+2i) = Re(1+2i)= 1$.
]

#exercise[Prove or give a counterexample: If $q in cal(P)(RR)$ and $T: cal(P)(RR)->cal(P)(RR)$ is defined by $T p = q compose p$, then $T$ is a linear map.]

#solution[
  Suppose $q(x)=x^2$, $p_1(x)=x$, $p_2=x+1$. Notice that $T p_1 = x^2$, $T p_2 = x^2+2x+1$ and $T(p_1+p_2) = 4x^2+4x+1$. Thus, $T(p_1+p_2)!=T p_1 + T p_2$ and additivity does not hold.
]
#exercise[Suppose $V$ is finite-dimensional and $T in cal(L)(V)$. Prove that $T$ is a scalar multiple of the identity if and only if $S T = T S$ for every $S in cal(L)(V)$.]
#proof[
  1. Suppose $T= lambda I$ for some $lambda in FF$. We can observe that $S T = S (lambda I) = lambda (S I) = lambda S = lambda (I S) = (lambda I) S = T S$ for every $S in cal(L)(V)$.
  2. Let $S T = T S$ for every $S in cal(L)(V)$ and suppose that ${v_1,v_2,dots,v_n}$ is a basis of $V$. For $j in {1,2,dots,n}$ let $S_j v_j = v_j$ and $S_j v_k = 0$ if $k!=j$. By the hypothesis $S T = T S$, we have $ (S_j T)(v_j) & = (T S_j) v_j \
     S_j (T v_j) & = T (S_j v_j) \
     S_j (T v_j) & = T v_j $ Notice that $T v_j$ can be expressed by linear combination: $T v_j = lambda_1 v_1 + dots + lambda_j v_j + dots +lambda_n v_n$, thus $S_j (T v_j ) &= lambda_1 S_j (v_1) + dots +lambda_j S_j (v_j) + dots + lambda_n S_j (v_n)= lambda_j v_j$. Therefore, for every $j in {1,2,dots,n}$ $T v_j = lambda_j v_j$. #v(0.1em) Define $S$ such that for every $i in {1,dots,n-1}$ $S v_i = v_(i+1)$. By the hypothesis $S T = T S$, $      (S T) (v_i) & = (T S) (v_i) \
            S(T v_i) & = T (S v_i) \
     S(lambda_i v_i) & = T v_(i+1) \
    lambda_i (S v_i) & = lambda_(i+1) v_(i+1) \
    lambda_i v_(i+1) & = lambda_(i+1) v_(i+1) $ Hence $lambda_i = lambda_(i+1)$, implying that $lambda_1=lambda_2=dots=lambda_n=lambda$, so that, $T v_j = lambda v_j$. Finally $T v = T(sum^n_(k=1) a_k v_k) = sum^n_(k=1) a_k T(v_k) = sum^n_(k=1) lambda a_k v_k = lambda sum^n_(k=1)a_k v_k = lambda v$, so $T v = lambda v = (lambda I) v$, which yields that $T = lambda I$.
]

#exercise[Suppose $cal(U)$ is a subspace of $V$ with $cal(U)!=V$. Suppose $S in cal(L)(cal(U),W)$ and $S!=0$ (which means that $S u != 0$ for some $u in cal(U)$). Defined $T: V-> W$ by
  $
    T v = cases(S v quad & "if" v in cal(U), 0 quad & "if" v in V thick "and" thick v in.not cal(U))
  $
  Prove that $T$ is not a linear map on $V$.
]

#proof[
  Suppose $V = op("span")(v_1,dots,v_n)$ and $cal(U) = op("span")(v_1+v_2)$, so that $v_1+v_2 in cal(U)$ but $v_1,v_2 in.not cal(U)$. Notice that $T(v_1+v_2) = S(v_1+v_2)$ while $T(v_1)+T(v_2)=0+0$.

  As a consequence, $T(v_1+v_2)=S(v_1+v_2)!=0$ by definition, but $T(v_1)+T(v_2)=0$, so clearly $T$ is not additive.
]

#exercise[
  Suppose $V$ is finite-dimensional. Prove that every linear map on a subspace of $V$ can be extended to a linear map on $V$. In other words, show that if $cal(U)$ is a subspace of $V$ and $S in cal(L)(cal(U),W)$, then there exists $T in cal(L)(V,W)$ such that $T u = S u$ for all $u in cal(U)$.
]

#proof[
  Suppose ${u_1,dots,u_n}$ is a basis of $cal(U)$ and extend this to a basis of $V$: ${u_1,dots,u_n, v_1, dots, v_m}$.

  Let $T$ be defined so that:
  - $forall i in {1, dots,m}, thick T v_i = 0$
  - $forall j in {1,dots,n}, thick T u_j = S u_j$.

  Choose arbitrarily $u in cal(U)$. It can be represented as a linear combination of a vectors of a basis, so $u = a_1 u_1 + dots + a_n u_n$.


  Using linearity of $S$ and $T$:
  $
    T u = T(sum^n_(k=1) a_k u_k) & = sum^n_(k=1) T(a_k u_k) \
                                 & = sum^n_(k=1) a_k T(u_k) \
  $

  $
    & = sum^n_(k=1) a_k S(u_k) \
    & = sum^n_(k=1) S(a_k u_k) \
    & = S(sum^n_(k=1) a_k u_k) \
    & = S u
  $
  Thus, $T u = S u$, satisfying the condition.
]

#exercise[Suppose $V$ is finite-dimensional with $dim V >0$, and suppose $W$ is infinite-dimensional. Prove that $cal(L)(V,W)$ is infinite-dimensional.]

#proof[
  Since $W$ is infinite-dimensional, we can choose infinite linearly-independent list such as ${omega_1, omega_2, omega_3, dots}$.

  Select ${T_1,T_2,T_3, dots}$ such that $T_1,T_2,T_3, dots in cal(L)(V,W)$. Suppose that for each $i in {1,2,3,dots}$ and $v in V$ T_i is defined as followed:

  Let ${v_1,dots,v_n}$ be a basis of $V$ and let
  - $T_i v_1 = omega_i$
  - $T_i v_k = 0$ where $k!=1$.

  Let $a_1 T_1 + a_2 T_2 + a_3 T_3 + dots = 0$ which yields $(a_1 T_1 + a_2 T_2 + a_3 T_3 + dots )(v_1)=0$. Therefore
  $
    (a_1 T_1)(v_1) + (a_2 T_2)(v_1) + dots & = 0 \
      a_1 (T_1 v_1) + a_2 (T_2 v_1) + dots & = 0 \
          a_1 omega_1 + a_2 omega_2 + dots & = 0
  $
  implying that $a_1=a_2=dots=0$. Consequently, ${T_1, T_2, dots}$ is linearly independent, and hence $cal(L)(V,W)$ is infinite-dimensional.
]

#exercise[Suppose $v_1,dots,v_m$ is a linearly dependent list of vectors in $V$. Suppose also that $W!={0}$. Prove that there exist $omega_1,dots,omega_m in W$ such that no $T in cal(L)(V,W)$ satisfies $T v_k = omega_k$ for each $k=1,dots,m$.]

#proof[
  Since $v_1, dots, v_m$ is linearly dependent, there exist scalars $a_1, dots, a_m$ (not all zero) such that $a_1 v_1 + dots + a_m v_m = 0$.

  Choose an index $l in {1, dots, m}$ for which $a_l != 0$. We can then express $v_l$ as:
  $ v_l = - (a_1)/(a_l) v_1 - dots - (a_(l-1))/(a_l) v_(l-1) - (a_(l+1))/(a_l) v_(l+1) - dots - (a_m)/(a_l) v_m $

  Now, let us choose $omega_1, dots, omega_m in W$ such that $omega_l != - (a_1)/(a_l) omega_1 - dots - (a_m)/(a_l) omega_m$ (for instance, by picking $omega_l$ independently or using a non-zero vector since $W != {0}$).

  Suppose, for the sake of contradiction, that there exists $T in cal(L)(V, W)$ such that $T v_k = omega_k$ for all $k in {1, dots, m}$.

  Using the linearity of $T$:
  $
    T v_l & = T( - (a_1)/(a_l) v_1 - dots - (a_m)/(a_l) v_m ) \
          & = - (a_1)/(a_l) T(v_1) - dots - (a_m)/(a_l) T(v_m) \
          & = - (a_1)/(a_l) omega_1 - dots - (a_m)/(a_l) omega_m
  $

  On the other hand, we assumed $T v_l = omega_l$. This implies that:
  $ omega_l = - (a_1)/(a_l) omega_1 - dots - (a_m)/(a_l) omega_m $

  which directly contradicts our choice of $omega_l$. Thus, no such $T$ can exist.
]

#exercise[Suppose $V$ is finite-dimensional with $dim >1$. Prove that there exist $S,T in cal(L)(V)$ such that $S T!= T S$.]

#proof[Let $v_1,dots,v_m$ be a basis of $V$. Select $S$ and $T$ such that:
  - $S v_1 = v_1$ and $S v_k = 0$ for $k!=1$,
  - $T v_i = v_(i+1)$ for $i in {1,dots,m-1}$.

  Notice that $(S T)(v_1) = S (T v_1) = S v_2 = 0$ while $(T S)(v_1) = T (S v_1) = T v_1 = v_2$, thus $S T != T S$.
]

#exercise[Suppose $V$ is finite-dimensional. Show that the only two-sided ideals of $cal(L)(V)$ are ${0}$ and $cal(L)(V)$.

  #quote[
    A subspace $epsilon$ of $cal(L)(V)$ is called a *two-sided ideal* of $cal(L)(V)$ if $T E in epsilon$ and $E T in epsilon$ for all $E in epsilon$ and all $T in cal(L)(V)$.
  ]
]

#proof[
  1. *Trivial ideals:*
    - Let $epsilon = {0}$. For any $T in cal(L)(V)$ and $E in epsilon$, $T E = 0 in {0}$ and $E T = 0 in {0}$, so ${0}$ is a two-sided ideal.
    - Let $epsilon = cal(L)(V)$. Since $cal(L)(V)$ is closed under composition, $T E in cal(L)(V)$ and $E T in cal(L)(V)$ for all $E, T in cal(L)(V)$, so $cal(L)(V)$ is a two-sided ideal.

  2. *Non-zero ideal:*
    Let $epsilon$ be a two-sided ideal of $cal(L)(V)$ such that $epsilon != {0}$. Let $(v_1, dots, v_n)$ be a basis of $V$.

    Since $epsilon != {0}$, there exists a non-zero operator $E in epsilon$. Thus, there is some vector $v_j$ in the basis such that $E(v_j) != 0$. Expanding $E(v_j) = sum_(k=1)^n a_k v_k$, there exists at least one index $i in {1, dots, n}$ for which $a_i != 0$.

    For any fixed pair of indices $r, s in {1, dots, n}$, define the elementary operators $E_(r,s) in cal(L)(V)$ on the basis by:
    $ E_(r,s)(v_k) = cases(v_r & "if" k = s, 0 & "if" k != s) $
    Note that $\{ E_(r,s) : r, s in {1, dots, n} \}$ forms a basis of $cal(L)(V)$.

    Since $epsilon$ is a two-sided ideal, for any $E in epsilon$ and any $A, B in cal(L)(V)$, we have $A E B in epsilon$. Consider the composition $A E B$ with $A = E_(r,i)$ and $B = E_(j,s)$:
    - For $k != s$, $(A E B)(v_k) = A(E(0)) = 0$.
    - For $k = s$, $(A E B)(v_s) = A(E(v_j)) = A(sum_(k=1)^n a_k v_k) = a_i v_r$.

    Therefore, $A E B = a_i E_(r,s)$. Since $a_i != 0$ and $a_i E_(r,s) in epsilon$, scaling by $1/a_i in FF$ yields $E_(r,s) in epsilon$.

    Because $r, s$ were arbitrary, $epsilon$ contains all basis operators $E_(r,s)$ of $cal(L)(V)$. Hence, $epsilon = op("span")({E_(r,s)}) = cal(L)(V)$.
]

== Null Spaces and Ranges

#exercise[Give an example of a linear map $T$ with $dim ker(T)=3$ and $dim im(T)=2$]

#solution[
  Let $T(x_1,x_2,x_3,x_4,x_5)=(0,0,x_4,0,x_5)$.

  - $ker T = span(e_1, e_2, e_3)$
  - $im T = span(e_3, e_5)$
]

#exercise[Suppose $S,T in cal(L)(V)$ are such that $im S subset.eq ker T$. Prove that $(S T)^2 = 0$. ]

#proof[
  Let $v in V$. Notice that $im S subset.eq ker T => S v in ker T$, hence $T S = 0$.

  Thus, $(S T)^2= S(T S)T = S (0 T) = S(0) = 0$.
]

#exercise[Suppose $v_1, dots, v_m$ is a list of vectors in $V$. Define $T in cal(L)(FF^m, V)$ by
  $
    T(z_1,dots,z_m)= z_1 v_1 + dots + z_m v_m"."
  $
  - What property of $T$ corresponds to $v_1,dots,v_m$ spanning $V$?
  - What property of $T$ corresponds to the list $v_1, dots,v_m$ being linearly independent?
]

#solution[
  Those properties are
  - $v_1,dots,v_m$ span $V$ $iff$ $T$ is *surjective*, thus $im T = V$.
  - $v_1,dots,v_m$ is linearly independent $iff$ $T$ is *injective*, hence $ker T = {0}$.
]

#exercise[Show that ${T in cal(L)(RR^5,RR^4): dim ker T >2}$ is not a subspace $cal(L)(RR^5,RR^4)$.]

#proof[
  Let $cal(T) = {T in cal(L)(RR^5, RR^4): dim ker T>2}$. Choose $T_1, T_2 in cal(T)$ such that $ker T_1 = span(e_1, e_2, e_3)$ and $ker T_2 = span(e_3, e_4, e_5)$.

  For the sake of smallest counterexample let
  - $T_1 (x_1,x_2,x_3,x_4,x_5)=(0,0,x_4,x_5)$,
  - $T_2 (x_1,x_2,x_3,x_4,x_5)=(x_1,x_2,0,0)$.

  Their sum $T_1+T_2 (x_1,x_2,x_3,x_4,x_5) = (x_1,x_2,x_4,x_5)$, which $ker (T_1+T_2) = span(e_3)$, hence $dim ker (T_1+T_2) = 1$ and $T_1+T_2 in.not cal(T)$. It results in $cal(T)$ being not closed under addition, which is a key property of a subspace. Therefore, $cal(T)$ is not a subspace of $cal(L)(RR^5,RR^4)$.]

#exercise[Give an example of $T in cal(L)(RR^4)$ such that $im T = ker T$.]

#solution[
  Let $T (x_1,x_2,x_3,x_4) = (0,0,x_1,x_2)$.

  - $ker T = span(e_3, e_4)$,
  - $im T = span(e_3, e_4)$.

  Therefore, $im T = ker T$, satisyfing the given condition.
]

#exercise[Prove that there does not exist $T in cal(L)(RR^5)$ such that $im T = ker T$.]

#proof[
  By *Rank-nullity theorem*, $dim im T + dim ker T =
  dim RR^5 = 5$. Since $dim$ yields only integers, then there is no such pair of integers which are equal and sum up to $5$. Hence, there is no such $T$ that satisfy the given condition.
]

#exercise[Suppose $V$ and $W$ are finite-dimensional with $2 <= dim V <= dim W$. Show that ${T in cal(L)(V,W): T "is not injective"}$ is not  subspace of $cal(L)(V, W)$.
]

#proof[
  Firstly, it is a well-known fact that $T$ is injective if and only if $ker T = {0}$. Therefore, if $T$ is not injective, then clearly $dim ker T > 0$.

  Suppose $V=RR^2$ and $W=RR^3$, let $cal(T) = {T in cal(L)(V,W): T "is not injective"}$. We shall arbitrarily choose $T_1, T_2 in cal(T)$ such that
  - $T_1 (x_1,x_2) = (x_1,0,0)$, so that $ker T_1 = span(e_2)$.
  - $T_2 (x_1,x_2) = (0,x_2,0)$, so that $ker T_2 = span(e_1)$.

  Summing up these two maps yields $(T_1+T_2) (x_1, x_2) = (x_1,x_2,0)$, for which $ker (T_1+T_2) = {0}$. Therefore, $T_1+T_2$ is linearly independent and does not belong to $cal(T)$. Consequently, $cal(T)$ is not closed under addition and it cannot be a subspace of $cal(L)(V,W)$.
]

#exercise[Suppose $V$ and $W$ are finite-dimensional with $dim V >= dim W >= 2$. Show that ${T in cal(L)(V,W): T "is not surjective"}$ is not a subspace of $cal(L)(V,W)$.]

#proof[
  Firstly, it is a well-known fact that $T:V->W$ is surjective if $im T = W$. Therefore, if $T$ is not surjective, then clearly $im T != dim W$.

  Suppose $V = RR^2$ and $W=RR^2$, and let $cal(T)={T in cal(L)(V,W): T "is not surjective"}$. We shall arbitrarily choose $T_1,T_2 in cal(T)$ such that
  - $T_1 (x_1,x_2) = (x_1,0)$, so that $im T_1 = span(e_1) != W$.
  - $T_2 (x_1,x_2) = (0,x_2)$, so that $im T_2 = span(e_2) != W$.

  Notice that summing up $T_1+T_2$ yields a linear map such that $(T_1+T_2) (x_1+x_2) = (x_1+x_2)$ which image basically spans $W$. Consequently, $(T_1+T_2)$ is surjective, does not belong to $cal(T)$, implying that $cal(T)$ is not closed under addition and cannot be a subspace.
]

#exercise[Suppose $T in cal(L)(V,W)$ is injective and $v_1, dots, v_n$ is linearly independent in $V$. Prove that $T v_1, dots, T v_n$ is linearly independent in $W$.]

#proof[
  By the fact that $T$ is injective, $ker T = {0}$. Let $a_1 T v_1 + dots + a_n T v_n = 0$, from which we can derive that $T(a_1 v_1 + dots + a_n v_n) = 0$. In view of $ker T = {0}$, $T(a_1 v_1 + dots + a_n v_n) =0$ implies that $a_1 v_1 + dots + a_n v_n = 0$. Since $v_1, dots, v_n$ is linearly independent, then $a_1=dots=a_n=0$. Therefore, $T v_1, dots, T v_n$ is linearly independent as well.
]

#exercise[Suppose $v_1,dots,v_n$ spans $V$ and $T in cal(L)(V,W)$. Show that $T v_1, dots, T v_n$ spans image of $T$.]

#proof[
  By the definition of the image, $im T = {T v: v in V}$. Since $v_1,dots,v_n$ spans $V$, then every $v in V$ can be generated by linear combination $a_1 v_1 + dots + a_n v_n$. Therefore, $T v = T(a_1 v_1 + dots + a_n v_n) = a_1 T v_1 + dots + a_n T v_n$, so $T v_1, dots, T v_n$ spans $im T$.
]

#exercise[Suppose that $V$ is finite-dimensional and that $T in cal(L)(V,W)$. Prove that there exists a subspace $cal(U)$ of $V$ such that
  $
    cal(U) inter ker T = {0} quad "and" quad im T = {T u: u in cal(U)}"."
  $
]

#proof[
  Since $V$ is finite-dimensional space, there exists a complementary subspace $cal(U)$ such that $cal(U) plus.o ker T = V$. This naturally yields $cal(U) inter ker T = {0}$. Therefore, let $u_1,dots,u_n$ be a basis of $cal(U)$ and $w_1,dots,w_k$ a basis of $ker T$, so that $u_1,dots,u_n,w_1, dots,w_k$ be a basis of $V$. For every $v in V$, $T v = T(a_1 u_1 + dots + a_n u_n + dots + a_(n+k) w_k)$, hence $T v = a_1 T u_1 + dots a_n T u_n + dots + a_(n+k) T w_k$. Each $T w_i =0$ (for $i in {1,dots,k}$), so $T v = a_1 T u_1 + dots + a_n T u_n + 0$, implying that ${T v: v in V} = {T u: u in cal(U)}$. Therefore $cal(U)$ satisfies both given conditions.
]

#exercise[Suppose $T$ is a linear map from $FF^4$ to $FF^2$ such that
  $ ker T = {(x_1,x_2,x_3,x_4) in FF^4: x_1 = 5 x_2 thick "and" thick x_3 = 7x_4}"." $ Prove that $T$ is surjective.
]

#proof[
  It follows that $ker T = span((5,1,0,0), (0,0,7,1))$, thus $dim ker T=2$. By *Rank-nullity Theorem*, $dim ker T + dim im T = dim FF^4=4$, implying that $dim im T = 2$. Since $im T subset.eq FF^2$ and $dim im T = dim FF^2 = 2$, without any doubt we can assume that $im T = FF^2$ and hence, $T$ is surjective.
]

#exercise[Suppose $cal(U)$ is a three-dimensional subspace of $RR^8$ and that $T$ is a linear map from $RR^8$ to $RR^5$ such that $ker T = cal(U)$. Prove that $T$ is surjective.]

#proof[
  We know that $dim cal(U) = 3$ and $dim RR^8 = 8$. By *Rank-nullity theorem*, $dim ker T + dim im T = dim RR^8 = 8$, hence $dim im T = 8-3=5$. In view of $im T subset.eq RR^5$ and $dim im T = dim RR^5$, we can establish that $im T = RR^5$ and thus $T$ is surjective.
]

#exercise[
  Prove that there does not exist a linear map from $FF^5$ to $FF^2$ whose null space equals ${(x_1,x_2,x_3,x_4,x_5) in FF^5: x_1 = 3 x_2 thick "and" thick x_3=x_4=x_5}$.
]

#proof[
  Suppose for the sake of contradiction that $T$ exists and $ker T = {(x_1,x_2,x_3,x_4,x_5) in FF^5: x_1 = 3x_2 thick "and" thick x_3=x_4=x_5}$, so that $ker T = span((3,1,0,0,0), (0,0,1,1,1))$.

  Since $T: FF^5->FF^2$, then $dim im <= dim FF^2 = 2$. By *Rank-nullity theorem*, $dim ker T + dim im T = dim FF^5=5$, so $dim ker T >= 3$. However, $dim ker T = 2$ and thus $T$ does not exist.
]

#exercise[
  Suppose there exists a linear map on $V$ whose null space and range are both finite-dimensional. Prove that $V$ is finite-dimensional.
]

#proof[
  Suppose that $u_1, dots, u_k$ is a basis of $ker T$ and $T v_1, dots, T v_n$ is a basis of $im T$.

  Let $v$ be an arbitrary vector in $V$. Its image $T v$ lies in $im T$, so it can be written as a linear combination of the basis vectors of the range: $T v = c_1 T v_1 + dots + c_n T v_n = T(c_1 v_1 + dots + c_n v_n)$.

  This implies that $T(v - (c_1 v_1 + dots + c_n v_n)) = 0$, meaning the vector $v - (c_1 v_1 + dots + c_n v_n)$ belongs to $ker T$. Since $u_1, dots, u_k$ spans $ker T$, we can write $v - (c_1 v_1 + dots + c_n v_n) = d_1 u_1 + dots + d_k u_k$.

  Consequently, every $v in V$ is a linear combination of the finite list $u_1, dots, u_k, v_1, dots, v_n$, implying that $V$ is finite-dimensional.
]

#exercise[Suppose $V$ and $W$ are both finite-dimensional. Prove that there exists an injective linear map from $V$ to $W$ if and only if $dim V <= dim W$.]

#proof[
  1. Let $v_1,dots,v_k$ be a basis of $V$ and $w_1,dots,w_n$ a basis of $W$ such that $k<=n$. Define $T in cal(L)(V,W)$ such that $T v_i = w_i$ for every $i in {1,2,dots,k}$. Suppose $v in V$ and $T v = 0$. Notice that $T v = T (a_1 v_1 + dots + a_k v_k) = a_1 T v_1 + dots a_k T v_k = a_1 w_1 + dots + a_k w_k=0$. Since $w_1, dots, w_k$ is linearly independent, then $a_1=dots=a_k=0$ and hence $ker T = {0}$, thus $T$ is injective.

  2. Suppose $dim V > dim W$. By *Rank-nullity theorem*, $dim ker T + dim im T = dim V$. Since, $dim ker T = dim V - dim im T >= dim V - dim W > 0$, then $dim ker T > 0$, implying that there exist no such $T$ that is injective.
]

#exercise[Suppose $V$ and $W$ are both finite-dimensional. Prove that there exists a surjective linear map from $V$ to $W$ if and only if $dim V >= dim W$.]

#proof[
  1. Suppose $dim V < dim W$ and take arbitrary $T$ from $cal(L)(V,W)$. By *Rank-nullity theorem*, $dim ker T + dim im T = dim V$, and thus $dim ker T + dim im T < dim W$, hence $dim im T < dim W$. Therefore, there does not exist a surjective $T$.

  2. Let $dim V >= dim W$, $v_1, dots, v_n$ be a basis of $V$ and $w_1, dots, w_k$ a basis of $W$ such that $n>=k$. Define $T in cal(L)(V,W)$ such that $T v_i = w_i$ for every $i in {1,dots,k}$ and $T v_j = 0$ for every $j > k$. It follows that for $v in V, thick T v = T (a_1 v_1 + dots + a_n v_n) = a_1 T + dots + a_k T w_k + 0 + dots + 0= a_1 w_1 + dots + a_k w_k$. Since $w_1, dots, w_k$ spans $W$, then $im T = W$ and $T$ is surjective.
]

#exercise[Suppose $V$ and $W$ are finite-dimensional and that $cal(U)$ is a subspace of $V$. Prove that there exists $T in cal(L)(V,W)$ such that $ker T = cal(U)$ if and only if $dim cal(U) >= dim V - dim W$.]

#proof[
  1. Suppose $dim cal(U) < dim V - dim W$ and take arbitrary $T in cal(L)(V,W)$. It is easy to show that $dim ker T = dim cal(U) < dim V - dim W <= dim V - dim im T$, hence $dim ker T < dim V - dim im T$, so $dim ker T + dim im T < dim V$, which contradicts with *Rank-nullity theorem*. No such $T$ exists.

  2. Suppose $dim cal(U) >= dim V - dim W$. Let $(u_1, dots, u_n)$ be a basis of $cal(U)$, and extend it to a basis $(u_1, dots, u_n, v_1, dots, v_k)$ of $V$, where $n = dim cal(U)$ and $n + k = dim V$. #v(0.1em) The condition $dim cal(U) >= dim V - dim W$ implies that $k = dim V - n <= dim W$. Let $(w_1, dots, w_(dim W))$ be a basis of $W$, and choose the first $k$ vectors $(w_1, dots, w_k)$. #v(0.1em) Define a linear map $T in cal(L)(V,W)$ on the basis of $V$ by setting: $ T(u_i) = 0 quad "for" quad i in {1, dots, n} $ $ T(v_j) = w_j quad "for" quad j in {1, dots, k} $ We claim that $ker T = cal(U)$. Clearly, $cal(U) subset.eq ker T$ because every basis vector $u_i$ is mapped to zero. Conversely, if $v = a_1 u_1 + dots + a_n u_n + b_1 v_1 + dots + b_k v_k$ is in $ker T$, then:
  $ T(v) = b_1 w_1 + dots + b_k w_k = 0 $
  Since $(w_1, dots, w_k)$ are linearly independent, all coefficients $b_j$ must be zero, meaning $v$ lies entirely in $cal(U)$. Thus $ker T = cal(U)$, completing the proof.
]

#exercise[
  Suppose $W$ is finite-dimensional and $T in cal(L)(V, W)$. Prove that $T$ is injective if and only if there exists $S in cal(L)(W,V)$ such that $S T$ is the identity operator on $V$.
]

#proof[
  Suppose $v_1,dots,v_n$ to be a basis of $V$.

  1. Let $S T$ be the identity operator on $V$, hence $S T(v)=v$ for every $v in V$. For the sake of contradiction let $T$ be non-injective, hence there is such non-zero $v$ for which $T v = 0$. Consequently, $S(T v) = S (0) = 0 != v$, thus $T$ is injective.

  2. Let $T$ be injective. This implies that $T v_1, dots, T v_n$ is linearly independent in $W$. Extend this a basis of $W$ by appending $w_1,dots, w_m$ and define $S$ such that $S (T v_i) = v_i$ for all $i in {1,dots,n}$ and $S w_j = 0$ for $j in {1,dots,m}$. Let $v in V$, now $(S T) v = S(T (a_1 v_1 + dots a_n v_n)) = S(a_1 T v_1 + dots + a_n T v_n) = a_1 S(T v_1) + dots + a_n S T(v_n) = a_1 v_1 + dots + a_n v_n = v$, so $S T = I$.
]

#exercise[Suppose $W$ is finite-dimensional and $T in cal(L)(V,W)$. Prove that $T$ is surjective if and only if there exists $S in cal(L)(W,V)$ such that $T S$ is the identity operator on $W$. ]

#proof[
  1. Let $T$ be surjective onto $W$, so that $im T = W$ and $dim V >= dim im T = dim W$.
    - Let $u_1,dots,u_m$ be a basis of $ker T$. By extending it to a basis of $V$, $u_1,dots,u_m,v_1,dots,v_n$, we get vectors $v_1,dots,v_n$, for which $T v_1, dots, T v_n$ spans $im T$ and has the length equal dimension of $im T$. In other words, we obtain a list of vectors which is a basis of $im T$ and hence a basis of $W$ as well.
    - Therefore, define $S$ in such way that $S(T v_k) = v_k$ for every $k in {1,dots,n}$. Notice that for every $w in W$, $T S (w) = T S (a_1 T v_1 + dots a_n T v_n) = T(a_1 S(T v_1) + dots + a_n S(T v_n)) = T(a_1 v_1 + dots +a_n v_n) = a_1 T v_1 + dots + a_n T v_n = w$. Hence, $T S = I$.

  2. Let $T S$ be the identity operator on $W$.
    - Since for every $w in W$, $T S (w) = w$, then $T(S w) =w$ implies that there exists $v in V$ for which $T v = w$, hence $im T = W$ and $T$ is surjective.
]

#exercise[
  Suppose $V$ is finite-dimensional, $T in cal(L)(V,W)$, and $cal(U)$ is a subspace of $W$. Prove that ${v in V: T v in cal(U)}$ is a subspace of $V$ and
  $
    dim {v in V: T v in cal(U)} = dim ker T + dim (cal(U) inter im T)
  $
]

#proof[
  Let $cal(V) = {v in V: T v in cal(U)}$. Clearly, $cal(V) subset.eq V$ and note that
  - $0 in cal(V)$, since $T(0) = 0 in cal(U)$.
  - For $v_1,v_2 in cal(V), thick v_1+v_2 in cal(V)$, since $T(v_1+v_2) = T v_1 + T v_2 in cal(U)$.
  - Let $v in cal(V)$ and $lambda in FF$. In view of $T (lambda v) = lambda T v in cal(U)$, it follows that $lambda v in cal(V)$.
  Thus $cal(V)$ is a subspace.

  Pick a basis of $ker T$: $x_1,dots,x_r$. Extend it to a basis of $cal(V)$: $x_1,dots,x_r, y_1,dots,y_s$. Extend it even more to a basis of $V$: $x_1,dots,x_r,y_1,dots,y_s,v_1,dots,v_n$. Notice that $T y_1,dots,T y_s,T v_1,dots,T v_n$ is a basis of $im T$. Take a note, that $T y_1, dots, T y_s$ does not necessarily span $cal(U)$.

  It follows that $cal(U) inter im T = span(T y_1, dots, T y_s)$, hence $dim (cal(U) inter im T) =s$. Furthermore, $dim ker T = r$ and $dim cal(V) = r+s$, therefore
  $
    dim cal(V) = dim ker T + dim (cal(U) inter im T)
  $
]

#exercise[
  Suppose $cal(U)$ and $V$ are finite-dimensional vector spaces and $S in cal(L)(V,W)$ and $T in cal(L)(cal(U),V)$. Prove that
  $
    dim ker S T <= dim ker S + dim ker T
  $
]

#proof[
  Pick a basis of $ker T$: $x_1,dots,x_m$ and extend it to a basis of $cal(U)$: $x_1,dots,x_m, u_1,dots,u_n$. We can establish that $ker T subset.eq ker S T$.  Clearly, $T u_1,dots,T u_n$ spans $im T subset.eq V$. Take a note that $ker S$ is not necessarily a subset of $im T$, so we can derive that $ker S inter im T subset.eq ker S T$. Since, $im T inter ker T = {0}$, then $ker S T = ker T plus.o (ker S inter im T)$, thus $dim ker S T <= dim ker T + dim ker S$.
]

#exercise[
  Suppose $cal(U)$ and $V$ are finite-dimensional vector spaces and $S in cal(L)(V,W)$ and $T in cal(L)(cal(U),V)$. Prove that
  $
    dim im S T <= min{dim im S, dim im T}
  $
]

#proof[
  Pick a basis of $im T without ker S$: $x_1, dots, x_n$ and extend this to $im T$: $x_1,dots,x_n, y_1,dots,y_m$. Clearly, $T y_1, dots, T y_m$ spans a subspace of $im S$ and without a doubt, spans $im S T$. Now, we can derive from this that $m <= dim im T$ and $m<= dim im S$ and since $dim im S T <= m$, then $dim im S T <= min{dim im S, dim im T}$.
]

#exercise[
  1. Suppose $dim V = 5$ and $S,T in cal(L) (V)$ are such that $S T =0$. Prove that $dim im T S <=2$.
  2. Give an example of $S,T in cal(L)(FF^5)$ with $S T = 0$ and $dim im T S = 2$.
]

#proof[
  1. Let $S T = 0$, then $im T subset.eq ker S$, so $dim im T <= dim ker S$. By *Rank-nullity theorem*, $dim im T <= dim V - dim im S$, so $dim im T + dim im S <= 5$. From this, we can derive that $2 min{dim im T, dim im S}
    <= dim im T + dim S <=5$, hence $dim im T S <=min{dim im T, dim im S}<=5/2$. Since $dim$ yields only integers, then $dim im T S <= 2$.
  2. Let $S (x_1,x_2,x_3,x_4,x_5) = (x_4,x_5,0,0,0)$ and $T (x_1,x_2,x_3,x_4,x_5) = (x_1,x_2,x_3,0,0)$. It follows that $T S = (x_4,x_5,0,0,0)$, hence $im T S = span(e_1, e_2)$ and $dim im T S = 2$.
]

#exercise[Suppose that $W$ is finite-dimensional and $S,T in cal(L)(V,W)$. Prove that $ker S subset.eq ker T$ if and only if there exists $E in cal(L)(W)$ such that $T = E S$.]

#proof[
  1. Suppose there exists such $E in cal(L)(W)$ for which $T = E S$. We can show that for every $x in ker S$, $E S (x) = T x$, hence $E(0) = T x$, and $T x = 0$. Therefore, $ker S subset.eq T$.
  2. Suppose $T in cal(L)(V,W)$ and such $S$ which satisfies $ker S subset.eq ker T$.
    - Clearly, for every $y in im S$, there exists such $x in V$ for which $S x =y$. Accordingly, define $E in cal(L)(W)$ such that $E y=T x$.
    - Note that if $S x_1 = S x_2 = y$, then $S x_1 - S x_2 = 0$, so $S(x_1-x_2)=0$ and $x_1-x_2 in ker S$. By $ker S subset.eq ker T$, $x_1-x_2 in ker T$ and therefore $T(x_1-x_2) = 0$, implying that $T x_1 = T x_2$.
    - $E$ satisfies linear properties, since:
      - $E$ is additive: For $x_1,x_2 in V$, $E (S x_1 + S x_2) = E S (x_1+x_2) = T (x_1 + x_2) = T x_1 + T x_2 = E S x_1 + E S x_2$.
      - $E$ is closed under scalar multiplication: Let $lambda in FF$ and $x in V$. It follows that $lambda E ( S x) = lambda T x = T (lambda x) = E(lambda S x)$.
    - Lastly, let $y_1,dots,y_n$ be a basis of $im S$ and extend it to the basis of $W$: $y_1,dots,y_n, w_1, dots, w_m$. Now, extend $E$ to a linear map on $cal(L)(W)$ by declaring that for every $i in {1,dots,m}, E w_i = 0$.
    - Therefore, we have shown that such $E in cal(W)$ for which $T = E S$ exists.
]

#exercise[
  Suppose that $V$ is finite-dimensional and $S,T in cal(L)(V,W)$. Prove that $im S subset.eq im T$ if and only if there exists $E in cal(L)(V)$ such that $S = T E$.
]

#proof[
  1. Suppose that there exists $E in cal(L)(V)$ such that $S = T E$. Let $y in im S$ and let $y = S v$. We shall observe that $y = S v = T(E v)$, hence $y=T(E v)$, implying that $y in im T$. Therefore, $im S subset.eq im T$.
  2. Suppose $im S subset.eq im T$.
    - Take a basis of $V$: $v_1,dots,v_n$.
    - Since $im S subset.eq im T$, then for every $v_i in V$, $S v_i = T u_i$ for some $u_i in V$.
    - Define $E in cal(L)(V)$ such that $E v_i = u_i$.
    - Notice that $T E (v) = T E (a_1 v_1 + dots + a_n v_n) = T (a_1 E v_1 + dots + a_n E v_n) = a_1 T u_1 + dots + a_n T u_n = a_1 S v_1 + dots + a_n S v_n = S v$, thus $E$ satisfies the given condition.
    - Therefore, there exists such $E in cal(L)(V)$ for which $S = T E$.
]

#exercise[Suppose $P in cal(L)(V)$ and $P^2 = P$. Prove that $V = ker P plus.o im P$.]

#proof[
  Suppose $P^2 = P$. Take $y in im P$ and notice that $y = P x$ for some $x in V$. From this we can derive that $P (P x) = P x$, thus $P y = P x = y$.

  Take a basis of $im P$: $y_1,dots,y_m$ and extend it to a basis of $V$: $y_1,dots,y_m,v_1,dots,v_n$. Since $ker P subset.eq V$ and by *Rank-nullity theorem*, $dim ker P + dim im P = dim V$, then $dim ker P = n$ and thus $v_1,dots,v_n$ is without a doubt a basis of $ker P$. To see this more clearly, suppose $v_i in.not ker P$, which implies that $dim ker P <n$. Since $im P = m$ and $dim V = m+n$, then $dim ker P + dim im P < dim V$, so it contradicts with *Rank-nullity theorem*. Therefore, we can establish that $V = ker P + im P$.

  Lastly, we have shown that for every $y in im P$, $P y = y$. Take $v in ker P inter im P$. Now, $v in im P$ yields $P v = v$ while $v in ker P$ implies that $P v = 0$, thus $v = 0$. Therefore, $ker P inter im P = {0}$ and finally $V = ker P plus.o im P$.
]

#exercise[
  Suppose $D in cal(L)(cal(P)(RR))$ is such that $deg D p = (deg p) -1$ for every non-constant polynomial $p in cal(P)(RR)$. Prove that $D$ is surjective.
]

#proof[
  Linear map is surjective if and only if $im D = cal(P)(RR)$. Establish that for each $n in NN$, $cal(P)_n (RR) subset cal(P)(RR)$. Since $D in cal(L)(cal(P)(RR))$, then we can conclude that $im D subset.eq cal(P)(RR)$.

  Define $P(k): {1,x,x^2,dots,x^(k-1)} subset im D$.
  1. *Base step $k=1$*: Since $deg D x = (deg x) - 1 = 1-1 = 0$, then $D(x) = a in RR without {0}$. Thus $D(1/a x)=1 in im D$. Therefore ${1} subset im D$. #v(0.2em)
  2. *Inductive step $k>=1$*: Suppose $P(k)$ and let $D(x^(k+1))=a_k x^k + dots + a_0$ where explicitly $a_k !=0$. Since for each $1<=i<=k-1$, $x^i = D(p_(i+1))$ for some $p_i in cal(P)(RR)$, then $D(x^(k+1)) = a_k x^k + a_(k-1) D(p_k) + dots + a_0 D(p_1)$, thus $ x^k = D((x^(k+1)-a_(k-1) p_k+dots-a_0 p_1)/a_k) $ Hence, $x^k in im D$ and thus $P(k+1)$ holds.

  From this we can derive that $span({1,x,dots,x^n,dots}) subset.eq im D$, hence $cal(P)(RR) subset.eq im D$.

  Finally, by $cal(P)(RR) subset.eq im D$ and $im D subset.eq cal(P)(RR)$, we can conclude that $cal(P)(RR) = im D$ and hence $D$ is surjective onto $cal(P)(RR)$.
]

#exercise[Suppose $p in cal(P)(RR)$. Prove that there exists a polynomial $q in cal(P)(RR)$ such that $5 q'' + 3 q' = p$.]

#proof[
  Suppose $T$ such that $T = 5D^2 + 3D$ for every $p in cal(P)(RR)$. We can show that $T$ is a linear map, since:
  - *$T$ is additive*: For $p_1,p_2 in cal(P) (RR)$, $T(p_1+p_2) = 5D^2(p_1+p_2) + 3D(p_1+p_2) = 5D^2(p_1) + 5 D^2 (p_2) + 3D p_1 + 3D p_2 = T p_1 + T p_2$
  - *$T$ is homogeneous*: For $p in cal(P)(RR)$ and $lambda in RR$, $T (lambda p) = 5D^2 (lambda p) + 3D (lambda p) = 5 lambda D^2 p + 3 lambda D p = lambda T p$.

  Hence, $T in cal(L)(cal(P)(RR))$. We shall now show that $T$ is surjective.

  Define $P(k): {1,x,x^2,dots,x^(k-1)} subset im T$.
  1. *Base step ($k=1$):* $T(1/3 x) = 5D^2 1/3 x + 3D 1/3 x = 0 + 1 = 1 in im T$, hence ${1} subset im T$.
  2. *Inductive step ($k>=1$):* Suppose $P(k)$. Notice that $ T(x^(k+1)) = 5 D^2 (x^(k+1)) + 3 D(x^(k+1)) = 5(k+1)k x^(k-1) + 3 (k+1) x^k $ By inductive hypothesis, $x^(k-1) = T(p)$ for some $p in cal(P)(RR)$. Therefore $  T(x^(k+1)) & = 5(k+1) k T (p) + 3 (k+1) x^k \
     T(x^(k+1)) & = T(5(k+1)k p) + 3 (k+1) x^k \
    3 (k+1) x^k & = T(x^(k+1) - 5(k+1) k p) \
            x^k & = T((x^(k+1)-5(k+1)k p)/(3 (k+1))) $ Thus, $x^k in im T$ and $P(k+1)$ holds.

  We have shown that $span({1,x,dots,x^n,dots}) subset.eq im T$, thus $cal(P)(RR) subset.eq im T$. Furthermore, since $T in cal(L)(cal(P)(RR))$, then $im T subset.eq cal(P)(RR)$, hence $im T = cal(P)(RR)$. To conclude, $T$ is surjective and hence there is such $q$ for which $T q = p$ and thus $5 q'' + 3 q' = p$.
]

#exercise[Suppose $phi in cal(L)(V,FF)$ and $phi !=0$. Suppose $u in V$ is not in $ker phi$. Prove that
  $
    V = ker phi plus.o {a u: a in FF}"."
  $
]

#proof[
  It is well-known fact that $im phi subset.eq FF$ implies that $dim im phi <= dim im FF = 1$. Let $x_1,dots,x_n$ be a basis of $ker phi$. By *Rank-nullity theorem*, $dim V = dim ker phi + dim im phi$, so $dim V - n <= 1$. Since there exists such $u in V$ which does not belong to $ker phi$, then obviously, $1 <=dim V - n <=1$, hence $dim V - n =1$. Therefore, we shall extend $x_1,dots,x_n$ to a basis of $V$ by appending $u$.

  To clarify, since $ker phi$ is closed under addition, then $u$ which does not belong to $ker phi$ is trivially linearly independent. Therefore, $V = ker phi + {a u: a in FF}$.

  Lastly, suppose $v in ker phi inter {a u: a in FF}$. Since by definition $u in.not ker phi$, then for every $a in FF without {0}$, $a u in.not ker phi$. Thus, $ker phi inter {a u: a in FF} = {0}$.

  To conclude, $V = ker phi plus.o {a u: a in FF}$.
]

#exercise[Suppose $V$ is finite-dimensional, $X$ is a subspace of $V$, and $Y$ is a finite-dimensional subspace of $W$. Prove that there exists $T in cal(L)(V,W)$ such that $ker T = X$ and $im T = Y$ if and only if $dim X + dim Y = dim V$.]

#proof[
  1. Suppose that there exists $T in cal(L)(V,W)$ such that $ker T = X$ and $im T = Y$. By *Rank-nullity theorem*, $dim ker T + dim im T = dim V$, hence $dim X + dim Y = dim V$.
  2. Suppose $dim X + dim Y = dim V$. Let $x_1,dots,x_n$ be a basis of $X$ and $y_1,dots,y_m$ a basis of $Y$. Therefore, $dim V = m+n$. #v(0.1em) We can extend a basis of $X$ by appending $m$-dimensional list: $x_1,dots,x_n,v_1,dots,v_m$. Define $T in cal(L)(V,W)$ such that $ T x_i & = 0 quad "for every" i in {1,dots,n} \
    T v_j & = y_j quad "for every" j in {1,dots,m} $ As a consequence, since every $x_i in ker T$, then ${x_1,dots,x_n} subset.eq ker T$, hence $span(x_1, dots, x_n) subset.eq ker T$ and $X subset.eq ker T$. Analogously, every $y_j in im T$ implies that $Y subset.eq im T$. #v(0.1em) It follows that $ dim ker T + dim im T = dim X + dim Y $ By $X subset.eq ker T$, $dim X <= dim ker T$, so $ dim ker T + dim im T - dim Y & = dim X <= dim ker T \
    dim ker T + dim im T - dim Y & <= dim ker T \
                dim im T - dim Y & <= 0 $ Hence $dim im T <= dim Y$, so $dim im T = dim Y$ and hence $im T = Y$. Consequently, $dim ker T = dim X$ and $ker T = X$. Therefore, such $T in cal(L)(V,W)$ exists.
]

#exercise[
  Suppose $V$ is finite-dimensional with $dim V >1$. Show that if $phi: cal(L)(V) -> FF$ is a linear map such that $phi (S T) = phi(S) phi (T)$ for all $S,T in cal(L)(V)$, then $phi = 0$.
]

#proof[
  Suppose that $S in ker phi$. We can easily show that $phi (S T) = phi(S) phi(T) = 0 phi(T) = 0$ and $phi (T S) = phi (T) phi (S) = 0$, hence both $S T, T S in ker phi$. Therefore,
  $ker phi$ is a two-sided ideal of $cal(L)(V)$. In the previous exercise, we have shown that two-sided ideals of $cal(L)(V)$ are only $cal(L)(V)$ and ${0}$.

  Let $ker phi = {0}$. Notice that multiplication is commutative on $FF$, hence $phi (S T) = phi(S) phi(T) = phi(T) phi(S) = phi (T S)$. Therefore, $phi(S T) = phi (T S) => phi(S T - T S) = 0$, yielding $S T - T S =0 $ and hence $S T = T S$. However, it is well-known fact that linear map product is not commutative, thus $ker phi$ cannot be equal ${0}$.

  The only remaining possibility is to assume that $ker phi = cal(L)(V)$. If so, then obviously $dim im phi = 0$, implying that $im phi = {0}$ and hence $phi = 0$.
]

#exercise[
  Suppose that $V$ and $W$ are real vector spaces and $T in cal(L)(V,W)$. Define $T_CC: V_CC -> W_CC$ by
  $
    T_CC (u+i v) = T u + i T v
  $
  for all $u,v in V$.
  1. Show that $T_CC$ is a (complex) linear map from $V_CC$ to $W_CC$.
  2. Show that $T_CC$ is injective if and only if $T$ is injective.
  3. Show that $im T_CC = W_CC$ if and only if $im T = W$.
]

#proof[
  We shall begin with showing linearity of $T_CC$.
  1. *Additivity:* Let $z_1,z_2 in V_CC$ such that $z_1 = u_1 + i v_1$ and $z_2 = u_2 + i v_2$, where $u_1,u_2,v_1,v_2 in V$. Now, $T_CC (z_1+z_2)=T_CC ((u_1+u_2)+i(v_1+v_2))=T(u_1+u_2)+i T(v_1+v_2)=(T u_1+ i T v_1) + (T u_2 + i T v_2) = T_CC (z_1) + T_CC (z_2)$. #v(0.5em)
  2. *Homogeneity:* Let $z in V_CC$ such that $z = u + i v$, where $u,v in V$. Suppose $lambda in CC$ such that $lambda = a+i b$ for some $a,b in FF$. It follows that $T_CC (lambda z) = T_CC ((a+i b)(u+ i v))=T_CC ((a u - b v) + i(a v + b u))=T (a u - b v) + i T (a v + b u)= a T u + i a T v - b T v + i b T u = a(T u + i T v) + i b(T u + i T v) = (a+i b) (T u + i T v) = (a + i b) T_CC (u + i v) = lambda T_CC (z)$.

  Now, we shall show that $T_CC$ is injective if and only if $T$ is injective.

  1. Suppose $T$ is injective, thus $ker T = {0}$. Suppose $z in ker T_CC$ such that $z= u+i v)$. We can easily show that $T_CC (z) = T_CC (u+i v) = 0 iff T u + i T v = 0 => T u = 0 and T v = 0$, thus $u = v = 0$, hence $z=0$ and $ker T_CC = {0}$. Consequently, $T_CC$ is injective.
  2. Suppose $T_CC$ is injective, so $ker T_CC = {0}$. Take $v in ker T$. Since $T(v+i v) = T v + i T v = 0$, then $v+i v= 0$ and hence $v=0$, which implies that $ker T = {0}$.

  Lastly, we shall show that $im T_CC = W_CC$ if and only if $im T = W$.

  1. Suppose $im T = W$. Let $w in W_CC$, so $w = w_1 + i w_2$ for some $w_1, w_2 in W$. Since $im T = W$, there exist $u, v in V$ such that $T u = w_1$ and $T v = w_2$. Thus, $T_CC (u + i v) = T u + i T v = w_1 + i w_2 = w$. Hence, $im T_CC = W_CC$.
  2. Suppose $im T_CC = W_CC$. Let $w in W$. Since $W subset.eq W_CC$, we have $w in im T_CC$. Therefore, there exist $u, v in V$ such that $T_CC (u + i v) = w$, which means:
     $ T u + i T v = w + i 0 $
     Equating the real parts yields $T u = w$. Thus, for every $w in W$, there exists $u in V$ such that $T u = w$, which implies $im T = W$.
]
