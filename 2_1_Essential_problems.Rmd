# 2.1. Essential Problems

__Ex 1__: In ther C++ programming language, a variable name must start with a letter or the underscore character (_), and succeeding characters must be letters, digits, or the underscore character. Uppercase and lowercase letters are considered to be different characters.

a) How many variable names with exactly five characters can be formed in C++?

- The number of possible choices for the first character: underscore, uppercase letters and lowercase letters, so: $26*2+1=53$
- With each of those choices, there are $1+26*2+10=63$ ways to pick the other 4 characters (underscore, upper and lowercase letters, and number digits).
- So in total: $53^{1} * 63^{4}$

b) How many are there with at most five characters?

$53^1*[1+63^1+63^2+63^3+63^4]$

c) How many are there with at most five characters, if they must read exactly the same forwards and backwards? For example, `kayak` and `T55T` are admissible, but `Kayak` is not.

- When palindrome's length is odd:
	- for $n=1$: number of choices are $53^1$
	- for $n>1$: number of choices are $53^1*63^1*63^{[(n-2)/2]}$
- When palindrome's length is even:
	- for $n=2$: number of choices are $53^1$
	- for $n>2$: number of choices are $53^1*63^{[(n-2)/2]}$

__Ex 2__: Assume that a vowel is one of the five letters A, E, I, O or U.

a) How many eleven-letter sequences from the alphabet contain exactly three vowels? 

- First, pick 3 out of 5 vowels: $5 \choose 3$
- Next, for each of vowels, pick 8 out of 21 consonants: $21\choose8$
- Then permute the combination of 11 letters: ${5 \choose 3}{21\choose8}11!$







Show that:
$$
\Delta (x^{\underline{n}}) = nx^{\underline{n-1}} \ \ (*)
$$
and use this to prove that:
$$
\sum_{k=0}^{m-1}k^{\underline{n}}=\frac{m^{\underline{n+1}}}{n+1} \ \ (**)
$$
We have:
$$\begin{aligned}
\Delta (x^{\underline{n}})&=(x+1)^{\underline{n}}- x^{\underline{n}} \\
&= \frac{(x+1)!}{(x+1-n)!}-\frac{x!}{(x-n)!} \\
&=\frac{x!}{(x-n)!} \left(\frac{x+1}{x-n+1} - 1\right) \\
&=\frac{x!}{(x-n)!} \frac{n}{x-n+1} \\
&=n \frac{x!}{(x-n+1)!} \\
&=nx^{\underline{n-1}}
\end{aligned}
$$
From $(*)$ we have:
$$
(n+1)k^{\underline{n}}=\Delta(k^{\underline{n+1}})
$$

So LHS of $(**)$ can be transformed as:
$$
\begin{aligned}
\sum_{k=0}^{m-1}k^{\underline{n}}
&= \frac{1}{n+1} (n+1)\sum_{k=0}^{m-1}k^{\underline{n}} \\
&=\frac{1}{n+1}\sum_{k=0}^{m-1} (n+1)k^{\underline{n}} \\
&=\frac{1}{n+1}\sum_{k=0}^{m-1} \Delta(k^{\underline{n+1}}) \\
&=\frac{1}{n+1} \left[  1^{\underline{n+1}}-0^{\underline{n+1}}+2^{\underline{n+1}}-1^{\underline{n+1}}+3^{\underline{n+1}}-2^{\underline{n+1}} +...+m^{\underline{n+1}}-(m-1)^{\underline{n+1}} \right] \\
&=\frac{m^{\underline{n+1}}}{n+1} \\
&=RHS
\end{aligned}
$$
