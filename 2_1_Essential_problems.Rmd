## Essential Problems

### Ex 1

> In ther C++ programming language, a variable name must start with a letter or the underscore character (_), and succeeding characters must be letters, digits, or the underscore character. Uppercase and lowercase letters are considered to be different characters.

> a) How many variable names with exactly five characters can be formed in C++?

- The number of possible choices for the first character: underscore, uppercase letters and lowercase letters, so: $26\cdot 2+1=53$
- With each of those choices, there are $1+26\cdot 2+10=63$ ways to pick the other 4 characters (underscore, upper and lowercase letters, and number digits).
- So in total: $53^{1} \cdot 63^{4}$

---
> b) How many are there with at most five characters?

$53^1\cdot [1+63^1+63^2+63^3+63^4]$

---

> c) How many are there with at most five characters, if they must read exactly the same forwards and backwards? For example, `kayak` and `T55T` are admissible, but `Kayak` is not.

- When palindrome's length is odd:
	- for $n=1$: number of choices are $53^1$
	- for $n>1$: number of choices are $53^1\cdot 63^1\cdot 63^{[(n-2)/2]}$
- When palindrome's length is even:
	- for $n=2$: number of choices are $53^1$
	- for $n>2$: number of choices are $53^1*\cdot 63^{[(n-2)/2]}$

---

### Ex 2

> Assume that a vowel is one of the five letters A, E, I, O or U.

> a) How many eleven-letter sequences from the alphabet contain exactly three vowels? 

To form an eleven-letter sequence, we need to pick 3 out of 5 vowels and 8 out of 21 consonants. So, the number of ways to create eleven-letter sequences is: $5^3 \cdot 21^8$.

---
> b) How many of these have at least one repeated letter?

We can see that the set of sequences with at least one repeated letter is exactly the set of all possible sequences subtracted by the subset of all unique sequences. So, the number of sequences with at least one repeated letter is: $5^3\cdot 21^8-{5\choose 3}\cdot {21 \choose 8} \cdot 11!$

---
### Ex 3

> There are 30 teams in the NBA: 15 in the Western Conference, and 15 in the Eastern Conference.

> a) Suppose each of the teams in the league has one pick in the first round of the NBA draft. How many ways are there to arrange to order of the teams selecting in the draft?

This is simply a permutation of pick orders: $30!$

---
> b) Suppose that each of the first three position in the draft must be awarded to one of the fourteen teams that did not advance to the playoffs that year. How many ways are there to assign the first three positions in the draft?

- Fist, pick 14 teams that don't make the playoffs: $30 \choose 14$
- For each such way, pick 3 teams to be awarded draft picks, in order (permutation): $P(14,3)$
-   So the number of ways to assign the first there draft picks is: ${30 \choose 14} P(14,3)$

---
> c) How many ways are there for eight teams from each conference to advance to the playoffs, if order is unimportant?

Simply pick 8 of 15 teams from a conference: $15 \choose 8$

---
> d) Suppose that every team has three centers, four guards, and five forwards. How many ways are there to select an all-star team with the same composition from the Western Conference?

As each team has the above composition, there are in total: $3\cdot 15=45$ centers, $15\cdot 4=60$ guards, and $15\cdot 5$ forwards for the entire Western Conference. 

When picking from each of those set of players for a position, we have:  ${45 \choose 3}{60 \choose 4}{75 \choose 5}$ ways to select the all-star team for the Western Conference.

---

### Ex 4

> According to the _Laws of the Game_ of the International Football Association, a full football (soccer) team consists of eleven players, one of whom is the goalkeeper. THe other ten players fall into one of three outfield position of players at t4each of these positions, as long as the total number of outfield players is ten. 

> a) How many different configurations are there for a full football team? For example, ont team may field four strikers, three midfielders, and three defenders, in addition to the goalkeeper. Another may play five strikers, no midfielders, and five defenders, plus t he goalkeeper.

