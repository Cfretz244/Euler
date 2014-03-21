def eratosthenes term
    sieve = Hash.new
    max = 1000000
    primeCount = 0
    x = 0
    until primeCount == term
        primeCount = 0
        until primeCount == term || x > max
            if x > 1 && sieve[x] != false
                sieve[x] = true
                primeCount+= 1
                total = x * 2
                while total < max
                    sieve[total] = false
                    total += x
                end
            end
            x += 1
        end
        max *= 2 if primeCount != term
    end
    primes = []
    sieve.each_key do |key|
        primes.push key if sieve[key]
    end
    primes
end
puts "Please input the prime term you'd like to calculate"
puts eratosthenes(gets.to_i).last
