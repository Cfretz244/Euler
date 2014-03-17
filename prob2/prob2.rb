def evenFibAdd max
    counter = 1
    answer = 0
    until counter > max
        if fib(counter) % 2 == 0
            answer += fib(counter)
        end
        counter += 1
    end
    answer
end

def fib term
    if term == 0 or term == 1
        return 1
    end
    fib(term - 1) + fib(term - 2)
end


puts evenFibAdd 33
