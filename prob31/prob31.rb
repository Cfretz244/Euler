require 'byebug'
$values = [100, 50, 20, 10, 5, 2, 1]

def maxMult deficit, term
    total = 0
    count = 0
    until total >= deficit
        total += $values[term]
        count += 1
    end
    total > deficit ? count - 1 : count
end

$combinations = 0
def permute deficit, term
    return if term == $values.size and deficit != 0
    mult = maxMult deficit, term
    until mult <= 0
        if deficit - (mult * $values[term]) == 0
            $combinations += 1
            mult -= 1
        end
        deficit -= $values[term] * mult
        permute deficit, term + 1
        deficit += $values[term] * mult
        mult -= 1
    end
end

byebug
permute 200, 0
puts $combinations
