#import "/templates/preamble.typ": *

= Finite-Dimensional Vector Spaces

#exercise[Find a list of four distinct vectors in $FF^3$ whose span equals
  $
    {(x,y,z) in FF^3: x + y + z = 0}"."
  $
]

#solution[
  1. $v_1=(-1,-1,2)$
  2. $v_2=(-1,2,-1)$
  3. $v_3=(2,-1,-1)$
  4. $v_4=(1,2,-3)$
]

#exercise[Prove or give a counterexample: If $v_1,v_2,v_3,v_4$ spans $V$, then the list
  $
    v_1-v_2,v_2-v_3,v_3-v_4,v_4
  $
  also spans $V$.
]

#proof[Let $v in op("span")(v_1,v_2,v_3,v_4)$. Consequently $v=a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4$. Choose following coefficients:
  - $b_1 = a_1$,
  - $b_2 = a_1+a_2$,
  - $b_3 = a_1+a_2+a_3$,
  - $b_4 = a_1+a_2+a_3+a_4$.
  We can derive from this that
  - $a_1 = b_1$,
  - $a_2 = b_2-b_1$,
  - $a_3 = b_3-b_2$,
  - $a_4 = b_4-b_3$.
  Hence, $v = b_1 v_1 + (b_2-b_1) v_2 + (b_3-b_2) v_3 + (b_4-b_3) v_4$, and $v=b_1(v_1-v_2)+b_2(v_2-v_3)+b_3(v_3-v_4)+b_4 v_4$. Therefore, $v in op("span")(v_1-v_2,v_2-v_3,v_3-v_4,v_4)$.
]

#exercise[
  Suppose $v_1, dots, v_m$ is a list of vectors in $V$. For $k in {1, dots m}$, let $ omega_k = v_1 + dots + v_k"." $ Show that $op("span")(v_1,dots,v_m)=op("span")(omega_1,dots,omega_m)$
] <ex-2a-2>


#proof[
  Let $v in op("span")(v_1,dots, v_m)$. Notice that $v_k = omega_k - omega_(k-1)$, so if $v = a_1 v_1 + dots + a_m v_m$, then $v = a_1 omega_1 + dots + a_m (omega_m - omega_(m-1))$, so $ v= (a_1-a_2) omega_1 + (a_2-a_3) omega_2 + dots + (a_(m-1)-a_m) omega_(m-1) + a_m omega_m"." $ Since $(a_1-a_2),(a_2-a_3),dots,(a_(m-1)-a_m),a_m in FF$, then $v in op("span")(omega_1,omega_2,dots,omega_m)$.
]

#exercise[
  1. Show that a list of length one in a vector space is linearly independent if and only if the vectors in the list is not $0$.
  2. Show that a list of length two in a vector space is linearly independent if and only if neither of the two vectors in the list is a scalar multiple of the other.
]

#proof[
  1. Let $A={v_1}$.
    - Suppose $A$ is linearly independent. If so, then $a v_1 = 0 iff a=0$. This means that $v!=0$.
    - Suppose $v_1!=0$. This means that $a v_1 =0$ if and only if $a=0$, which implies that $A$ is linearly independent.
    Hence $A$ is linearly independent if and only if $v_1!=0$.
  2. Let $B={v_1,v_2}$.
    - Assume that $v_2$ is a scalar multiple of $v_1$, so that $v_2= lambda v_1$ for some $lambda in FF$. Consequently, $v_2 - lambda v_1 = 0$, thus $B$ is linearly dependent.
    - Suppose $B$ is linearly dependent, so exists $a_2,a_1$ for which $v_2 = - a_1/a_2 v_1$, hence $v_2$ is a scalar multiple of $v_1$.
    Therefore, $B$ is linearly independent if and only if there does not exists $lambda in FF$ for which $v_2 = lambda v_1$.
]

#exercise[
  Find a number $t$ such that
  $
    (3,1,4),(2,-3,5),(5,9,t)
  $
  is not linearly independent in $RR^3$.
]

#solution[
  $
    a_1(3,1,4) + a_2 (2,-3,5) = (3 a_1 + 2 a_2, a_1-3 a_2 ,4 a_1+5a_2)
  $
  We shall find $t$ which solves a system of equations
  $
    & cases(3 a_1 + 2 a_2 &= 5, a_1 - 3 a_2 &= 9, 4a_1+5 a_2&=t) \
    & cases(a_1&=3, a_2&=-2, t&=2)
  $

  Thus, $t=2$.
]

#exercise[Show that the list $(2,3,1),(1,-1,2),(7,3,c)$ is linearly dependent in $FF^3$ if and only if $c=8$.]

#proof[
  1. Let $c=8$. Since $2(2,3,1)+3(1,-1,2)=(7,3,8)$, then the list is linearly dependent.

  2. Let the list be linearly dependent. Since there does not exist such $lambda in FF$ for which $(2,3,1)=lambda (1,-1,2)$, so there must be such $a,b in FF$ for which $a(2,3,1)+b(1,-1,2)=(7,3,c)$. This leads us to the following system of equations $ & cases(2 a + b &= 7, 3a - b &= 3, a+2b&=c) \
    & cases(a &= 2, b&=3, c&= 8) $
    Hence, $c=8$

  Therefore the list is linearly dependent if and only if $c=8$.
]

#exercise[
  1. Show that if we think of $CC$ as a vector space over $RR$, then the list $1+i, 1-i$ is linearly independent
  2. Show that if we think of $CC$ as a vector space over $CC$, then the list $1+i,1-i$ is linearly dependent.
]

#proof[
  1. Notice that there is no such $a in RR$ for which $a(1-i)=1+i$, hence ${1+i,1-i}$ is linearly independent if $CC$ is a vector space over $RR$.
  2. However, observe that if $a in CC$, then for $a=i$, $a(1-i)=i(1-i)=i+1=1+i$. Therefore ${1+i,1-i}$ is linearly dependent if $CC$ is a vector space over $CC$.
]

#exercise[Suppose $v_1,v_2,v_3,v_4$ is linearly independent in $V$. Prove that the list $ v_1-v_2,v_2-v_3,v_3-v_4,v_4 $ is also linearly independent.]

#proof[
  Suppose ${v_1-v_2,v_2-v_3,v_3-v_4,v_4}$ is linearly dependent, hence $a(v_1-v_2)+b(v_2-v_3)+c(v_3-v_4)+d v_4 = 0$ for $a,b,c,d in FF$ where at least one is non-zero. Therefore, $a v_1 + (b-a) v_2 + (c-b) v_3 + (d-c)v_4=0$, which leads us to the conclusion that ${v_1,v_2,v_3,v_4}$ is linearly dependent as well.

  By contraposition, if $v_1,v_2,v_3,v_4$ is linearly independent in $V$, then $v_1-v_2,v_2-v_3,v_3-v_4,v_4$ is also linearly independent.
]

#exercise[Prove or give counterexample: If $v_1,v_2,dots,v_m$ is a linearly independent list of vectors in $V$, then
  $ 5v_1-4v_2,v_2,v_3,dots,v_m $ is linearly independent.
]

#proof[
  Suppose ${5v_1-4v_2,v_2,v_3,dots,v_m}$ is linearly dependnent. Let $a_1 (5v_1-4v_2) + a_2 v_2 + dots + a_m v_m=0$ for $a_1, a_2, dots, a_m in FF$ among which at least one element is non-zero.

  We can derive that $(5 a_1) v_1 + (a_2-4 a_1)v_2 + dots + a_m v_m =0$, hence ${v_1,v_2,dots,v_m}$ is linearly dependent as well.

  Thus, by contraposition, if ${v_1,v_2,dots,v_m}$ is linearly independent, then ${5v_1-4v_2,v_2,v_3,dots_v_m}$ is linearly independent as well.
]

#exercise[Prove or give a counterexample: If $v_1,v_2,dots,v_m$ is a linearly independent list of vectors in $V$ and $lambda in FF$ with $lambda !=0$, then $lambda v_1, lambda v_2, dots, lambda v_m$ is linearly independent.]

