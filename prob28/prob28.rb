def topRight
    total = 0
    for i in 1..500
        term = ((2 * i) + 1) ** 2
        total += term
    end
    total
end

def bottomLeft
    total = 0
    for i in 1..500
        term = ((2 * i) ** 2) + 1
        total += term
    end
    total
end

def otherDiagonal
    increment = 2
    prev = 1
    total = 0
    for i in 1..1000
        current = prev + (increment * i)
        total += current
        prev = current
    end
    total
end

total = topRight + bottomLeft + otherDiagonal + 1
puts total
