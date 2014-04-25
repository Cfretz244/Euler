require 'bigdecimal'

def findCycle decimal
    cycles = []
    for i in 0..decimal.size - 1
        char = decimal[i]
        indexes = []
        cycles.each_index do |index|
            indexes.push(index) if cycles[index][0] == char
        end
        if indexes.size > 0
            for currentIndex in indexes
                success = true
                cycleCount = 0
                decCount = i
                while decCount < decimal.size
                    success = false if cycles[currentIndex][cycleCount] != decimal[decCount]
                    break if not success
                    cycleCount < cycles[currentIndex].size - 1 ? cycleCount += 1 : cycleCount = 0
                    decCount += 1
                end
                return cycles[currentIndex].size if success
            end
        end
        cycles.each_index {|index| cycles[index] += char}
        cycles.push char
    end
    0
end

num = BigDecimal.new(1)
max = 0
answer = 0
for i in 2..999
    denom = BigDecimal.new(i)
    decString = num.div(denom, 1000).to_s
    decString = decString[2..decString.index('E') - 1]
    decString = decString[0..-2] if decString.size > 900
    length = findCycle decString
    if length > max
        max = length
        answer = i
    end
end
puts answer