Using the stars and bars method with non-negative condition, we have the number of different configurations is: $2^{10+3-1}=2^12$

---
>b) Repeat the previous problem if there must be at least two players at each outfield position.

For each outfield position, 2 players are fixed. Therefore, we only need to count of the remaining 4 players of the team (as $2\cdot 3=6$ players are fixed). So the number of configuration is: $2^{4+3-1}=2^6$

---
> c) How many ways can a coach assign eleven different players to one of the four positions, if there must be exactly one goalkeeper, but there is no restriction on the number of players at each outfield position?

As the players are distinguishable, we have to use the product rule instead of the stars and bars method. For example, these 2 scenarios are different:

- First player is a striker, the other 9 are defenders, and
- First 9 are defenders, the last one is a striker.

The number of ways to assign is: $3^10$

---
### Ex 5

> A political science quiz has two parts. In the first, you must present your opinion of the four most influential secretaries-general in the history of the United nations in a ranked list. In the second, you must name ten members of the United Nations security council. If there have been eight secretaries-general in the U.N history, and there are fifteen members of the U.N security council, including the five permanent members, how many ways can you answer the quiz, assuming you answer both parts completely?

- For the first part of the quiz: we can pick 4-permutations of 8 secretaries-general.
- For the second part:
	- First, pick 2 permanent members out of 5: $5 \choose 2$
	- For each such way, pick 8 members from the remaining 13: $13 \choose 8$

So the number of ways to answer the quiz is: $P(8,4){5 \choose 2}{13 \choose 8}$

--- 
### Ex 6
> A midterm exam in phenomenology has two parts. The first part consists of ten multiple choice questions. Each question has four choices, labeled (a), (b), (c) and (d), and one may pick any combination of responses on each of these questions. For example, one could choose just (a) alone on one question, or both (b)  and (c), or all four possibilities, or none of them. In the second part, one may choose either to answer eight true/false questions, or to select the proper definition of each of seven terms from a list of ten possible definitions. Every question must be answered on whichever part is chosen, but one is not allowed to complete both portions. How many ways are there to complete the exam?

- First part - As one can pick from $k=0$ answer to all $k=4$ answers, the total number of ways to answer is: $\sum_{k=0}^4 {n \choose k}=2^4=16$
- Second part - As one has to pick only 1 out of 2 possible sections, we use the sum rule:  $2^8 + {10 \choose 7}$

The total number of ways to write the exam is:

$$First\ part \cdot second\ part = 16 \left[2^8 + {10 \choose 7}\right]$$

---
### Ex 7
> A ballot lists ten candidates for city council, eight candidates for the school board, and five bond issues. The ballot instruct voters to choose up to four people running for city council, rank up to three candidates for the school board, and approve or reject each bond issue. How many different ballots may be cast, if partially completed (or empty) ballots are allowed?

As empty ballots are allowed, we have:

- For city council: $\sum_{k=0}^4 {10 \choose k}$
- For school board: $\sum_{k=0}^3 P(8, k)$
- For bond issues: $\sum_{k=0}^5 2^k$

So the total number of ways to complete the ballot is:

$$\sum_{k=0}^4 {10 \choose k} \cdot \sum_{k=0}^3 P(8, k) \cdot \sum_{k=0}^5 2^k$$

---
### Ex 8

> Compute the number of ways to deal each of the following five-card hands in poker.

> a) Straight: the value of the cards from a sequence of consecutive integers. A jack has value $11$, a queen $12$, a king $13$. An ace may have a value of $1$ or $14$, so $A2345$ and $10JQKA$ are both straights, but $KA234$ is not. Furthermore, the cards in a straight cannot all be of the same suit (a flush).

