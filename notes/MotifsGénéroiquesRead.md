Cache on Reading *Motifs Généroiques* by Frédéric Déglise
===

# Abstract
The aim of the article is to show that every mixed triangulated motive in the sense of V. Voevodsky determines a canonical cycle module in the sense of M. Rost. Our method consists of interpreting geometrically the axioms of cycle modules in a category of pro-motives called *generic motives*. It is general enough to show at the same time that every cohomological theory which induces a realisation of triangulated mixed motives defines a canonical cycle module. This is in particular applicable to De Rham and rigid cohomology.


# 1. Transfers
To lighten the notations, define $XY$ to be $X\times_k Y$.

## 1.1 Transpose in finite correspondances
$X$, $Y$ be smooth schemes. (Finite) correspondence defined as common. For $f:X\rightarrow Y$, the graph $\Gamma_f$ is a finite correspondence from $X$ to $Y$. If $f$ is finite and equidimensional, $\Gamma_f$ is also a correspondence from $Y$ to $X$.

### 1.1.1
(Definition) $f:X\rightarrow Y$ a *finite equidimensional* morphism between smooth schemes. (Then $f$ is open using Chevalley's criterion.) We call $f^t$ or the *transpose* of $f$ the finite correspondence from $Y$ to $X$ defined by $\Gamma_f$. The induced morphism $M(Y)\rightarrow M(X)$ in $DM_-^{eff}(k)$ is defined by $f^*$.

### 1.1.2
(Lemma) $f:Y\rightarrow X$ as above. We have
1. For $\alpha\in Cors_k(Y,Z)$, $\alpha\circ f^t=(f\times\mathbb{1}_Z)_*(\alpha)$.
2. For $g:Z\rightarrow Y$ finite and equidimensional, $(f\circ g)^t=g^t\circ f^t$. 

Proof. 

<!-- https://q.uiver.app/#q=WzAsMyxbMCwwLCJYXFx0aW1lcyBZXFx0aW1lcyBaIl0sWzEsMCwiWFxcdGltZXMgWiJdLFswLDEsIllcXHRpbWVzIFoiXSxbMiwwLCJmXFx0aW1lcyBpZF9ZXFx0aW1lcyBpZF9aIl0sWzAsMSwicF97MTN9Il0sWzIsMSwiZlxcdGltZXMgaWRfWiIsMl1d -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMyxbMCwwLCJYXFx0aW1lcyBZXFx0aW1lcyBaIl0sWzEsMCwiWFxcdGltZXMgWiJdLFswLDEsIllcXHRpbWVzIFoiXSxbMiwwLCJmXFx0aW1lcyBpZF9ZXFx0aW1lcyBpZF9aIl0sWzAsMSwicF97MTN9Il0sWzIsMSwiZlxcdGltZXMgaWRfWiIsMl1d&embed" width="421" height="304" style="border-radius: 8px; border: none;"></iframe>

So the first statement follows. The second statement is straightforward. $\blacksquare$

We put an end to this part with a generalized projection formula. To state this, we need the following definition.

### 1.1.3
(Definition) For morphisms between schemes.

<!-- https://q.uiver.app/#q=WzAsNCxbMCwwLCJZJyJdLFsxLDAsIlkiXSxbMCwxLCJYJyJdLFsxLDEsIlgiXSxbMSwzLCJmIl0sWzAsMiwicCJdLFswLDEsInEiLDFdLFsyLDMsImciLDFdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsNCxbMCwwLCJZJyJdLFsxLDAsIlkiXSxbMCwxLCJYJyJdLFsxLDEsIlgiXSxbMSwzLCJmIl0sWzAsMiwicCJdLFswLDEsInEiLDFdLFsyLDMsImciLDFdXQ==&embed" width="304" height="304" style="border-radius: 8px; border: none;"></iframe>

We'll say it's quasi-cartesian if it's commutative and cartetian on the underlying topological space.

Consider a quasi-cartesian diagram as above where the schemes are smooth, $f$ finite equidimensional and $g$ is dominant. Denote by $R=\kappa(Y)\otimes_{\kappa(X)}\kappa(X')$ the total fraction ring of $Y'$, points of which corresponding to components of $Y'$ bijectively. For any $x\in Spec(R)$, denote by $Y'(x)$ the closure of $x$ in $Y'_{red}$, and set $q_x=q|_{Y'(x)}$, $p_x=p|_{Y'(x)}$.

### 1.1.4
(Proposition) Assumption and notations as above. Then 

$$ f^t\circ g=\sum_{x\in Spec(R)}lg_R(R_x)\cdot(q_x\circ p_x^t). $$

Proof. We have a equalizer diagram

<!-- https://q.uiver.app/#q=WzAsMyxbMCwwLCJYJ1xcdGltZXNfWFkiXSxbMSwwLCJYJ1xcdGltZXNfa1kiXSxbMiwwLCJYJ1xcdGltZXNfa1hcXHRpbWVzX2tZIl0sWzAsMV0sWzEsMiwiaWRcXHRpbWVzIGZcXHRpbWVzIGlkIiwwLHsib2Zmc2V0IjotMX1dLFsxLDIsImlkXFx0aW1lcyBnXFx0aW1lcyBpZCIsMix7Im9mZnNldCI6MX1dXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMyxbMCwwLCJYJ1xcdGltZXNfWFkiXSxbMSwwLCJYJ1xcdGltZXNfa1kiXSxbMiwwLCJYJ1xcdGltZXNfa1hcXHRpbWVzX2tZIl0sWzAsMV0sWzEsMiwiaWRcXHRpbWVzIGZcXHRpbWVzIGlkIiwwLHsib2Zmc2V0IjotMX1dLFsxLDIsImlkXFx0aW1lcyBnXFx0aW1lcyBpZCIsMix7Im9mZnNldCI6MX1dXQ==&embed" width="669" height="176" style="border-radius: 8px; border: none;"></iframe>

Then we denote by $W$ the schematic intersection $\Gamma_gY\cap X'\Gamma_f$ in $X'XY$. From the diagram we see that $W$ is isomorphic to the schematic image of $X'\times_XY\rightarrow X'Y$. Furthermore, **the intersection is proper** and **the components of $W$ correspond to points of $R$ bijectively**. By hypothesis, $W_{red}=Y'$ is smooth, and it follows that for any $x\in Spec(R)$, viewed as a generic point of $W$, $(\mathcal{O}_{W,x})_{red}$ is a Cohen-Macauley local ring, or to say, with depth equal to it's dimension (cf. [Ful98], A.7.). Consequently, by applying proposition 7.1 of [Ful98], the intersection multiplcity of $x$ in $W$ is equal to the length of the Artinian ring $\mathcal{O}_{W,x}$. 
As a result, the finite correspondence $f^t\circ g$ is the cycle on the subscheme $W$ of $X'Y$, namely

$$ f^t\circ g=\sum_{x\in Spec(R)}lg(\mathcal{O}_{W,x})[Y'(x)]_{X'Y} $$

As we commented before, $R$ is isomorphic to the total fractional ring of $W$. So for any $x\in Spec(R)$, $lg(\mathcal{O}_{W,x})=lg(R_x)$. Finally, calculation shows immediately that for any $x\in Spec(R)$, $q_x\circ p_x^t=[Y'(x)]_{Y'Y}$.

## 1.2 Exterior cup product

For a smooth scheme, denote by $\Delta_X:X\rightarrow X\times_kX$ the associated diagonal immersion.

### 1.2.1
(Definition) Let $\mathcal{M}$ and $\mathcal{N}$ be objects of $DM_-^{eff}(k)$ and $\alpha:M(X)\rightarrow\mathcal{M}$, $\beta:M(X)\rightarrow\mathcal{N}$ be morphisms in $DM_-^{eff}(k)$.

We set *exteroir cup-product* of $\alpha$ and $\beta$ over $X$ to be composite of morphisms

<!-- https://q.uiver.app/#q=WzAsMyxbMCwwLCJNKFgpIl0sWzEsMCwiTShYKVxcb3RpbWVzIE0oWCkiXSxbMiwwLCJcXG1hdGhjYWx7TX1cXG90aW1lc1xcbWF0aGNhbHtOfSJdLFswLDEsIlxcRGVsdGFfWCJdLFsxLDIsIlxcYWxwaGFcXG90aW1lc1xcYmV0YSJdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/#q=WzAsMyxbMCwwLCJNKFgpIl0sWzEsMCwiTShYKVxcb3RpbWVzIE0oWCkiXSxbMiwwLCJcXG1hdGhjYWx7TX1cXG90aW1lc1xcbWF0aGNhbHtOfSJdLFswLDEsIlxcRGVsdGFfWCJdLFsxLDIsIlxcYWxwaGFcXG90aW1lc1xcYmV0YSJdXQ==&embed" width="646" height="176" style="border-radius: 8px; border: none;"></iframe>

We denote it by $\alpha\boxtimes_X\beta$. 

### 1.2.2
(Example) Consider $\alpha\in Cors(X,Y)$ and $\beta\in Cors(X,Z)$. Elementary calculation shows that 

$$ M(\alpha)\boxtimes M(\beta)=M(p_{XYZ}^{XY*}(\alpha)\cdot p_{XYZ}^{XZ*}(\beta)). $$
