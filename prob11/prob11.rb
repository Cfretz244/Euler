grid = []
File.foreach('grid.txt').with_index do |line|
    numbers = line.split " "
    20.times {|i| grid[i] = []}
    str = ""
    20.times do |y|
        20.times do |x|
            grid[y][x] = numbers[(y * 20) + x].to_i
        end
    end
end
largest = -1
4.times do |i|
    if i == 0
        yCount = 0
        until yCount == 20
            left = 0
            right = 3
            until right == 20
                product = -1
                for k in left..right
                    product == -1 ? product = grid[yCount][k] : product *= grid[yCount][k]
                end
                largest = product if product > largest
                left += 1
                right += 1
            end
            yCount += 1
        end
    elsif i == 1
        halfway = false
        length = 4
        until length < 4
            halfway ? base = [0, 20 - length] : base = [20 - length, 0]
            times = length - 4
            for j in 0..times
                product = -1
                current = base
                for k in 0..3
                    product == -1 ? product = grid[current[0]][current[1]] : product *= grid[current[0]][current[1]]
                    current = [current[0] + 1, current[1] + 1]
                end
                largest = product if product > largest
                base = [base[0] + 1, base[1] + 1]
            end
            halfway ? length -= 1 : length += 1
            halfway = true if length == 20
        end
    elsif i == 2
        xCount = 0
        until xCount == 20
            top = 0
            bottom = 3
            until bottom == 20
                product = -1
                for k in top..bottom
                    product == -1 ? product = grid[k][xCount] : product *= grid[k][xCount]
                end
                largest = product if product > largest
                top += 1
                bottom += 1
            end
            xCount += 1
        end
    else
        halfway = false
        length = 4
        until length < 4
            halfway ? base = [19, 20 - length] : base = [length - 1, 0]
            times = length - 4
            for j in 0..times
                product = -1
                current = base
                for k in 0..3
                    product == -1 ? product = grid[current[0]][current[1]] : product *= grid[current[0]][current[1]]
                    current = [current[0] - 1, current[1] + 1]
                end
                largest = product if product > largest
                base = [base[0] - 1, base[1] + 1]
            end
            halfway ? length -= 1 : length += 1
            halfway = true if length == 20
        end
    end
end
puts largest
