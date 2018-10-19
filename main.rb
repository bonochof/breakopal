require 'dxopal'
include DXOpal

require_remote "bar.rb"
require_remote "wall.rb"
require_remote "ball.rb"
require_remote "game.rb"

Window.load_resources do
  game = Game.new
  game.run
end