#proof[
  Suppose $v_1,v_2,dots,v_m$ is linearly independent, and $b_1 lambda v_1 + b_2 lambda v_2 + dots + b_m lambda v_m=0$. Establish that $forall k in {1,2,dots,m}, thick a_k = b_k lambda$, which by definition equals $0$ for every $k$. Since $lambda!=0$, then it holds that $forall k in {1,2,dots,m}, thick b_k = 0$, which yields that $lambda v_1, lambda v_2, dots, lambda v_m$ is linearly independent.
]

#exercise[Prove or give a counterexample: If $v_1,dots,v_m$ and $omega_1, dots, omega_m$ are linearly independent lists of vectors in $V$, then the list $v_1+omega_1, dots, v_m + omega_m$ is linearly independent.]

#solution[
  This statement is false.

  Suppose lists ${(1,0),(0,1)}$ and ${(-1,0),(0,-1)$. Notice that ${(1,0)+(-1,0),(0,1)+(0,-1)} = {(0,0), (0,0)}$ which is trivially linearly dependent.
]

#exercise[Suppose $v_1, dots, v_m$ is linearly independent in $V$ and $omega in V$. Prove that if $v_1+omega,dots+v_m+omega$ is linearly dependent, then $omega in op("span")(v_1,dots,v_m)$.] <ex-2a-12>

#proof[
  Let $v_1+omega, dots, v_m + omega$ be linearly dependent, so $a_1(v_1+omega)+a_2(v_2+omega) + dots + a_m (v_m + omega) = 0$ for at least one non-zero element $a_1,a_2,dots, a_m$. Notice that $a_1 v_1 + a_2 v_2 +dots + a_m v_m + omega (a_1+a_2+dots+a_m)=0$, so $a_1 v_1 + a_2 v_2 + dots + a_m v_m = - omega sum^m_(i=1) a_i$. Since, $sum^m_(i=1) a_i !=0$, then $a_1 / (-sum^m_(i=1) a_i) v_1 + dots + a_m / (-sum^m_(i=1) a_i) v_m = omega$. To conclude, $omega in op("span")(v_1,dots,v_m)$.
]

#exercise[Suppose $v_1, dots, v_m$ is linearly independent in $V$ and $omega in V$. Show that
  $
    v_1, dots,v_m,omega "is linearly independent" iff omega in.not op("span")(v_1,dots,v_m)
  $
] <ex-2a-14>

#proof[
  1. Suppose $omega in op("span")(v_1,dots,v_m,)$. This means that $a_1 v_1 + dots + a_m v_m = omega$, so $a_1 v_1 + dots + a_m v_m - omega = 0$, which implies that $v_1,dots,v_m,omega$ is linearly dependent.
  2. Assume that $v_1,dots,v_m,omega$ is linearly dependent and without loss of generality, $a_(m+1) !=0$. Since $a_1 v_1 + dots + a_m v_m + a_(m+1) omega = 0$, then $a_1/(-a_(m+1)) v_1 + dots + a_m/(-a_(m+1)) v_m = omega$, so $omega in op("span")(v_1,dots,v_m)$.

  By contraposition, $v_1, dots, v_m, omega$ is linearly independent if and only if $omega in.not op("span")(v_1,dots,v_m)$.
]

#exercise[Suppose $v_1,dots,v_m$ is a list of vectors in $V$. For $k in {1,dots,m}$, let
  $
    omega_k = v_1 + dots + v_k"."
  $
  Show that thes list $v_1,dots,v_m$ is linearly independent if and only if the list $omega_1,dots,omega_m$ is linearly independent.
]

#proof[
  1. Let $v_1,v_2,dots,v_m$ be linearly independent, and $b_1 omega_1 + b_2 omega_2 + dots + b_m omega_m = 0$. Notice that $b_1 v_1 + b_2 (v_1+v_2) + dots + b_m sum^m_(i=1) v_i=0$, hence $v_1 (b_1 + b_2 + dots + b_m) + v_2(b_2+b_3+dots+b_m) + dots + v_m b_m=0$, since $b_m=(b_(m-1)+b_m)=dots=sum^m_(i=1) b_1 =0$, then $b_1=b_2=dots=b_m=0$, thus $omega_1,omega_2,dots,omega_m$ is linearly independent.

  2. Suppose $omega_1,omega_2,dots, omega_m$ is linearly independent, and $a_1 v_1 + a_2 v_2 + dots + a_m v_m = 0$. Observe that $omega_k - omega_(k-1) = v_k$, so $a_1 omega_1 + a_2 (omega_2-omega_1) + dots + a_m (omega_m - omega_(m-1)) =0$, and consequently $omega_1 (a_1-a_2) + omega_2(a_2-a_3)+dots+omega_m a_m = 0$. Since $omega_1, dots, omega_m$ are linearly independent, their coefficients must be zero:
    $           a_m & = 0, \
    a_(m-1) - a_m & = 0 => a_(m-1) = 0, \
                  & dots.v \
        a_1 - a_2 & = 0 => a_1 = 0. $ Therefore, $a_m,a_(m-1),dots,a_2,a_1=0$, hence $v_1,v_2,dots,v_m$ are linearly independent.
]

#exercise[Explain why there does not exist a list of six polynomials that is linearly independent in $cal(P)_4(FF)$.]

#solution[
  Each polynomial of degree $4$ has five coefficients: $a_1 + a_2 z + a_3 z^2 + a_4 z^3 + a_5 z^4$, hence we can represent each polynomial of degree $4$ as vector in $FF^5$, such that $(a_1,a_2,a_3,a_4,a_5) in FF^5$. It is well-known fact that length of linearly independent list is less than or equal to the length of every spanning list of vectors, hence there does not exist a list of six polynomials that is linearly independent in $cal(P)_4(FF)$.
]

#exercise[Explain why no list of four polynomials spans $cal(P)_4(FF)$.]

#solution[We have shown that each polynomial of degree $4$ can be represented as a vector of its coefficients: $(a_1,a_2,a_3,a_4,a_5) in FF^5$. Clearly, no list of four vectors is able to span $FF^5$, hence no list of four polynomials spans $cal(P)_4(FF)$.]

#exercise[Prove that $V$ is infinite-dimensional if and only if there is a sequence $v_1,v_2,dots$ of vectors in $V$ such that $v_1, dots, v_m$ is linearly independent for every postive integer $m$.]

#proof[
  1. Suppose $V$ is finite-dimensional, so that $V=FF^n$, where $n in NN$ and $v_1,dots,v_m$ is linearly independent for every positive integer $m$. If so, then $v_1,dots,v_m$ is linearly independent for $m>n$, while it is well-known fact that lenght of linearly independenent list cannot be greater than length of every spanning list of vectors. Therefore, $V$ cannot be finite-dimensional.

  2. Let $V$ be infinite-dimensional and let $P(k)$ be a statement: "there exists a linearly independent list $v_1,dots,v_k$ in $V$". We prove by induction that $P(k)$ holds for every positive integer $k$:
    1. *Base step ($k=1$)* --- Notice that every non-zero $v_1 in V$ compose a linearly independent list.
    2. *Inductive step ($k>=1$)* --- Suppose $P(k)$. Since $v_1,dots,v_k$ does not span $V$, then clearly there is such $v_(k+1) in V$ and  $v in.not op("span")(v_1,dots,v_k)$. If so, then $v_1, dots, v_k, v_(k+1)$ is linearly independent as well and $P(k+1)$ holds.
]

#exercise[
  Prove that $FF^infinity$ is infinite-dimensional.
]

#proof[
  To show that $FF^infinity$ is infinite-dimensional, suppose for the sake of contradiction that it is finite-dimensional, say of dimension $n$.

  For any positive integer $m$, consider the list of vectors $e_1, e_2, dots, e_m$ in $FF^infinity$, where for each $k in {1, dots, m}$, $e_k$ is the sequence with $1$ at the $k$-th position and $0$ everywhere else:
  $ e_k = (0, dots, 0, underbrace(1, k-"th position"), 0, dots) $

  It is straightforward to verify that this list is linearly independent for any $m$.

  Since $m$ can be chosen to be an arbitrarily large natural number (in particular, we can choose $m = n + 1$), this implies the existence of a linearly independent list of length $n+1$ in a space of dimension $n$ --- a contradiction.

  Therefore, $FF^infinity$ cannot be finite-dimensional, meaning it is infinite-dimensional.
]

