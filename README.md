# primes
Practicing Haskell/FP with some fun primality tests

## method 1: prime number sieve (sieve of eratosthenes)
The sieve method works by collecting all composite numbers less than
or equal to the candidate in a set. If the candidate is not in the
constructed set, it is prime. 

Starting with n = 2, we test whether n is in the set of composites.
If it is not, we add its multiples (excluding n) to the set. This
exhibits some 'dynamic programming features', as we skip recalculating
the multiples of composites that have already been colored (e.g. 4)
since they are already included. The test is actually an optimization
on the original sieve.

Another optimization is to stop at n = floor(sqrt(candidate)).
This optimization works due to the nature of factor pairs -- pairs
after sqrt(n) will have a smaller term that has had its 
multiples included in the set of composites.

