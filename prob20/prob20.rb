def fact term
    return term if term == 1
    return term * fact(term - 1)
end

def digsum term
    total = 0
    strterm = term.to_s
    strterm.split("").each {|c| total += c.to_i}
    total
end

big = fact 100
puts digsum big