#exercise[Prove that the real vector space of all continous real-valued functions on the interval $[0,1]$ is infinite-dimensional.]

#proof[
  For the sake of contradiction, we shall suppose that $RR^[0,1]$ is finite-dimensional of dimension $n$. Suppose a linearly independent list of functions $f_1,f_2,dots,f_m$, where each $f_1,f_2,dots,f_m in RR^[0,1]$ is defined as followed $f_k = x^k$ for $k in NN$.

  Since $m$ can be chosen to be an arbitrarily large natural number (in particular, we can choose $m=n+1$), this implies the existence of a linearly independent list of length $n+1$ in space of dimension $n$ --- a contradiction.

  Thus, $RR^[0,1]$ cannot be finite-dimensional, leading us to the conclusion that it is infinite-dimensional.
]

#exercise[Suppose $p_0, p_1, dots, p_m$ are polynomials in $cal(P)_m (FF)$ such that $p_k (2)=0$ for each $k in {0,dots,m}$. Prove that $p_0,p_1,dots,p_m$ is not linearly independent in $cal(P)_m (FF)$.]

#proof[
  Since $p_k (2) = 0$ for each $k in {0, dots, m}$, by the factor theorem, we can write each polynomial as
  $p_k (x) = (x - 2)q_k (x)$
  for some quotient polynomial $q_k in cal(P)_(m-1)(FF)$.

  Note that the list $q_0, q_1, dots, q_m$ consists of $m+1$ polynomials, and they all reside in the vector space $cal(P)_(m-1) (FF)$, which has dimension $m$.

  Since the length of the list ($m+1$) exceeds the dimension of the space ($m$), the list $q_0, q_1, dots, q_m$ must be linearly dependent.

  Therefore, there exist scalars $a_0, a_1, dots, a_m$, not all zero, such that:
  $ a_0 q_0 + a_1 q_1 + dots + a_m q_m = 0 $

  Multiplying both sides by $(x - 2)$, we obtain:
  $ a_0 (x-2)q_0 + a_1 (x-2)q_1 + dots + a_m (x-2)q_m = 0 $
  $ a_0 p_0 + a_1 p_1 + dots + a_m p_m = 0 $

  Since we found scalars, not all zero, that satisfy this combination, the list of polynomials $p_0, p_1, dots, p_m$ is linearly dependent.
]

== Bases

#exercise[Find all vector spaces that have exactly one basis.]

#solution[
  The only vector space that has exactly one basis is trivial vector space ${0}$ with basis $emptyset$.
]

#exercise[Verify all assertions:
  1. The list $(1,0,dots,0),(0,1,0,dots,0),(0,dots,0,1)$ is a basis of $FF^n$, caled the _standard basis_ of $FF^n$.
  2. The list $(1,2),(3,5)$ is a basis of $FF^2$.
  3. The list $(1,2,-4),(7,-5,6)$ is linearly independent in $FF^3$ but is not a basis of $FF^3$ because it does not span $FF^3$.
  4. The list $(1,2),(3,5),(4,13)$ spans $FF^2$ but is not a basis of $FF^2$ because it is not linearly independent.
  5. The list $(1,1,0),(0,0,1)$ is a basis of ${(x,x,y) in FF^3: x,y in FF}$.
  6. The list $(1,-1,0),(1,0,-1)$ is a basis of ${(x,y,z) in FF^3: x+y+z=0}$.
  7. The list $1,z,dots,z^m$ is a basis of $cal(P)_m (FF)$, called the _standard basis_ of $cal(P)_m (FF)$.

]

#proof[
  1. Linear combination $a_1 (1,0,dots,0)+ a_2 (0,1,0,dots,0)+ dots + a_n (0,dots,0,1) = (a_1,a_2,dots,a_n)$ which naturally spans $FF^n$ and is trivially linearly independent, hence it is a basis of $FF^n$.

  2. The list $(1,2),(3,5)$ is linearly independent, since $3(1,2)=(3,6)!=(3,5)$ and it spans $FF^2$, because $a_1(1,2)+a_2(3,5)=(a_1+3a_2,2a_1+5a_2)$, and by substitution $x=a_1+3a_2,y=2a_1+5a_2$, it equals $(x,y)$.

  3. The list $(1,2,-4),(7,-5,6)$ is linearly independent, since $7(1,2,-4)=(7,14,-28) != (7,-5,6)$, but it consists only of two elements, hence it cannot span $FF^3$.

  4. The list $(1,2),(3,5),(4,13)$ is not linearly independent, since $19(1,2)-5(3,5)=(4,13)$. Nonetheless, it spans $FF^2$ since $(x+3y+5z,2x+5y+13z) in FF^2$.

  5. The list $(1,1,0),(0,0,1)$ naturally spans ${(x,x,y) in FF^3: x,y in FF}$ and since $(x,x,y)=(0,0,0)$ if and only if $x=y=0$, then it is also linearly independent, hence the basis of ${(x,x,y) in FF^3: x,y in FF}$.

  6. Linear combination of $(1,-1,0),(1,0,-1)$ equals $(a_1+a_2,-a_1,-a_2)$. Suppose $x = a_1+a_2$, $y=-a_1, z = -a_2$. If so, then $x+y+z=a_1+a_2-a_1-a_2=0$ and $(1,-,0),(1,0,-1)$ spans ${(x,y,z) in FF^3: x+y+z=0}$. Furthermore, notice that $(a_1+a_2,-a_1,-a_2)=(0,0,0)$ if and only if $a_1=a_2=0$, so $(1,-1,0),(1,0,-1)$ are linearly independent.

  7. Clearly, linear combination of $1,z,dots,z^m$ is a polynomial of degree lower or equal $m$. This means that $1,z,dots,z^m$ spans $cal(P)_m (FF)$. Moreover, for every $z in RR$, $a_0+a_1 z +a_2 z^2 + dots + a_m z^m = 0$ if and only if $a_0=a_1=a_2=dots=a_m=0$, hence list $1,z,dots,z^m$ is linearly independent.
]

#exercise[
  1. Let $cal(U)$ be the subspace of $RR^5$ defined by $ cal(U) & ={(x_1,x_2,x_3,x_4,x_5) in RR^5: x_1=3 x_2 thick "and" thick x_3 =7x_4 } $ Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $RR^5$.
  3. Find a subspace $cal(W)$ of $RR^5$ such that $RR^5 = cal(U) plus.o cal(W)$.
]

#solution[
  1. Choose vectors $(3,1,0,0,0),(0,0,7,1,0),(0,0,0,0,1)$. Their linear combination equals $(3x,x,7y,y,z)$, which implies that vectors are linearly independent, since $(3x,x,7y,y,z)=(0,0,0,0,0)$ if and only if $x=y=z=0$, and they span $cal(U)$.

  2. Beside vectors already choosen, we shall select $(1,0,0,0,0)$ and $(0,0,1,0,0)$. Linear combination of the new basis equals $(alpha+3x,x,7y+beta,y,z)$. It is easy to show that $(alpha+3x,x+7y+beta,y,z)=(0,0,0,0,0)$ if and only if $alpha=beta=x=y=z=0$, meaning that list of vectors is linearly independent. Furthermore, by substituting $a_1=alpha+3x, a_2=x,a_3=7y+beta,a_4=y,a_5=z$, we show that $(a_1,a_2,a_3,a_4,a_5)$ spans $RR^5$ and so do selected list of vectors.

  3. Let $cal(W) = op("span")((1,0,0,0,0),(0,0,1,0,0))$. To find intersection $cal(U) inter cal(W)$, we shall find solutions to $(3x,x,7y,y,z)=(a,0,b,0,0)$. Note that $x=y=z=0$, which implies that $a=b=0$ as well. Thus, $cal(U) inter cal(W) = {0}$. We know that $cal(U)+cal(W)=RR^5$ as we proved that vectors of $cal(W)$ extend the basis to $RR^5$ in the previous exercise. Hence, $cal(U) plus.o cal(W) = RR^5$.
]

