grid = []
$count = 0
puts "Enter grid size"
size = gets.to_i - 1
for i in 0..size
    grid[i] = []
    for k in 0..size
        grid[i][k] = true
    end
end
def permute grid, y, x
    if !grid[y] || !grid[y][x]
        $count += 1
        puts $count if $count % 1000000 == 0
        return
    end
    permute grid, y, x + 1
    permute grid, y + 1, x
end
permute grid, 0, 0
puts $count
