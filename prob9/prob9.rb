1000.times do |a|
    1000.times do |b|
        if b > a
            c = Math.sqrt((a ** 2) + (b ** 2))
            if (a + b + c) == 1000
                puts "A: #{a}"
                puts "B: #{b}"
                puts "C: #{c}"
                puts "ABC = #{a * b * c}"
            end
        end
    end
end
