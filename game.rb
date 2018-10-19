class Game
  def initialize
    reset
  end
  
  def reset
    @bar = Bar.new(0, 460, Image.new(100, 20, C_WHITE))
    @walls = [Wall.new(0, 0, Image.new(20, 480, C_GREEN)),
              Wall.new(0, 0, Image.new(640, 20, C_GREEN)),
              Wall.new(620, 0, Image.new(20, 480, C_GREEN)),
              @bar]
    @ball = Ball.new(300, 400, Image.new(20, 20).circle_fill(10, 10, 10, C_WHITE))
  end
  
  def run
    Window.loop do
      @walls.each do |wall|
        wall.draw
      end
    end
  end
end
