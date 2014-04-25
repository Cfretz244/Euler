def isPrime term
    term = term.abs
    root = Math.sqrt term
    for i in 2..root
        return false if term % i == 0
    end
    true
end

def quadForm n, a, b
    (n ** 2) + (a * n) + b
end

def enumeratePrimes a, b
    n = 0
    loop do
        ans = quadForm n, a, b
        break if not isPrime ans
        n += 1
    end
    n
end

finalA = -1000
finalB = -1000
max = 0
for a in -999..999
    for b in -999..999
        count = enumeratePrimes a, b
        if count > max
            max = count
            finalA = a
            finalB = b
        end
    end
end
puts "A: #{finalA}"
puts "B: #{finalB}"
puts "Max: #{max}"
puts "A * B: #{finalA * finalB}"
