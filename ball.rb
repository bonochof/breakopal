class Ball < Sprite
  attr_writer :dx, :dy
  
  def initialize (x, y, image)
    super(x, y, image)
    @dx = 4
    @dy = -4
  end
  
  def update
    self.x += @dx
  end
end
