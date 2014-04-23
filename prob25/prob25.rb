#an unnecessary comment
fibTerm = 3
prev2 = 1
prev = 1
current = 2
until current.to_s.size >= 1000
    prev2 = prev
    prev = current
    current = prev2 + prev
    fibTerm += 1
end
puts fibTerm
