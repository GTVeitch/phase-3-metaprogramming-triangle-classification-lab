class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)

    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    if (self.isTriangle == true)
      if ( @side1 == @side2)
        if ( @side1 == @side3 )
          if ( @side2 == @side3 )
            return :equilateral
          end
        end
      end

      if ( @side1 == @side2 )
        return :isosceles
      end
      if ( @side1 == @side3 )
        return :isosceles
      end
      if ( @side2 == @side3 )
        return :isosceles
      end

      :scalene

    else
      begin
        raise TriangleError
      end

    end
  end

  def isTriangle
    if (@side1 > 0)
      if( @side2 > 0)
        if (@side3 > 0)
          if (@side1 < @side2 + @side3)
            if (@side2 < @side1 + @side3)
              if (@side3 < @side1 + @side2)
                return true
              end
            end
          end
        end
      end
    end
    return false
  end

  class TriangleError < StandardError
    def message
      "????? thats not a triangle"
    end
  end

end