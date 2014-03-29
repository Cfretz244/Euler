grid = []
$count = 0
for i in 0..20
    grid[i] = []
    for k in 0..20
        grid[i][k] = true
    end
end
def permute grid, y, x
    return if !grid[y] || !grid[y][x]
    if !grid[y + 1] && !grid[y][x + 1]
        $count += 1
        puts $count if $count % 1000000 == 0
        return
    end
    permute grid, y, x + 1
    permute grid, y + 1, x
end
permute grid, 0, 0
puts $count
