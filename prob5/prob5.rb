answer = 1
begin
    found = false
    until found
        answer += 1
        found = true
        for i in 11..20
            if answer % i != 0
                found = false
            end
        end
    end
    puts answer
rescue Exception => e
    puts answer
end
