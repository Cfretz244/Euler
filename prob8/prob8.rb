hugeNumber = gets
largest = -1
beginning = 0
ending = 4
until ending >= hugeNumber.length
    section = hugeNumber[beginning..ending]
    total = 0
    5.times {|x| total == 0 ? total = section[x].to_i : total *= section[x].to_i}
    largest = total if total > largest
    beginning += 1
    ending += 1
end
puts largest
