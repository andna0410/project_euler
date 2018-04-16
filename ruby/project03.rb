# 13195 の素因数は 5, 7, 13, 29 である.
# 600851475143 の素因数のうち最大のものを求めよ.

require 'prime'

def get_max_prime_factors
    num = 600851475143
    prime = Prime.prime_division(num).map{|prime,num| [prime]*num}.flatten
    puts(prime.last)
end

get_max_prime_factors

# 6857
# 2018/04/14
# mapらへんよくわかってない