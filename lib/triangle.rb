Skip to content
Search or jump to…

Pull requests
Issues
Marketplace
Explore
 
@cosmicChimp 
Learn Git and GitHub without any code!
Using the Hello World guide, you’ll start a branch, write comments, and open a pull request.


Code Pull requests 0 Projects 0 Actions Security Pulse
triangle-classification-onl01-seng-ft-012120/lib/triangle.rb / 
@reddevilcero reddevilcero Done.
d0c6ee4 3 days ago
@realAndrewCohn@ahimmelstoss@reddevilcero@kthffmn
36 lines (29 sloc)  709 Bytes
  
You're using code navigation to jump to definitions or references.
Learn more or give us feedback
class Triangle
  # write code here
 attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    self.side1 + self.side2 > self.side3 &&
    self.side2 + self.side3 > self.side1 &&
    self.side3 + self.side1 > self.side2
  end
  def kind 
    if self.valid?
      if self.side1 == self.side2 && self.side2 == self.side3
        return :equilateral
      elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
        return :isosceles
      else
        return :scalene
      end

    else
      raise TriangleError
    end
  end



  class TriangleError < StandardError
  end

end
© 2020 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About
