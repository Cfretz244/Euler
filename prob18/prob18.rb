class TriangleNode
    attr_accessor :left, :right, :lParent, :rParent, :data
    def initialize data
        @data = data
    end
    def inspect
        "(#{@data})"
    end
end

def nodify numbers
    nodes = []
    for i in 0..numbers.size - 1
        nodes.push TriangleNode.new(numbers[i].to_i)
    end
    nodes
end

def traverse node, total
    return if node == nil
    total += node.data
    $largest = total if total > $largest
    traverse(node.left, total)
    traverse(node.right, total)
end

graph = []
File.open('pyramid.txt').read.each_line do |line|
    numbers = line.split ' '
    nodes = nodify numbers
    term = numbers.size - 1
    if term == 0
        graph[0] = nodes[0]
    else
        for i in 0..term
            node = nodes[i]
            if i == 0
                graph[term] = node
                rightParent = graph[term - 1]
                node.rParent = rightParent
                rightParent.left = node
            elsif i != term
                pastNode = nodes[i - 1]
                leftParent = pastNode.rParent
                node.lParent = leftParent
                leftParent.right = node
                rightParent = leftParent.rParent.right
                node.rParent = rightParent
                rightParent.left = node
            else
                pastNode = nodes[i - 1]
                leftParent = pastNode.rParent
                node.lParent = leftParent
                leftParent.right = node
            end
        end
    end
end
$largest = 0
traverse graph[0], 0
puts $largest
