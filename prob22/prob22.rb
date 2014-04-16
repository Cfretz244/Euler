rawNames = File.open('names.txt', 'r').read
names = []
rawNames.split(',').each do |name|
    name.sub!('"', '') while name.index('"') != nil
    names.push name
end
names.sort!
total = 0
names.each_index do |index|
    name = names[index]
    subtotal = 0
    name.each_char {|c| subtotal += c.ord - 64}
    subtotal *= index + 1
    total += subtotal
end
puts total