- The largest value is $14$ (as the ace).
- Because a straight is a sequence of 5 consecutive integers, we only need to pick the first value.
- The largest possible first value is: $14-5+1=10$.
- So there are ${10 \choose 1| = 10$ possible sequences, not taking suits into account.
- Each card in a hand of 5 belongs to 1 of 4 suits, so the total number of straight hands including straight flushes is: ${4 \choose 1}^5  {10 \choose 1}$.
- For straight flushes, only 1 suit can be picked, so the number of straight flushes is: ${4 \choose 1} {10 \choose 1}$
- Substracted the number of straight flushes from the number of straights: ${4 \choose 1}^5  {10 \choose 1}-{4 \choose 1}  {10 \choose 1}$

---
> b) Flush: All five cards have the same suit ( but not in addition a straight).

- First pick a suit: ${4 \choose 1}$
- For each such choice of a suit, pick 5 cards (from 13 cards): ${13 \choose 5}$
- Excluding straight flushes, we have: ${4 \choose 1}{13 \choose 5}-{4 \choose 1}  {10 \choose 1}$

---
> c) Straight flush: both a straight and flush. Make sure that your counts for straights and flushes do not include straight flushes.

As computed above, the number of ways to picks traight flushes is: ${4 \choose 1} {10 \choose 1}$

---
> d) Four of a kind.

- First, pick a value from 13 possible values of a suit. This will be the value of the 4 cards of the same kind. Note that the choice of suit does not matter: ${13 \choose 1}{4 \choose 4}={13 \choose 1}$
- That's 4 cards of a a hand of 5. For each of the above way, pick the last card from the remaining 48 cards of the deck: ${48 \choose 1}$
- The number of ways to pick a 4-of-a-kind hand is: ${13 \choose 1}{48 \choose 1}$

---
> e) Two distinct matching pairs (but not a full house).

- First, pick a value (out of 13) and 2 suits (out of 4) for the first pair: ${13 \choose 1}{4 \choose 2}$
- For each way of picking the first pair, pick a value (out of the remaining 12) and 2 suits (out of 4) for the second pair: ${12 \choose 1}{4 \choose 2}$
- Finally pick a distinct value for the last card so that the hand is not a full house: ${11 \choose 1}{4 \choose 1}$
- The number of ways to pick a hand is: ${13 \choose 1}{4 \choose 2}{12 \choose 1}{4 \choose 2}{11 \choose 1}{4 \choose 1}$

---
> f) Exactly one matching pair (but no three of a kind). 

- First, pick a value and 2 suits for the matching pair: ${13 \choose 1}{4 \choose 2}$
- The remaining 3 cards must:
	- have values different from the first pair
	- not have the same value (meaning that at most 2 cards out of 3 would have the same value)
- With the above conditions, we can pick as follows:
	- First, pick for 2 cards out of 3: 2 out of 12 values (excluding the value of the first pair) & 2 out of 4 suits. 
	- Next, pick for the last card: 1 out of 10 values, 1 out of 4 suits.
- So we have: ${13 \choose 1}{4 \choose 2}{12 \choose 2}{4 \choose 2}{10 \choose 1}{4 \choose 1}$ ways of picking a hand with exactly 1 matching pair.

---
> g) At least one card from each suit.

- For a hand of 5 to have at least one card from each suit, 1 suit will be repeated twice. We first pick 2 cards from this suit: ${4 \choose 1}{13 \choose 2}$
- For each of those choices, we pick 1 card from one of the remaining 3 suits, repeating 3 times for each suit: ${3 \choose 3}{13 \choose 1}^3$
- So the number of ways to pick a hand with at least one card from each suit is: ${4 \choose 1}{13 \choose 2}{3 \choose 3}{13 \choose 1}^3$

---
> h) At least one card from each suit, but no two values matching.

- Similar to the above question, we first pick 2 cards from the suit with repeating cards: ${4 \choose 1}{13 \choose 2}$
- For the 3 cards, the number of available values decrease by 1 for each card, as there must be no 2 values matching. We start with 11 values, as 2 has already been picked: ${11 \choose 1}{10 \choose 1}{9 \choose 1}$
- So the number of ways to pick a hand that meet the condition is: ${4 \choose 1}{13 \choose 2}{11 \choose 1}{10 \choose 1}{9 \choose 1}$

