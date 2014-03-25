def collatzCount num
    count = 0
    until num == 1
        if num % 2 == 0
            num /= 2
        else
            num = (3 * num) + 1
        end
        count += 1
    end
    count
end

answer = -1
count = -1

for i in 1..1000000
    currentCount = collatzCount i
    answer, count = i, currentCount if currentCount > count
end
puts answer