#exercise[
  1. Let $cal(U)$ be the subspace of $CC^5$ defined by $ cal(U) & = {(z_1,z_2,z_3,z_4,z_5) in CC^5: 6z_1=z_2 thick "and" thick z_3+2z_4+3z_5 = 0 }"." $ Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $CC^5$.
  3. Find a subspace $cal(W)$ of $CC^5$ such that $CC^5=cal(U) plus.o cal(W)$.
]

#solution[
  1. Select a list of vectors ${(1,6,0,0,0),(0,0,-2,1,0),(0,0,-3,0,1)}$, which linear combination is $(z_1,6z_1,-2z_2-3z_3,z_2,z_3)$. It is easy to show that $(z_1,6z_1,-2z_2-3z_3,z_2,z_3)=0$ if and only if $z_1=z_2=z_3=0$, so the list is linearly independent. Furthermore, since second entry is $6$ times first entry and $-2z_2-3z_3 +2z_2+3z_3 = 0$ holds, then this list of vectors spans $cal(U)$.
  2. Select two other vectors $(0,1,0,0,0)$ and $(0,0,1,0,0)$. Now, linear combination equals $(z_1,6z_1+z_2,z_3-2z_4-3z_5,z_4,z_5)$ which spans to $CC^5$, and $(z_1,6z_1+z_2,z_3-2z_4-3z_5,z_4,z_5)=0$ if and only if $z_1=z_2=z_3=z_4=z_5=0$, so extended list is still linearly independent.
  3. We have shown that for $cal(W)=op("span")((0,1,0,0,0),(0,0,1,0,0))$, $cal(U)+cal(W)=CC^5$. Notice that their intersection is determined by the equation $(z_1,6z_1,-2z_2-3z_3,z_2,z_3)=(0,a_1,a_2,0,0)$. Clearly, $z_1=z_2=z_3=0$ and so $a_1=a_2=0$. Thus, $cal(U) inter cal(W) = {0}$ and hence $cal(U) plus.o cal(W) = CC^5$.
]

#exercise[Suppose $V$ is finite-dimensional and $cal(U), cal(W)$ are subspaces of $V$ such that $V=cal(U)+cal(W)$. Prove that there exists a basis of $V$ consisting of vectors in $cal(U) union cal(W)$.]

#proof[
  We shall start by selecting a basis of $cal(U) inter cal(W)$: $u_1,u_2,dots,u_n$ for $n in NN$. Notice that we can extend this basis to both $cal(U)$ and $cal(W)$ such that $u_1,u_2,dots,u_n,omega_1,omega_2,dots,omega_k$ is a basis of $cal(U)$ and $u_1,u_2,dots,u_n,v_1,v_2,dots,v_l$ is a basis of $cal(W)$ for $k,l in NN$.

  Select a list of vectors $cal(U) union cal(W)$: $u_1,u_2,dots,u_n,omega_1,omega_2,dots,omega_k, v_1,v_2,dots,v_l$.
  - *Spanning*: Since $V=cal(U)+cal(W)$ then every $v in V$ can be represented as $u+w$ for $u in cal(U), w in cal(W)$. Since $u = a_1 u_1 + a_2 u_2 + dots + a_(n+k) omega_k$ and $w = b_1 u_1 = b_2 u_2 + dots + b_(n+l) v_l$, then $v = (a_1+b_1) u_1 + (a_2+b_2) u_2 + dots + a_(n+k) v_l + b_(n+l) v_l$.
  #v(0.1em)
  - *Linear independence*: Let $sum^n_(i=1) a_i u_i + sum^k_(j=1) b_j omega_j + sum^l_(m=1) c_m v_m=0$. Now, $ underbrace(sum^n_(i=1) a_i u_i + sum^k_(j=1) b_j omega_j, in thick cal(U)) = underbrace(-sum^l_(m=1) c_m v_m, in thick cal(W) thick without thick cal(U) thick union thick {0}) $ Which is satisfied only by $cal(W) inter (cal(W) without cal(U) union {0})={0}$, hence this list is linearly independent.
]

#exercise[Prove or give a counterexample: If $p_0,p_1,p_2,p_3$ is a list in $cal(P)_3(FF)$ such that none of the polynomials $p_0,p_1,p_2,p_3$ has degree $2$, then $p_0,p_1,p_2,p_3$ is not a basis of $cal(P)_3 (FF)$.]

#solution[
  This statement is false. Let $x^3, x^3+x^2, x, 1$ be a list in $cal(P)_3(FF)$ such that none polynomial has degree $2$. Notice that for any $a x^3 + b x^2 +c x +d in cal(P)_3 (FF)$ and the linear combination $a_1 x^3 + a_2 (x^3+x^2) + a_3 x + a_4$, $a_4=d, a_3=c, a_2=b$ and $a_1=a-b$, hence $x^3,x^3+x^2,x,1$ spans $cal(P)_3 (FF)$. Moreover, $(a_1+a_2)x^3+a_2x^2+a_3x+a_4=0 iff a_1=-a_2=a_3=a_4=0$, thus the list is linearly independent and therefore a basis of $cal(P)_3 (FF)$.
]

#exercise[Suppose $v_1,v_2,v_3,v_4$ is a basis of $V$. Prove that $v_1+v_2,v_2+v_3,v_3+v_4, v_4$ is also a basis of $V$.]

#proof[
  It follows that since $v=b_1 (v_1+v_2) + b_2(v_2+v_3)+b_3(v_3+v_4)+b_4 v_4$, then it can be represented as $v=(b_1+b_2) v_1 + (b_2+b_3) v_2 + (b_3+b_4) v_3 + b_4 v_4$.

  1. *Spanning:* Since $v_1,v_2,v_3,v_4$ spans $V$, then every $v in op("span")(v_1,v_2,v_3,v_4) iff v = a_1 v_1 + a_2 v_2 + a_3 v_3 + a_4 v_4$, then $v= (a_1-a_2+a_3-a_4)v_1 + (a_2-a_3+a_4) v_2 + (a_3-a_4) v_3 + a_4 v_4$, hence $v in op("span")(v_1+v_2,v_2+v_3,v_3+v_4,v_4)$.
  2. *Linear independence:* If $v_1,v_2,v_3,v_4$ is linearly independent, then $(b_1+b_2)v_1 +(b_2+v_3)v_2 + (b_3+b_4) v_3 + b_4 v_4 =0 iff b_1+b_2=b_2+b_3=b_3+b_4=b_4=0$, thus $b_1=b_2=b_3=b_4=0$. Vectors are linearly independent.
]

#exercise[Prove or give a counterexample: If $v_1,v_2,v_3,v_4$ is a basis of $V$ and $cal(U)$ is a subspace of $V$ such that $v_1,v_2 in cal(U)$ and $v_3 in.not cal(U)$ and $v_4 in.not cal(U)$, then $v_1,v_2$ is a basis of $cal(U)$. ]

#solution[
  Suppose $cal(U) = op("span")(v_1,v_2,v_3+v_4)$. If so, then $v_1,v_2$ does not span $cal(U)$, so it is not its basis.
]


#exercise[Suppose $v_1,dots,v_m$ is a list of vectors in $V$. For $k in {1,dots,m}$, let $ omega_k = v_1 + dots + v_k"." $ Show that $v_1,dots,v_m$ is a basis of $V$ if and only if $omega_1,dots,omega_m$ is a basis of $V$.]

#proof[
  We have shown that $v_1,dots,v_m$ is linearly independent if and only if $omega_1,dots,omega_m$ in @ex-2a-14 and $op("span")(v_1,dots,v_m)=op("span")(omega_1,dots,omega_m)=V$ in @ex-2a-2.

  Therefore, $v_1,dots,v_m$ is a basis of $V$ if and only if $omega_1, dots, omega_m$ is a basis of $V$.
]

#exercise[
  Suppose $cal(U)$ and $cal(W)$ are subspaces of $V$ such that $V=cal(U) plus.o cal(W)$. Suppose also that $u_1,dots,u_m$ is a basis of $cal(U)$ and $omega_1, dots,omega_n$ is basis of $cal(W)$. Prove that $ u_1,dots,u_m,omega_1,dots,omega_n $ is a basis of $V$.
]

