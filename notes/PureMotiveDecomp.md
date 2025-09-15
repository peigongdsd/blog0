## Covariant Motives

(Just the inverse category of the category of pure motives, but let's rephrase it)


## Structure of the Pure Motive of a Curve

Over a field $k$. Say there is a (geometrically integral) smooth proper curve $C/k$. Hence the field of constants of $C$ is just $k$. Suppose there is a rational point 

$$ k\xrightarrow{\alpha} C\xrightarrow{struc} k $$

We see immediately that $h(C)$ admits a direct summand of $h(k)$. Moreover, take the transportation of the morphisms above, we have

$$ k\xrightarrow{struc^t} C\xrightarrow{\alpha^t} k $$

Let $d=\mathrm{dim}(C)$(this must be $1$ but let's just use this signature for wider generality), by passing to the category of covariant motives we have 

$$ h(struc^t)\in\mathrm{Corr}_{d}(k,C)\\ h(\alpha^t)\in\mathrm{Corr}_{-d}(C,k) $$

so we have another composition calculates to identity, namely

$$ h(k)\xrightarrow{h(struc^t)} h(C)(-d)\xrightarrow{h(\alpha^t)} h(k) $$

So we find another summand $h(k)(d)\subset h(C)$.

These two summands are denoted by $h^0(C)$ and $h^2(C)$ repspectively. From the definition it is easy to see that they are cut out by projectors $p_0=[C\times\{x\}]$ (the graph collapsed to a single point, indeed) and $p_2=[\{x\}\times C]$ respectively. In fact (I still feel like explaining further), 

$$h(C)\xrightarrow{h(struc)}h(k)\xrightarrow{h(\alpha)}h(C)$$

defines the projectors by 

$$
p_0=h(\alpha)\circ h(struc)\in\mathrm{Corr}_0(C,C) \\
p_2=h(struc^t)\circ h(\alpha^t)\in\mathrm{Corr}_0(C(-d),C(-d))=\mathrm{Corr}_0(C,C). 
$$

(Omit the calculation here)

For some curves, all parts they have is $h^0$ and $h^2$. For example, $h(\mathbb{P}^1)=h^0(\mathbb{P}^1)\oplus h^2(\mathbb{P}^1)=\mathbb{1}\oplus\mathbb{L}$. This is because 

$$ [\mathbb{P}^1\times \{x\}] + [\{x\}\times \mathbb{P}^1] \sim_{rat} \Delta_{\mathbb{P}^1\times\mathbb{P}^1} $$

in fact, the divisor $\Delta-[\mathbb{P}^1\times \{x\}] - [\{x\}\times \mathbb{P}^1]$ is the principle divisor defined by $(XZ-YW)/ZW$ if the coordinations are denoted by $[X:Y]$ and $[X:W]$ respectively.

In general, we could define $h^1(C)=h(C)-h^0(C)-h^2(C)$ (or strictly, the part cut off by $\mathrm{id}_C-p_0-p_2$).

## Weil's Formula on Jacobians and Picard Groups

A classical theorem (Weil) says that divisor classes on a product of curves (we may assume the curves both admit a rational point, but maybe this condition could be relaxed) split as

$$
\mathrm{Pic}(X\times X')\;\cong\;\mathrm{Pic}(X)\ \oplus\ \mathrm{Pic}(X')\ \oplus\ \mathrm{Hom}(J,J').
$$

Intuitively:

* the first two summands are the pullbacks from the two factors, and
* the **cross-term** corresponds to line bundles on $X\times X'$ that restrict trivially to each fibre; by the seesaw theorem these are exactly the line bundles coming from homomorphisms $J\to P_{X'}$ (and for curves $P_{X'}\cong J'$).

### [Statement]

