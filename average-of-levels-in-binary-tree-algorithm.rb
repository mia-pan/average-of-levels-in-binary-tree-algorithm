
[
    9,
    20,
    15,
    7
    
    ]
    
    sudo 
    let queue = []
    queue.push(input)
    fristLevel = queue.shift()  // 3
    current = queue.shift()   
    secondLevel = 
        
    keep of the level
    keep track of current node and current level
    max to compare current levels
    levelResult = sum of level[i] / level.length
    result << levelResult
    
      Average of Levels in Binary Tree
    Input:
        3
       / \
      9  20
        /  \
       15   7
    Input: [3, 9, 20, 15, 7]
    Output: [3, 14.5, 11]
    Explanation:
    The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].
        
    def average_of_levels(root)
    queue = []
    values_at_level = {}
    
    maxDepth = 0
    queue.push([root, 0])
    
    #BFS to make the hash
    while !queue.empty?
        current = queue.shift  // 3
        currentNode = current[0]  // 3
        currentLevel = current[1]  // 
        # do work
    
      
    # checks if key already exists for level, if not, creates it
    if values_at_level[currentLevel]
        values_at_level[currentLevel] << currentNode.val
    else 
        values_at_level[currentLevel] = [currentNode.val]
    end 
    
    maxDepth = [currentLevel, maxDepth].max
        
    if currentNode.left
        queue << [currentNode.left, currentLevel + 1]
    end
    
    if currentNode.right
        queue << [currentNode.right, currentLevel + 1]
    end
    end
    
    result = []
    # average each level from values_at_level hash
    for i in 0..maxDepth do
        levelResult = values_at_level[i].sum / values_at_level[i].length.to_f
        result << levelResult
    end
    
    return result
    end 
        