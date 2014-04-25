require 'set'

terms = Set.new
for i in 2..100
    for k in 2..100
        term = i ** k
        terms.add(term) if not terms.include? term
    end
end

puts terms.size
