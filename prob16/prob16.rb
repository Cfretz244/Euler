total = 0
num = (2 ** 1000).to_s
num.chars do |char|
    total += char.to_i
end
puts total
