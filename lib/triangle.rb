class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    if self.a + self.b < self.c || self.a + self.c < self.b || self.b + self.c < self.a
      begin
        raise ShapeError
      rescue ShapeError => error
          puts error.message
      end
    elsif [self.a,self.b,self.c].set.size == 1
      :equilateral
    elsif [self.a,self.b,self.c].set.size == 2
      :isosceles
    else
      :scalene
    end
  end
  class ShapeError < StandardError
    def message
      "Shape does nnot meet spatial requirements to be a triangle"
    end
  end
end
