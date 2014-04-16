def divisorSum term
    total = 0
    sqrt = Math.sqrt term
    for i in 1..sqrt
        if term % i == 0 and i != 1
            opposite = term / i
            total += opposite + i
        elsif i == 1
            total += 1
        end
    end
    total
end

total = 0
seen = []
for i in 1..10000
    sum1 = divisorSum i
    sum2 = divisorSum sum1
    if i == sum2 and i != sum1 and not seen.include? i
        total += i + sum1
        seen.push i
        seen.push sum1
    end
end
puts total
