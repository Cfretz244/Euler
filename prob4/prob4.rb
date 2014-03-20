largest = -1
finX = -1
finY = -1
999.downto(0).each do |x|
    999.downto(0).each do |y|
        product = x * y
        productString = product.to_s
        if productString == productString.reverse && product > largest
            largest = product
            finX = x
            finY = y
        end
    end
end
puts "Palindrome: #{largest}"
puts "X: #{finX}"
puts "Y: #{finY}"