#proof[
  List trivially $u_1,dots,u_m,omega_1,dots,omega_n$ spans $V$ and since $V = cal(U) plus.o cal(W)$, then $cal(U) inter cal(W) = {0}$. Notice that
  $ underbrace(sum^m_(i=1) a_i u_i, in thick cal(U)) & = underbrace(sum^n_(j=1) b_j omega_j, in thick cal(W)) $ is satisfied only for ${0}$, hence forall $i in {1,2,dots,m}$ and $j in {1,2,dots,n}$, $a_i=b_j=0$. Let $c_j = -b_j$ and rearrange the equation to
  $ sum^m_(i=1) a_i u_i + sum^n_(j=1) c_j omega_j = 0 $
  This implies that $u_1,dots,u_m,omega_1,dots,omega_n$ is linearly independent, hence it is a basis of $V$.
]

#exercise[Suppose $V$ is a real vector space. Show that if $v_1,dots,v_n$ is a basis of $V$, then $v_1,dots,v_n$ is also a basis of the complexification $V_CC$.]

#proof[
  Let $v in V_CC$ such that $v = u + i omega$, where $u, omega in V$. Then it holds that $sum^n_(j=1) b_j v_j = u$ and $sum^n_(j=1) c_j v_j = omega$. Thus, $v = sum^n_(j=1) b_j v_j + i sum^n_(j=1) c_j v_j = sum^n_(j=1) (b_j + i c_j) v_j$. Since scalars in $V_CC$ are complex, then there is such $a_j in CC$ for which $a_j = b_j + i c_j$. Therefore, $v_1,dots,v_n$ spans $V_CC$.

  Notice that $sum^n_(j=1) a_j v_j = 0$ where $a_j in CC$, so it can be represented as $a_j = b_j + i c_j$ for $b_j,c_j in RR$. It follows that $ sum^n_(j=1) (b_j + i c_j) v_j = 0 & iff sum^n_(j=1) b_j v_j + i sum^n_(j=1) c_j v_j = 0 $ Since both real and imaginary part equals $0$ if and only if for every $j$, $b_j = c_j = 0$, then $v_1,v_2,dots,v_n$ is linearly independent in $V_CC$.

  Therefore, $v_1,dots,v_n$ is a basis of $V_CC$.
]

== Dimension

#exercise[Show that the subspaces of $RR^2$ are precisely ${0}$, all lines in $RR^2$ containing the origin, and $RR^2$.]

#proof[We shall start by establishing that $dim RR^2=2$. As a consequence, every subspace has dimension lower than or equal $2$.

  1. The only possible $0$-dimensional subspace is ${0}$ which trivially is a subspace of every possible space.
  2. Analogously, there is only one $2$-dimensional subspace of $RR^2$ which is $RR^2$ itself.
  3. Lastly, $1$ dimensional subspaces are spanned by single non-zero vector $v in RR^2$, which is trivially linearly independent. Furthermore, the set of all scalar multiples of single vector $v$ forms a line passing through the origin.
]

#exercise[Show that the subspaces of $RR^3$ are precisely ${0}$, all lines in $RR^3$ containing the origin, all planes in $RR^3$ containing the origin, and $RR^3$.]

#proof[Once again, we shall establish that $dim RR^3 = 3$, hence every subspace of $RR^3$ has dimension lower than or equal $3$.

  1. The only possible $0$-dimensional subspace is ${0}$ which trivially is a subspace of $RR^3$.
  2. Same as in $RR^2$, every $1$-dimensional subspace is spanned by single non-zero vector $v in RR^3$. Each set of all scalar multiples of this vector forms a line passing through the origin.
  3. A $2$-dimensional subspace of $RR^3$ is defined by two linearly independent vectors $v_1,v_2 in RR^3$. Each set consisting of every linear combination of $v_1$ and $v_2$ defines a plane, which passes through the origin.
  4. Lastly, $RR^3$ is a subspace to itself and hence it is the only $3$-dimensional subspace.
]

#exercise[
  1. Let $cal(U)={p in cal(P)_4 (FF): p(6)=0}$. Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $cal(P)_4 (FF)$.
  3. Find a subspace $cal(W)$ of $cal(P)_4 (FF)$ such that $cal(P)_4 (FF)= cal(U) plus.o cal(W)$.
]

#solution[
  Let ${x^4-6x^3,x^3-6x^2, x^2-6x, x-6}$ be a list of spanning polynomials. Notice that $ f(6) = a (x^4-6x^3) + b (x^3-6x^2) + c(x^2-6x) + d(x-6) = 0"." $ Suppose $a (x^4-6x^3) + b (x^3-6x^2) + c(x^2-6x) + d(x-6) = 0$. We can rearrange this into $ a x^4 + (b-6a) x^3 + (c-6b) x^2 + (c-6d)x -6d =0 $ Since ${x^4, x^3, x^2, x, 1}$ is linearly independent, then $a=b-6a=c-6b=d-6c=-6d=0$, hence $a=b=c=d=0$, which implies that ${x^4-6x^3,x^3-6x^2, x^2-6x, x-6}$ is linearly independent as well.

  Since $cal(U)$ is a subspace of $cal(P)_4 (FF)$, then $4= dim cal(P)_3(FF) <= dim cal(U) <= dim cal(P)_4(FF) = 5$. As for $f in cal(P)_4 (FF)$ such that $f(x)=x^4+x^3+x^2+x+1$, $f(6)!=0$, then $f in.not cal(U)$ and hence $cal(U)!=cal(P)_4 (FF)$ and thus $dim cal(U) = 4$. Therefore, ${x^4-6x^3,x^3-6x^2,x^2-6x,x-6}$ is a basis of $cal(U)$.

  To extend the basis to $cal(P)_4 (FF)$ append polynomial $1$ to the list such that ${x^4-6x^3,x^3-6x^2,x^2-6x,x-6,1}$. Let $a (x^4-6x^3)+ b(x^3-6x^2) + c(x^2-6x) + d (x-6) + e = 0$, which can be rearranged to $a x^4 + (b-6a)x^3 + (c-6b) x^2 + (d-6c)x + (e-6d) = 0$. Since ${x^4,x^3,x^2,x,1}$ is linearly independent, then it holds that $a=b-6a=c-6b=d-6c=e-6d=0$, and so $a=b=c=d=e=0$. Since this list can generate any polynomial in $cal(P)_4 (FF)$, then it is the basis of $cal(P)_4 (FF)$.

  Let $cal(W)={1}$. Note that $ underbrace(a (x^4-6x^3)+ b (x^3-6x^2) + c(x^2-6x)+d(x-6), in thick cal(U)) = underbrace(- e, in thick cal(W)) $ by linear independence of basis ${x^4-6x^3,x^3-6x^2,x^2-6x,x-6,1}$, equation is satisfied only for ${0}$, hence $cal(W) inter cal(U) = {0}$. Therefore, $cal(U) plus.o cal(W) = cal(P)_4 (FF)$.
]

#exercise[
  1. Let $cal(U)={p in P_4 (RR): p''(6)=0}$. Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $cal(P)_4 (RR)$.
  3. Find a subspace $cal(W)$ of $cal(P)_4(RR)$ such that $cal(P)_4 (RR) = cal(U) plus.o cal(W)$.
]

