def powerCheck term
    digits = []
    term.to_s.each_char {|char| digits.push char.to_i}
    total = 0
    digits.each {|elem| total += elem ** 5}
    total == term
end

total = 0

for i in 2..1000000
    total += i if powerCheck i
end

puts total
