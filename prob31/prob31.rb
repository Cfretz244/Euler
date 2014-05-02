require 'debugger'; debugger
$values = [100, 50, 20, 10, 5, 2, 1]

def maxMult deficit, term
    total = 0
    count = 0
    until total >= deficit
        total += values[term]
        count += 1
    end
    count
end

$combinations = 0
def permute deficit, term
    return if term == keys.size and deficit != 0
    mult = maxMult deficit, term
    until mult == 0
        if deficit - (mult * values[term]) == 0
            $combinations += 1
            mult -= 1
        end
        deficit -= values[$term] * mult
        permute deficit, term + 1
    end
end

permute 200, 0
puts $combinations
