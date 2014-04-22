require 'set'

def divisorSum term
    sqrt = Math.sqrt term
    sum = 0
    for i in 1..sqrt
        if term % i == 0
            counter = term / i
            (counter != i and i != 1) ? sum += i + counter : sum += i
        end
    end
    sum
end

abundants = Set.new
pairs = Set.new
composites = Set.new
results = Set.new
for i in 1..28123
    if i < divisorSum(i)
        abundants.add i
    end
    results.add i
end
puts abundants.size
puts results.size
for elem1 in abundants
    for elem2 in abundants
        sym = "#{[elem1, elem2].min}|#{[elem1, elem2].max}".to_sym
        if not pairs.include? sym
            pairs.add sym
            composites.add(elem1 + elem2)
        end
    end
    puts elem1
end

results.delete_if {|elem| composites.include? elem}
total = 0
for result in results
    total += result
end
puts total
