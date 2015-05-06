# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  args = [a,b,c].sort
  negative_or_zero_args = args.select { |x| x <= 0 }
  
  if (negative_or_zero_args.length > 0 || (args[0] + args[1]) <= args[2])
    raise TriangleError.new
  end
  
  if (a == b) || (a == c) || (b == c)
    if (a == b) && (b == c)
      :equilateral
    else
      :isosceles
    end
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
