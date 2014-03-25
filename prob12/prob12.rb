answer = 0
counter = 1

def numDivisors num
    sqrt = Math.sqrt num
    count = 0
    for i in 1..sqrt
        if num % i == 0
            count += 1
        end
    end
    count * 2
end

divisorCount = -1
while true
    answer += counter
    if numDivisors(answer) >= 500
        puts answer
        break
    end
    counter += 1
end
