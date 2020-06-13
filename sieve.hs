-- Simple primality test driven by a prime number sieve

import qualified Data.Set as Set
import Data.Function ((&))

multiples :: Int -> Int -> Set.Set Int
multiples n bound =
    Set.fromList [2*n,3*n..bound]

{- Build a sieve of composite numbers
 - by composing the multiples of primes
 - n can be skipped if its already in the
 - sieve, since its multiples will also
 - be in the sieve.
 -}
sieve :: Int -> Set.Set Int
sieve bound =
    foldl (\acc n -> 
        if Set.member n acc
            then acc
            else Set.union acc (multiples n bound)
    ) Set.empty [2..bound]



isPrime :: Int -> Bool
isPrime n =
    Set.notMember n $ sieve n