---
> i) Three cards of one suit, and the other two of another suit, like three hearts and two spades.

- First, pick a suit and 3 cards from it: ${4 \choose 1}{13 \choose 3}$
- Then Pick another suit (from the remaining 3) and 2 cards from it: ${3 \choose 1}{13 \choose 2}$
- So the number of ways is: ${4 \choose 1}{13 \choose 3}{3 \choose 1}{13 \choose 2}$

---
### Ex 9
> In the lottery game Texas Two Step, a player selects four different numbers between 1 and 35 in step 1, then selects an additional “bonus ball” number in the same range in step 2. The latter number is not considered to be part of the set selected in step 1, and in fact it may match one of the numbers selected there.

> a) A resident of College Station always selects a bonus ball number that is different from any of the numbers he picks in step 1.How many of the possible Texas Two Step tickets have this property?

The number of possible Texas Two Step tickets with the above property is: ${35 \choose 4}{31 \choose 1}$

---
> b) In Rhode Island’s lottery game Wild Money, a gambler picks a set of five numbers between 1 and 35. Is the number of possible tickets in this game the same as the number of tickets in Texas Two Step where the bonus ball number is different from the other numbers? Determine the ratio of the number of possible tickets in Wild Money to the number in the restricted Texas Two Step.

The Number of possible tickets for Wild Money is ${35 \choose 5}$, which is Not the same as Texas Two Step where the bonus ball is different.
The ratio is: $31/175 \approx 0.177$

---
### Ex 10 

> a) A superstitious resident of Amarillo always picks three even numbers and three odd numbers when playing Lotto Texas. What fraction of all possible lottery tickets have this property?

The [Lotto Texas](https://www.txlottery.org/export/sites/lottery/Games/Lotto_Texas/index.html) game allows participants to pick 6 numbers, each ranging from 1 to 54. Note that the numbers cannot be repeated, as they are represented by balls, and picked from 54 balls. When picking 3 even and 3 odd numbers, the fraction of possible lottery tickets is:

$$\frac{\overbrace{{54/2 \choose 3}}^{even} \overbrace{{54/2 \choose 3}}^{odd}}{{54 \choose 6}}\approx 0.3313$$

---
> b) Suppose in a more general lottery game one selects six numbers between 1 and 2n. What fraction of all lottery tickets have the property that half the numbers are odd and half are even?

$$\begin{aligned}
P(3\ odds, 3\ evens)&=\frac{\overbrace{{n \choose 3}}^{even} \overbrace{{n \choose 3}}^{odd}}{{2n \choose 6}} \\
&=
\frac{n!}{3!(n-3)!}\frac{n!}{3!(n-3)!}\frac{6!(2n-6)!}{(2n)!} \\
&=\frac{n!}{(n-3)!}\frac{20(2n-6)^{\underline{n-3}}}{(2n)^{\underline{n}}} \\
&=20n(n-1)(n-2)\frac{(2n-6)(2n-7)\cdot\cdot\cdot(2n-6-n+3+1)}{2n(2n-1)\cdot\cdot\cdot(2n-n+1)} \\
&=20n(n-1)(n-2)\frac{n(n-1)(n-2)}{2n(2n-1)(2n-2)(2n-3)(2n-4)(2n-5)} \\
&=\frac{20n(n-1)(n-2)}{8(2n-1)(2n-3)(2n-5)} \\
&= \frac{5n(n-1)(n-2)}{2(2n-1)(2n-3)(2n-5)}
\end{aligned}
$$

When $2n=54$, we have the fraction as: 
$$\frac{5\cdot 27(27-1)(27-2)}{2(54-1)(54-3)(54-5)} \approx 0.3313$$

---
> c) What is the limiting value of this probability as n grows large?

