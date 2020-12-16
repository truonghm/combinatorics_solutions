##  Properties of the Binomial Coefficients

1. __Expansion__:

$$
{n \choose k}=
\begin{cases}
\frac{n!}{k!(n-k)!}=\frac{n^{\underline{k}}}{k!}=\frac{P(n,k}{k!} \quad if \;0 \leq k \leq n, \\
0 \quad otherwise
\end{cases}
$$

2. ${n \choose k}={n \choose n-k}$

3. ${n \choose k}={n-1 \choose k}+{n-1 \choose k-1}$

4. __Binomial Theorem:__

$$(x+y)^n=\sum_{k=0}^n {n \choose k}x^ky^{n-k}$$

5. $\sum_{k=0}^n{n \choose k}=2^n$, when $x=1 \;and\;y=1$

6. Summing over lower index (or symmetry. Accross row $n$ of Pascal's Triangle):

$$\sum_{k}(-1)^k{n \choose k}=
\begin{cases}
0 \;if\;n\geq1 \\
1 \;if\;n=0
\end{cases}
$$

7. Summing over upper index (i.e. summing by column in Pascal's Triangle):

$$\sum_{k=0}^n{k \choose m}={n+1 \choose m+1}$$

with $m$ being the column index, and $n$ being the row. After summing, we have a sum of all values in column $m$, from row $0$ to row $n$.

8. Vandermonde's identity:

$${m+n \choose r}=\sum_{k}{m \choose k}{n \choose r-k}$$

Intuitive explanation: Suppose a group has $m$ males and $n$ females. The number of ways to pick a smaller group of $r$ members, in which there are $k$ males and $r-k$ females is:

- When picking directly from the original group of $m+n$ people, we have: ${m+n \choose r}$

- When picking $k$ males from $m$ males and $r-k$ females from $n$ females, we have: $\sum{m \choose k}{n \choose r-k}$

##  Exercises

###  Ex 1

> Combinatorial proof that $\sum {n \choose k}=2^n \; (*)$:

We have:

- When n=0,

$$\sum{n \choose k}=2^0=1$$

So $(*)$ is true.

- When n>0, suppose that:

$$\sum_{k=0}^j{j \choose k}=2^j$$

with j being a positive integer.

We need to prove that:

$$\sum_{k=0}^{j+1}{j+1 \choose k}=2^j+1$$

If this is true, then by induction, the identity holds for all non-negative $n$.

- We have:

$${j+1 \choose k}={j \choose k}+{j \choose k-1}$$

So:

$$\sum{j+1 \choose k}=\sum{j \choose k}+\sum{j \choose k-1}=2^J+2^J=2^{j+1}$$

###  Ex 2

Prove the absorption/extraction identity: If $n$ is a positive integer and $k$ is a nonzero integer, then:

$${n \choose k}=\frac{n}{k}{n-1 \choose k-1} \quad (*)$$

---

We have the RHS of $(*)$ can be transformed as:

$$\frac{n}{k}\cdot\frac{(n-1)!}{(k-1)!(n-1-k+1)!}=\frac{n!}{(n-k)!}=LHS$$

---

###  Ex 3

> Use algebraic methods to prove the cancellation identity: If $n$ and $k$ are nonnegative integers and $m$ is an integer with $m\leq n$, then:
$${n \choose k}{k \choose m}={n \choose m}{m-n \choose k-m}$$

We have:

$$\begin{aligned}
RHS &= \frac{n!}{k!(n-k)!}\frac{k!}{m!(k-m)!} \\
&= \frac{n!}{m!(n-k)!(k-m)!}
\end{aligned}
$$

and:

$$\begin{aligned}
LHS &= \frac{n!}{m!(n-m)!}\frac{(n-m)!}{(k-m)!!(n-m-k+m)!} \\
&= \frac{n!}{m!(n-k)!(k-m)!}
\end{aligned}
$$

So: $LHS=RHS$

---
###  Ex 4

> Suppose that a museum curator with a collection of $n$ paintings by Jack Pollack needs to select $k$ of them for display, and needs to pick $m$ of these to put in a particularly prominent part of the display. Show how to count the number of possible combinations in two ways so that the cancellation identity appears.

1. Method 1:
- First wick for the entire display - choose $k$ paintings from a pool of $n$ paintings: ${n \choose k}$
- For each way of picking for the display, pick $m$ paintings for the prominent part: ${k \choose m}$
- So the number of combinations is: ${n \choose k}{k \choose m}$

2. Method 2:
- First, pick for the prominent part straight from the pool of $n$ paintings: ${n \choose m}$
- Next, pick for the other (non-prominent) part of the display: ${n-m \choose k-m}$
- The number of combination is: ${n \choose m}{n-m \choose k-m}$

3. We can see from the 2 methods above that the cancellation identity is apparent: 

$${n \choose k}{k \choose m}={n \choose m}{n-m \choose k-m}$$
 
---
### Ex 5

> Prove the parallel summing identity: If $m$ and $n$ are nonnegative integers, then:
$$\sum_{k=0}^n{m+k \choose k}={m+n+1 \choose n} \quad (*)$$

The LHS of $(*)$ can be expanded into a sum of $n+1$ elements as:

$$\sum_{k=0}^n{m+k \choose k}={m+0 \choose 0}+...+{m+n \choose n}$$

The RHS can be transformed as:

$$
{m+n+1 \choose n} = \underbrace{{m+n \choose n}}_{(n+1\;term)}+{m+n \choose n-1}
$$

The first term from above is also the last term (or the $n+1$ term) of LHS of $(*)$, while the second term can be transformed as:
 
$$
{m+n \choose n-1} = \underbrace{{m+n-1 \choose n-1}}_{n^{th}\;element}+{m+n-1 \choose n-2}
$$

Subsequently, we can see that the the first term $(*)$ from above is the $n$ element of the sum  $\sum_{k=0}^n{m+k \choose k}$.

Repeated this for $n+1$ time, and we can keep expanding the LHS of $(*)$, until:

$$
{m+n-n+1 \choose n-n} = \underbrace{{m+n-n \choose n-n}}_{1^{st}\;element}+\underbrace{{m+n-n \choose n-n-1}}_{=0}
$$

So:

$$RHS={m+0 \choose 0}+...+{m+n \choose n}=LHS$$

---
### Ex 6
> Prove the hexagon identity: If $n$ is a positive integer and $k$ is an integer, then:
$${n-1 \choose k-1}{n \choose k+1}{n+1 \choose k}={n-1 \choose k}{n \choose k-1}{n+1 \choose k+1}$$
Why is it called the hexagon identity?

We have:
$$\begin{aligned}
LHS&=\frac{(n-1)!}{(k-1)!(n-1-k+1)!}\frac{n!}{(k+1)!(n-k-1)!}\frac{(n+1)!}{k!(n+1-k)!}
\end{aligned}
$$

By swapping the terms in the denominators, we have:

We have:
$$\begin{aligned}
LHS&=\frac{(n-1)!}{k!(n-1-k)!}\frac{n!}{(k-1)!(n-k+1)!}\frac{(n+1)!}{(k+1)!(n+1-k-1)!} \\
&={n-1 \choose k}{n \choose k-1}{n+1 \choose k+1} \\
&= RHS
\end{aligned}
$$

This is call the _hexagon identity_, as it forms a hexagon (from 2 triangles) on the Pascal's Triangle as below:

- First triangle, denoted by $*$: $[{3\choose1},{4\choose3},{5\choose2}]$
- Second triangle, denoted by $+$: $[{3\choose1},{4\choose3},{5\choose2}]$

| n/k | 0 | 1 | 2  | 3  | 4 | 5 |
|-----|---|---|----|----|---|---|
| 0   | $1$ |   |    |    |   |   |
| 1   | $1$ | $1$ |    |    |   |   |
| 2   | $1$ | $2$ | $1$  |    |   |   |
| 3   | $1$ | $3^*$ | $3^+$  | $1$  |   |   |
| 4   | $1$| $4^+$ | $6$  | $4^*$  | $1$ |   |
| 5   | $1$| $5$ | $10^*$ | $10^+$ | $5$ | $1$ |

---
### Ex 7
> Compute the value of the following sums. Your answer should be an expression involving one or two binomial coefficients.

a) $\sum_k{80\choose k}{k+1 \choose 31}={80+k+1 \choose 31+1}$

b) $\sum_{k\geq0}\frac{1}{k+1}{99 \choose k}{200 \choose 120-k}$

c) $\sum_{k=100}^{201} \sum_{j=100}^{k} {201 \choose k+1}{j \choose 100}$

