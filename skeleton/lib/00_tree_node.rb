class PolyTreeNode
  attr_accessor :value, :parent, :children
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  
  def parent=(node)
    if self.parent.nil?
        @parent = node 
        if node.nil?
        else
            unless node.children.include?(self)
                node.children.push(self)
            end
        end 
    else
        (self.parent).children.delete(self)
            @parent = node 
            if node.nil?
            else
                unless node.children.include?(self)
                    node.children.push(self)
                end
            end 
    end
  end 

end