#proof[
  Let ${x^4-216 x^2, x^3-18 x^2, x, 1}$ be the spanning list of polynomials. Every polynomial $p$ can be represented as $a (x^4-216 x^2) + b (x^3 - 18 x^2) + c x + d$, so their second derivative equals $p''(x)=12 a x^2 - 432 a + 6b x - 36b$, which satisfies $p''(6)=0$. We can show that they are linearly independenent by rearranging their linear combination from $a(x^4-216 x^2) + b(x^3-18) + c x + d = 0$ to $a x^4 + b x^3 + (-216a - 18b)x^2 + c x + d = 0$ which implies that $a=b=(-216a - 18b)=c=d=0$, hence $a=b=c=d=0$.

  Since $cal(U)$ is a subspace of $cal(P)_4 (RR)$, then $4 = dim cal(P)_3 (RR) <= dim cal(U) <= dim cal(P)_4 (RR) = 5$. Suppose $f in cal(P)_4 (RR)$ such that $f(x)=x^4+x^3+x^2+x+1$, so $f''(x)=12 x^2 +6x + 2$ and $f''(6)!=0$, then $cal(U)!=cal(P)_4 (RR)$, and thus $dim cal(U) = 4$. Our linearly independent is $4$-dimensional, therefore it is a basis of $cal(U)$.

  We can extend the basis of $cal(U)$ by adding $x^2$ to the spanning list. Notice that $dim cal(U) +1 = dim cal(P)_4 (RR)$. Furthermore, let $a (x^4-216 x^2) + b (x^3 - 18 x^2) + c x^2 + d x + e = 0$ and rearrange it so that $a x^4 + b x^3 + (c-216 a -18 b) x^2 + d x + e = 0$. Since ${x^4,x^3,x^2,x,1}$ is linearly independent, then it is implied that $a=b=(c-216 a - 18 b)=d=e=0$ which yields $a=b=c=d=e=0$. Therefore, extended list is linearly independent and it generates every polynomial in $cal(P)_4 (RR)$, leading us to the conclusion that it is a basis of $cal(P)_4 (RR)$.

  Lastly, let $cal(W) = op("span")(x^2)$. We have shown that basis${x^4-216 x^2, x^3-18 x^2, x^2, x, 1}$ is linearly independent and we can use this fact to establish that
  $
    underbrace(a (x^4 -216 x^2) + b (x^3-18 x^2) + d x + e, in thick cal(U)) = underbrace(-c x^2, in thick cal(W))
  $
  is satisfied only if $a=b=c=d=e=0$, hence only for ${0}$. Therefore, $cal(W) inter cal(U) = {0}$, which consequently leads us to $cal(W) plus.o cal(U) = cal(P)_4 (RR)$.
]

#exercise[
  1. Let $cal(U)={p in cal(P)_4 (FF): p(2) = p(5)}$. Find a basis of $cal(U)$
  2. Extend the basis in 1. to a basis $cal(P)_4 (FF)$.
  3. Find a subspace $cal(W)$ of $cal(P)_4 (FF)$ such that $cal(P)_4 (FF) = cal(U) plus.o cal(W)$.
]

#solution[
  Suppose ${x^4-203 x, x^3-39 x,x^2-7x, 1}$ is a spanning list of polynomials. It follows that for $p(x)=a (x^4-203 x) + b (x^3-39 x)+ c(x^2-7 x) + d$, $p(2)=p(5)$, so $p in cal(U)$. Let $a (x^4-203 x) + b (x^3-39 x)+ c(x^2 -7 x)+d = 0$. By rearranging the equation, $a x^4 + b x^3 + c x^2 + (-203 a - 39 b - 7 c)x + d =0$ which is satisfied by $a=b=c=(-203 a -39 b - 7 c)=d=0$, hence $a=b=c=d=0$. Since ${x^4-203 x, x^3-39 x, x^2-7 x,1}$ spans $cal(U)$ and is linearly independent, then it is a basis of $cal(U)$.

  Append ${x}$ to the spanning list. Suppose $a (x^4-203x) + b (x^3-39 x) + c (x^2-7x) + d x + e = 0$, so $a x^4 + b x^3 + c x^2 + (d-203 a -39 b -7 c)x + e = 0$. This yields that $a=b=c=(d-203 a - 39 b - 7 c)=e=0$, so $a=b=c=d=e=0$. Consequently, ${x^4-203 x, x^3-39 x, x^2-7x, x, 1}$ is linearly independent. Since $dim cal(P)_4 (FF)=dim cal(U) + {x} =5$ and $cal(U) subset.eq cal(P)_4 (FF)$, then $cal(P)_4 (FF) = cal(U) + {x}$.

  Let $cal(W) = op("span")(x^2)$. We have shown that $cal(W) + cal(U) = cal(P)_4 (FF)$ and $a (x^4-203 x) + b(x^3 - 30 x)+c(x^2 - 7 x) + d x + e= 0$ if and only if $a=b=c=d=e=0$. Then, it holds that
  $
    underbrace(a (x^4-203 x) + b(x^3-30x) + c(x^2-7x) + e, in thick cal(U)) = underbrace(-d x, in thick cal(W))
  $
  which is satisfied only for ${0}$. Therefore, $cal(W) inter cal(U) = {0}$, leading us to the conclusion that $cal(W) plus.o cal(U) = cal(P)_4 (FF)$.
]

#exercise[
  1. Let $cal(U) = {p in cal(P)_4 (FF): p(2)=p(5)=p(6)}$. Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $cal(P)_4(FF)$.
  3. Find a subspace $cal(W)$ of $cal(P)_4 (FF)$ such that $cal(P)_4 (FF) = cal(U) plus.o cal(W)$.
]

#solution[
  Let ${x^4-13x^3+52x^2-60x, x^3-13x^2+52x-60, 1}$ be the spanning list of polynomials. Each $p in op("span")(x^4-13x^3+52x^2-60x,x^3-13x^2+52x-60,1)$ satisfies $p(2)=p(5)=p(6)$, hence $p in cal(U)$ and consequently, ${x^4-13x^3+52x^2-60x,x^3-13x^2+52x-60,1}$ spans $cal(U)$.

  Let $a (x^4-13x^3+52x^2-60x)+b(x^3-13x^2+52x-60)+c = 0$ so that $a x^4 + (b-13 a)x^3 + (52 a - 13 b)x^2 + (52 b- 60 a)x + c - 60 b=0$. Since ${x^4,x^3,x^2,x,1}$ is linearly independent, then $a=(b-13a)=(52a-13b)=(52b-60a)=(c-60b)=0$, hence $a=b=c=0$. Therefore, ${x^4-13x^3+52x^2-60x, x^3-13x^2+52x-60,1}$ is linearly independenent and thus a basis of $cal(U)$.

  Extend the basis by appending $x^2,x$. Let $a (x^4-13x^3+52x^2-60x)+b(x^3-13x^2+52x-60)+c x^2 +d x + e = 0$, and so $a x^4 + (b-13a)x^3 + (52a-13b+c)x^2 + (d-60a+52b)x + e -60b =0$ which yields $a=(b-13a)=(52a-13b+c)=(d-60a+52b)=e-60b=0$, hence $a=b=c=d=e=0$. Therefore, the extendned list is linearly independent and has $5$ dimension, hence it is the basis of $cal(P)_4 (FF)$.

  Suppose $cal(W)=op("span")(x^2,x)$. Since $x^4-13x^3+52x^2-60x,x^3-13x^2+52x-60,x^2,x,1$ is linearly independent, we can use this fact to derive
  $
    underbrace(a(x^4-13x^3+52x^2-60x)+b(x^3-13x^2+52x-60)+e, in thick cal(U)) = underbrace(-c x^2 -d x, in thick cal(W))
  $
  which is satisfied only for ${0}$, implying that $cal(U) inter cal(W)={0}$. To conclude, $cal(U) plus.o cal(W)=cal(P)_4 (FF)$.
]

#exercise[
  1. Let $cal(U)={p in cal(P)_4 (RR): integral_(-1)^1 p = 0}$. Find a basis of $cal(U)$.
  2. Extend the basis in 1. to a basis of $cal(P)_4 (FF)$.
  3. Find a subspace $cal(W)$ of $cal(P)_4 (RR)$ such that $cal(P)_4 (RR) = cal(U) plus.o cal(W)$.
]

