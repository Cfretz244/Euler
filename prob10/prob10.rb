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

primes = eratosthenes 2000000
total = 0
primes.each {|x| total += x}
puts total
