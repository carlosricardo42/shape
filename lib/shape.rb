class Shape
  def getArea(radius)
      raise "This is not implemented!"
  end

  def draw(radius)
      raise "This is not implemented!"
  end
end


# class Circle < Shape

#     def getArea(r)
#         unless r.is_a? Integer raise "Debe ser un numero"
#         puts "El area del circulo es #{3.1416 * r * r }"
#     end

#     def draw(r)
#         area = getArea(r)
#         puts "La forma en que lo haría"
#     end
# end

# c = Circle.new
# c.getArea(3)


# require "test/unit"
 
# class CircleTest < Test::Unit::TestCase

#     define Cirlce do
#         subject { describe_class.new }


#         describe "getArea" do
            
#         end
#     end
  
# end