#solution[
  Suppose ${x^4-1/5, x^3, x^2-1/3, x}$ to be the spanning list of polynomials. It follows that
  $
                    p(x) & =a x^4 + b x^3 + c x^2 + d x -a/5 -c/3 \
    integral_(-1)^1 p(x) & = integral_(-1)^1 (a x^4 + c x^2 -a/5 - c/3) thick d x + integral_(-1)^1 (b x^3 + d x) thick d x \
                         & = 2 integral^1_0 (a x^4+c x^2 -a/5 -c/3) thick d x + 0 \
                         & = 2 [a x^5/5+c x^3/3 - a/5 x - c/3 x]^1_0 = 0
  $
  Furthermore, since for $f in cal(P)_4 (RR)$ such that $f(x)=1$, $integral f(x) != 0$, then $dim cal(U) =4$. Therefore, the list spans $cal(U)$. Now, let $a (x^4-1/5) +b x^3 + c (x^2-1/3) + d x =0$, so $a x^4 + b x^3 + c x^2 + d x + (-a/5 - c/3) = 0$ yields $a=b=c=d=(-a/5-c/3)=0$, hence $a=b=c=d=0$. Spanning list is linearly independent and thus a basis of $cal(U)$.

  Append $1$ to the basis. New list naturally spans $cal(P)_4 (RR)$ and $a (x^4-1/5)+ b x^3 + c(x^2-1/3) + d x +e =0 iff a x^4 + b x^3 + c x^2 + d x + (e-a/5-c/3) = 0 iff a=b=c=d=(e-a/5-c/3)=0 => a=b=c=d=e=0$. Thus, new spanning list is linearly independent and therefore a basis of $cal(P)_4 (RR)$.

  Lastly, let $cal(W) = op("span")(1)$. We have shown that ${x^4-1/5,x^3,x^2-1/3,x,1}$ is linearly independent and by this fact
  $
    underbrace(a (x^4-1/5) + b x^3 + c(x^2-1/3) + d x, in thick cal(U)) = underbrace(-e, in thick cal(W))
  $
  yields that $cal(U) inter cal(W) = {0}$, so $cal(U) plus.o cal(W) = cal(P)_4 (RR)$.]


#exercise[Suppose $v_1,dots,v_m$ is linearly independent in $V$ and $omega in V$. Prove that
  $
    dim op("span")(v_1+omega, dots,v_m + omega) >= m-1
  $
]

#proof[
  Suppose $cal(U) = op("span")(v_1,dots,v_m)$, since $v_1,dots,v_m$ is linearly independent, so it is a basis of $cal(U)$, yielding $dim cal(U) = m$.

  Let $cal(W) = op("span")(v_1+omega,dots,v_m+omega)$. Notice that
  $ (v_2 + omega) - (v_1+omega) & = v_2 - v_1 \
  (v_3 + omega) - (v_1+omega) & = v_3 - v_1 \
                              & dots.v \
    (v_m+omega) - (v_1+omega) & = v_m - v_1 $ thus $v_2-v_1, v_c-v_1,dots,v_m-v_1 in cal(U)$. Furthermore, let $a_1(v_2 - v_1)+a_2(v_3-v_1)+dots+a_(m-1)(v_m-v_1) = 0$, so $a_1 v_2 + a_2 v_3 + dots + a_(m-1) v_m + v_1 sum^(m-1)_(i=1) a_i = 0$, yielding that $a_1=a_2=a_(m-1)=sum^m_(i=1) a_i =0$, thus $a_1=a_2=dots=a_(m-1)=0$ and hence $v_2-v_1,v_3-v_1,dots,v_m-v_1$ is linearly independent.

  Consequently, $dim cal(W)>= m-1$
]

#exercise[Suppose $m$ is a positive integer and $p_0,p_1,dots,p_m in cal(P)(FF)$ are such that each $p_k$ has degree $k$. Prove that $p_0,p_1,dots,p_m$ is a basis of $cal(P)_m (FF)$.]

#proof[
  We shall prove this by mathematical induction. Let $P(k): p_0,dots,p_k$ is a basis of $cal(P)_k (FF)$.

  1. *Base step ($k=0$):* Single $0$-degree polynomial is trivially linearly independent and spans $cal(P)_0 (FF)$. Hence, $P(0)$ holds.

  2. *Inductive step ($k>=0$):* Suppose $P(k)$ holds. Since $p_(k+1)$ has degree $k+1$, then $p_(k+1) in.not cal(P)_k (FF)$, and hence $p_0,p_1,dots,p_k,p_(k+1)$ is linearly independent. Since $dim cal(P)_(k+1) = dim op("span")(p_0,p_1,dots,p_k,p_(k+1))$, then $P(k+1)$ holds.

  Therefore, $p_0,p_1,dots,p_m$ is a basis of $cal(P)_m (FF)$.
]

#exercise[Suppose $m$ is a positive integer. For $0<=k<=m$, let
  $
    p_k (x) = x^k (1-x)^(m-k)"."
  $
  Show that $p_0,dots,p_m$ is a basis of $cal(P)_m (FF)$.
]

#proof[
  Let $a_0 p_0(x) + a_1 p_1(x) + dots + a_m p_m (x) = 0$, so $a_0 (1-x)^m + a_1 x (1-x)^(m-1) + dots + a_m x^m=0$. By mathematical induction, let $P(k): a_k=0$.
  1. *Base step ($k=0$):* Since the equation is solved for fixed coefficients for every $x in FF$, then $x=0$ yields $a_0 (1-0)^m + 0 = 0$, hence $a_0=0$.
  2. *Inductive step ($k>=0$):* Suppose $P(0),P(1),dots,P(k)$. If so, then $0 + a_(k+1) x^(k+1) (1-x)^(m-k-1) + a_(k+2) x^(k+2) (1-x)^(m-k-2) + dots + a_m x^m=0$ can be represented as $x^(k+1) Q(x)$, where $Q(x)$ is a zero polynomial. Hence, $Q(x)=a_(k+1)(1-x)^(m-k-1) + a_(k+2) x (1-x)^(m-k-2) + dots + a_m x^(m-k-1) = 0$ implies for $x=0$ that $a_(k+1)=0$, yielding $P(k+1)$.

  This will leads us to $a_0=a_1=dots=a_m=0$ and since the list is of length $m+1$, then it is a basis of $cal(P)_m (FF)$.
]

#exercise[
  Suppose $cal(U)$ and $cal(W)$ are both four-dimensional subspaces of $CC^6$. Prove that there exist two vectors in $cal(U) inter cal(W)$ such that neither of these vectors in a scalar multiple of the other.
]

#proof[
  It is well-known fact that $dim (cal(U) + cal(W)) = dim cal(U) + dim cal(W) - dim (cal(U) inter cal(W))$. We can say for sure that $dim (cal(U)+cal(W))<=dim CC^6 = 6$ as well as $dim cal(U)= dim cal(W) = 4$. Therefore, $dim cal(U) + dim cal(W) - dim (cal(U) inter cal(W)) <=6$, so $dim (cal(U) inter cal(W)) >= 2$. Consequently, there is at least two vector basis of $cal(U) inter cal(W)$, implying that neither of the vectors of this basis is a scalar multiple of the other.
]

#exercise[Suppose $cal(U)$ and $cal(W)$ are subspaces of $RR^8$ such that $dim cal(U)=3$, $dim cal(W)=5$, add $cal(U) + cal(W) = RR^8$. Prove that $RR^8 = cal(U) plus.o cal(W)$.]

#proof[
  We know that $dim (cal(U) + cal(W)) = 8$ and since $dim cal(U) + dim cal(W) - dim (cal(U) inter cal(W)) = dim (cal(U) + cal(W)) = 8$, hence $dim (cal(U) inter cal(W)) = 0$, thus $cal(U) inter cal(W) ={0}$. Consequently, $cal(U) plus.o cal(W)= RR^8$.
]

#exercise[Suppose $cal(U)$ and $cal(W)$ are both five-dimensional subspaces of $RR^9$. Prove that $cal(U) inter cal(W)!={0}$.]

#proof[
  Clearly, $dim (cal(U) + cal(W)) <= dim RR^9 = 9$, thus $dim cal(U) + dim cal(W) - dim (cal(U) inter cal(W)) <=9$. Hence, $dim (cal(U) inter cal(W))>=1$, which excludes possibility of $cal(U) inter cal(W) = {0}$.
]

#exercise[Suppose $V$ is a ten-dimensional vector space and $V_1,V_2,V_3$ are subspaces of $V$ with $dim V_1 = dim V_2 = dim V_3 = 7$. Prove that $V_1 inter V_2 inter V_3 != {0}$.]