d) $\sum_k {n \choose k}^2$, for a nonnegative integer $n$

e) $\sum_{k \leq m} (-1)^k {n \choose k}$, for an integer $m$ and a nonnegative integer $n$

---
### Ex 8
> Prove the binomial theorem for falling factorial powers,
$$(x+y)^{\underline{n}}=\sum_k {n \choose k}x^{\underline{k}} y^{\underline{n-k}} \quad (*)$$
and for rising factorial powers,
$$(x+y)^{\overline{n}}=\sum_k {n \choose k}x^{\overline{k}} y^{\overline{n-k}} \quad (**)$$

1. For falling factorial powers - the RHS of $(*)$ can be transformed as:

$$\begin{aligned}
\sum_k {n \choose k}x^{\underline{k}} y^{\underline{n-k}} &= \sum_k \frac{n!}{k!(n-k)!}\frac{x!}{(x-k)!}\frac{y!}{(y-n+k)!} \\
&=\sum_k n! \frac{x!}{k!(x-k)!}\frac{y!}{(n-k)!(y-n+k)!} \\
&=n! \sum_k {x \choose k}{y \choose n-k}
\end{aligned}$$

So: 
$$\begin{aligned}
(x+y)^{\underline{n}}&=n! \sum_k {x \choose k}{y \choose n-k} \\
\Leftrightarrow \frac{(x+y)^{\underline{n}}}{n!}&=\sum_k {x \choose k}{y \choose n-k} \\
\Leftrightarrow {x+y \choose n}&=\sum_k {x \choose k}{y \choose n-k} \\
\end{aligned}$$