$$\begin{aligned}
\lim_{n\to\infty}P(3\ odds, 3\ evens) &= \lim_{n\to\infty}\frac{5n(n-1)(n-2)}{2(2n-1)(2n-3)(2n-5)} \\
&= \lim_{n\to\infty}\frac{5}{2}\frac{n^3-3n^2+2n}{8n^3-36n^2+46n-15} \\
&=\frac{5}{2}\lim_{n\to\infty}\frac{1-3/n+2/n^2}{8-36/n+46/n^2-15/n^3} \\
&=\frac{5}{2}\cdot\frac{1}{8}=\frac{5}{16}=3.125
\end{aligned}
$$

---
### Ex 11
> Suppose a positive integer $N$ factors as $N=p_1^{n_1}p_1^{n_1}\cdot\cdot\cdot p_m^{n_m}$, where $p_1,p_2,...,p_m$ are distinct prime numbers and $n_1,n_2,...,n_m$ are all positive integers. How many different positive integers are divisors of $N$?

- There are $n_m$ ways to pick each term $p_m^{n_m}$ of the product $N$, and all of them are positive integers that can be divisors of $N$.
- So in total, there would be $n_1\cdot n_2 \cdot \cdot \cdot n_m$ positive integers that are divisors of $N$.

### Ex 12
> Assume that a positive integer cannot have 0 as its leading digit.

> a) How many five-digit positive integers have no repeated digits at all? 

- First, pick the first digit (that cannot be 0, so we are picking from 9 possible digits): ${9 \choose 1}$
- For each way of picking the first digit, pick the next 4 with order: $P(9, 4)$. We pick from $10-1=9$ remaining digits. Note that this is the same with picking each digit at a time: ${9 \choose 1}{8 \choose 1}{7 \choose 1}{6 \choose 1}$
- So the number of five-digit positive integers with no repeated digits are: ${9 \choose 1}P(9,4)$.

---
> b) How many have no consecutive repeated digits?

- Having no consecutive repeated digits means that the a digit cannot be the same as the preceding digit.
- The first digit has ${9 \choose 1}$ ways to pick ($0$ is not allowed)
- The second digit has ${9 \choose 1}$ ways to pick (excluding the digit that has already been picked)
- Similarly for the next 3 digits, we also have ${9 \choose 1}$ ways to pick.
- So the number of integers with not consecutive repeated digits is: ${9 \choose 1}^5$

---
> c) How many have at least one run of consecutive repeated digits (for example, $23324$, $45551$, or $151155$, but not $12121$)?

The set of all five-digit positive integers (with $9*10^4$ elements) make up of:

- Subset of all positive integers with at least one run of consecutive repeated digits, and
- Subset of all positive integers with __NO__ consecutive repeated integers.

So the number of positive integers with at least one run of consecutive repeated digits is: $9*10^4-9^5$.

---
### Ex 13
> How many positive integers are there whose representation in base 8 has exactly eight octal digits, at most one of which is odd? An octal digit is a number between 0 and 7, inclusive. Assume that the octal representation of a positive integer cannot start with a zero.

As there can only be at most 1 odd digit, there are 2 possibilities:

- No digit is odd, i.e. all are even. In this case, we pick 4 even digits out of 8 (from 0 to 7), repeating this for 8 digits of the number: $4^8$.
- Exactly 1 digit is odd, i.e. either the first one or one of the last 7 is odd: $4\cdot 4^7 + 3\cdot 4^7\cdot 7=4^8+21\cdot 4^7$

So in total, the number of possible choices is: $4^8\cdot 2+21\cdot 4^7=29\cdot 4^7$
 
 ---
### Ex 14
> Let $\Delta$ be the _difference operator_: $\Delta (f(x))=f(x+1)-f(x)$. Show that:
$$
\Delta (x^{\underline{n}}) = nx^{\underline{n-1}} \ \ (*)
$$
and use this to prove that:
$$
\sum_{k=0}^{m-1}k^{\underline{n}}=\frac{m^{\underline{n+1}}}{n+1} \ \ (**)
$$

__We have__:

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