#proof[
  We know for sure that since $dim V =10$, then $dim (V_1+V_2) <=10$. We know that $dim (V_1+V_2) = dim V_1 + dim V_2 - dim (V_1 inter V_2)$, so $dim (V_1 inter V_2) >=4$. Furthermore, let $cal(U) = V_1 inter V_2$, so $dim (cal(U) + V_3) <=10$ and $dim (cal(U) + V_3) = dim cal(U) + dim V_3 - dim (cal(U) inter cal(V_3)$, leading us to the conclusion that $dim V_3 - dim (V_1 inter V_2 inter V_3)<=6$, hence $dim (V_1 inter V_2 inter V_3)>=1$.

  We have shown that dimension of $V_1 inter V_2 inter V_3$ is greater than or equals $1$, excluding possibility of $V_1 inter V_2 inter V_3={0}$.
]

#exercise[Suppose $V$ is finite-dimensional and $V_1,V_2,V_3$ are subspaces of $V$ with $dim V_1 + dim V_2 + dim V_3>2 dim V$. Prove that $V_1 inter V_2 inter V_3 != {0}$.]

#proof[
  Clearly, $dim(V_1+V_2)<=dim V$. Furthermore, since $dim V_1 + dim V_2 > 2 dim V - dim V_3$, then $dim V >= dim V_1 + dim V_2 - dim (V_1 inter V_2) > 2 dim V - dim V_3 - dim (V_1 inter V_2)$, so $dim (V_1 inter V_2)>dim V - dim V_3$.

  Let $cal(U) = V_1 inter V_2$. It follows that $dim(cal(U) + V_3) = dim cal(U) + dim V_3 - dim(V_1 inter V_2 inter V_3)$, so $dim V >= dim cal(U) + dim V_3 - dim(V_1 inter V_2 inter V_3)$, and hence $dim(V_1 inter V_2 inter V_3)>= dim cal(U) + dim V_3 - dim V > dim V - dim V_3 + dim V_3 - dim V=0$. Consequently, $dim(V_1 inter V_2 inter V_3) > 0$, thus $dim(V_1 inter V_2 inter V_3)!={0}$.
]

#exercise[
  Suppose that $V_1, dots, V_m$ are finite-dimensional subspaces of $V$. Prove that $V_1 + dots + V_m$ is finite-dimensional and
  $
    dim(V_1+dots+V_m) <= dim V_1 + dots + dim V_m"."
  $
]

#proof[
  We shall show this by mathematical induction. Let $P(k): dim(V_1+dots+V_k) <= dim V_1 + dots + dim V_k$.
  1. *Base step ($k=2$):* $dim(V_1+V_2) = dim V_1 + dim V_2 - dim (V_1 inter V_2) <= dim V_1 + dim V_2$. True.

  2. *Inductive step ($k>=2$):* Suppose $P(k)$ and let $cal(U) = V_1+dots+ V_k$. It follows that $dim(cal(U)+V_(k+1)) = dim cal(U) + dim V_(k+1) - dim (cal(U) inter V_(k+1)) <= dim cal(U) + dim V_(k+1)$. #v(0.1em) Therefore, $ dim(V_1 + dots + V_k + V_(k+1)) & <= dim (V_1+dots+V_k) + dim V_(k+1) \
                                    & <= dim V_1 + dots + dim V_k + dim V_(k+1) $ which implies $P(k+1)$.

  Lastly, we shall notice that if each $V_1, dots, V_m$ is finite-dimensional and $dim (V_1+ dots + V_m) <= dim V_1 + dots + dim V_m$, then exists such finite number $n = sum^m_(k=1) dim V_k$, which bounds dimension of $V_1 + dots + V_m$ from above. Hence, it is finite-dimensional as well.
]

#exercise[Suppose $V$ is finite-dimensional, with $dim V= n >=1$. Prove that there exist one-dimensional subspaces $V_1, dots, V_n$ of $V$ such that
  $
    V = V_1 plus.o dots plus.o V_n"."
  $
]

#proof[
  Let $v_1, dots, v_n$ be a basis of $V$. We can assign each vector to a subspace such that $V_k=op("span")(v_k)$ for $1<=k<=n$. Since $v_1,dots,v_n$ spans $V$, then we immediately have $V= V_1 +dots + V_n$.

  To show that this is a direct sum, suppose $0=u_1 + dots + u_n$ for some $u_k in V_k$. By definition of $V_k$, each $u_k = a_k v_k$ for some scalar $a_k in FF$. Thus $ a_1 v_1 + a_2 v_2 + dots + a_n v_n=0"." $ Since $v_1,dots,v_n$ is a basis, these vectors are linearly independent, implying that $a_1=a_2=dots=a_n=0$, so $u_1=u_2=dots=u_n=0$.

  Therefore, $V_1 plus.o V_2 plus.o dots plus.o V_n = V$.
]

#exercise[Explain why you might guess, motivated by analogy with the formula for the number of elements in the union of there finite sets, that if $V_1,V_2,V_3$ are subspaces of a finite-dimensional vectors space, then
  $ dim(V_1+V_2+V_3) = & dim V_1 + dim V_2 + dim V_3 \
                     & - dim(V_1 inter V_2) - dim(V_1 inter V_3) - dim (V_2 inter V_3) \
                     & + dim(V_1 inter V_2 inter V_3)"." $ Then either prove the formula above or give a counterexample.
]

#proof[
  For finite sets there is a rule which states that $abs(A union B union C) = abs(A)+abs(B)+abs(C) - abs(A inter B) - abs(A inter C) - abs(B inter C) + abs(A inter B inter C)$.

  Suppose $V_1,V_2,V_3 in RR^2$ such that
  - $V_1 = op("span")((1,0))$,
  - $V_2 = op("span")((0,1))$,
  - $V_3 = op("span")((1,1))$.

  Notice that:
  1. $dim (V_1+V_2+V_3) = 2$,
  2. $dim V_1 = dim V_2 = dim V_3 = 1$,
  3. $dim (V_1 inter V_2) = dim (V_2 inter V_3) = dim (V_1 inter V_3)= 0$,
  4. $dim (V_1 inter V_2 inter V_3) = 0$.

  Thus, $dim(V_1+V_2+V_3)=1+1+1-0-0-0+0=3$ which contradicts $dim (V_1+V_2+V_3)=2$.
]

#exercise[Prove that if $V_1, V_2, V_3$ are subspaces of a finite-dimensional vector space, then
  $
    dim(V_1+V_2+V_3) = & dim V_1 + dim V_2 + dim V_3 \
                       & -(dim(V_1 inter V_2) + dim (V_1 inter V_3)+dim(V_2 inter V_3))/3 \
                       & -(dim((V_1+V_2)inter V_3)+dim((V_1+V_3)inter V_2)+dim((V_2+V_3)inter V_1))/3
  $
]

#proof[
  It is a well-known fact that $dim(V_1+V_2) = dim V_1 + dim V_2 - dim(V_1 inter V_2)$. From this, we can easily derive that $dim(V_1+V_2+V_3) = dim((V_1+V_2)+V_3) = (dim V_1 + dim V_2 - dim(V_1 inter V_2)) + dim V_3 - dim((V_1+V_2) inter V_3)$. Notice that by this logic we can derive three separate equations:
  $
    dim(V_1+V_2+V_3) & = dim V_1 + dim V_2 + dim V_3 - dim(V_1 inter V_2) - dim ((V_1+V_2) inter V_3) \
    dim(V_1+V_2+V_3) & = dim V_1 + dim V_2 + dim V_3 - dim(V_1 inter V_3) - dim ((V_1+V_3) inter V_2) \
    dim(V_1+V_2+V_3) & = dim V_1 + dim V_2 + dim V_3 - dim(V_2 inter V_3) - dim ((V_2+V_3) inter V_1) \
  $
  We can sum up those equations, divide both sides by $3$ obtaining
  $
    dim(V_1+V_2+V_3) = & dim V_1 + dim V_2 + dim V_3 \
                       & -(dim(V_1 inter V_2) + dim (V_1 inter V_3)+dim(V_2 inter V_3))/3 \
                       & -(dim((V_1+V_2)inter V_3)+dim((V_1+V_3)inter V_2)+dim((V_2+V_3)inter V_1))/3
  $
]