This is the ___Vandermonde's Identity___.

1. For rising factorial powers- Note that rising factorial powers can be transformed into falling factorial powers as follow:

$$x^{\overline{k}}=(-1)^{k}(-x)^{\underline{k}}$$

and vice versa:
$$x^{\underline{k}}=(-1)^{k}(-x)^{\overline{k}}$$

So the RHS of $(**)$ can be transformed as:

$$\begin{aligned}
\sum_k {n \choose k}x^{\overline{k}} y^{\overline{n-k}}&=\sum_k \frac{n!}{k!(n-k)!}(-1)^{k}(-x)^{\underline{k}} (-1)^{n-k}(-y)^{\underline{n-k}} \\
&=n!(-1)^n \sum_k \frac{(-x)^{\underline{k}}}{k!} \frac{(-y)^{\underline{n-k}}}{(n-k)!} \\
&=n!(-1)^n \sum_k {-x \choose k}{-y \choose n-k} \\
&=n!(-1)^n {-x-y \choose n} \quad (Vandermonde's\;Identity) \\
&=(-1)^n (-x-y)^{\underline{n}} \\
&=(x+y)^{\overline{n}} \quad (Convert\;back\;to\;rising\;factorial\;power)
\end{aligned}$$

---
### Ex 9
> Let $n$ be a nonnegative integer.  Suppose $f(x)$ and $g(x)$ are functions defined for all real number $x$, and that both functions are $n$ times differentiable. Let $f^{(k)}$ denote the $k$th derivative of $f(x)$, so $f^{(0)}(x)=f(x)$, $f^{(1)}(x)=f'(x)$, and $f^{(2)}(x)=f''(x)$. Let $h(x)=f(x)g(x)$. Show that:
$$h^{(n)}(x)=\sum_k {n \choose k} f^{(k)}(x) g^{(n-k)}(x)$$

---
### Ex 10
> In the Virginia lottery game Win For Life, an entry consists of a selection of six different numbers between 1 and 42, and each drawing selects seven different numbers in this range. How many different entries can match at least three of the drawn numbers?

---
### Ex 11
> The state of Florida administers several lottery games. In Florida Lotto, a player picks a set of six numbers between 1 and 36. In which game is a player more likely to match at least two numbers against the ones drawn?
