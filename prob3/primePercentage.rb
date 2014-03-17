def isPrime num
    divisor = (num / 2).floor
    while divisor > 1
        if num % divisor == 0
            return false
        end
        divisor -= 1
    end
    true
end

def calcLargestPrimeFactor num
    currentDivisor = (num / 2).floor
    while currentDivisor > 1
        if isPrime(currentDivisor) && num % currentDivisor == 0
            return currentDivisor
        end
        currentDivisor -= 1
    end
    return nil
end

puts "Input starting point"
startNum = gets.to_i
puts "Input stopping point"
stopNum = gets.to_f

total = 0
maxValue = -1
maxPercentage = -1
(startNum..stopNum.to_i).each do |num|
    percentage = (((num - startNum) / (stopNum - startNum)) * 100).floor
    puts "#{percentage}% completed" if percentage % 10 == 0
    prime = calcLargestPrimeFactor num
    if prime != nil
        percentage = prime / num.to_f
        maxValue, maxPercentage = prime, percentage if percentage > maxPercentage
        total += prime / num.to_f if prime != nil
    end
end
puts total / stopNum
puts maxValue
puts maxPercentage
