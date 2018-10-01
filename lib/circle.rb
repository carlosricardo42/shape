# Shape  Interface definition 
class Shape
  def getArea(r)
      raise "This is not implemented!"
  end

  def draw(r)
      raise "This is not implemented!"
  end
end

# Error definition class to handle raise events
class AreaError < StandardError; end

class Circle < Shape
  include Math
  
  # Input: radius, integer
  # @return area of a circle   
  def getArea(radius)
    if radius.is_a?(Numeric) && radius >= 0
        return  (PI * radius*radius).round(2)
    else
        raise AreaError.new "Debe ser un numero positivo"
    end
  end

  #Input: radius, integer
  #print: a circle shape in console 
  #Notes: It can add the next paramenters x, y, width, heigh 
 # with these parameters you can add a functionality to draw the circle with the mouse.
 
  def draw(r)
    (-radius..radius).each do |x|
      (-radius..radius).each do |y|
        print distance_from_center(x,y).round == radius ? '#' : '.'
      end
      puts
    end
  end

  private 
  #input: x,y axis
  #@return: distance from center to border of the circle
  def distance_from_center(x,y)
    return Math.sqrt(x**2 + y**2)
  end
end
