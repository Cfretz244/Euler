def eratosthenes max
    sieve = Hash.new
    max.times do |x|
        if x > 1 && sieve[x] != false
            sieve[x] = true
            total = x * 2
            while total < max
                sieve[total] = false
                total += x
            end
        end
    end
    primes = []
    sieve.each_key do |key|
        primes.push key if sieve[key]
    end
    primes
end

def largestPrime primes, max
    primes.reverse.each do |x|
        if max % x == 0
            puts x
            return
        end
    end
end

puts "Enter your number"
num = gets.to_i
primes = eratosthenes Math.sqrt(num).ceil.to_i
largestPrime primes, num
