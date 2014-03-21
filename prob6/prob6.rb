squareOfSums = 0
sumOfSquares = 0
101.times do |x|
    if x > 0
        sumOfSquares += x ** 2
        squareOfSums += x
    end
end
squareOfSums = squareOfSums ** 2
puts "Square of Sums: #{squareOfSums}"
puts "Sum of Squares: #{sumOfSquares}"
puts "Difference: #{(squareOfSums - sumOfSquares).abs}"
