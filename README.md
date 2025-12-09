This repository contains the accompanying code of the paper "Revisiting the equation $x^2 + y^3 = z^p$" by Nuno Freitas, Diana Mocanu and Ignasi Sanchez-Rodriguez.

In our computations, we used Magma V2.28-20 on a machine running Ubuntu 22.04.4 with an AMD Opteron Processor 6380 with 8 cores and 32 GB RAM. 
Most of our computations finish within a few minutes.

The file "Section 2.m" verifies the claims in Section 2. Proof of Theorem 1.2. It uses the code "IntegralFrobeniusMatrix.m" provided by Tommaso Giorgio Centeleghe in 
"Integral Tate modules and splitting of primes in torsion fields of elliptic curves" to compute the action of Frobenius at l on the p-torsion of a given elliptic curve E.
