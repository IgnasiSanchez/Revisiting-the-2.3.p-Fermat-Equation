# Revisiting the equation $x^2 + y^3 = z^p$
## Authors: Freitas, Nuno; Mocanu, Diana; Sánchez-Rodríguez, Ignasi.

In our computations, we used Magma V2.28-20 on a machine running Ubuntu 22.04.4 with an AMD Opteron Processor 6380 with 8 cores and 32 GB RAM. Most of our computations finish within a few minutes.

The file `Section 2.m` verifies the claims in Section 2. Proof of Theorem 1.2. It uses the code `IntegralFrobeniusMatrix.m` provided by Tommaso Giorgio Centeleghe in [[1]](#1) to compute the action of Frobenius at $\ell$ on the $p$-torsion $E[p]$ of a given elliptic curve $E$.


# References

<a id="1">[1]</a> T. G. Centeleghe.
Integral Tate modules and splitting of primes in torsion fields of elliptic curves.
International Journal of Number Theory, 2012.
