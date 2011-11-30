class HomeController < ApplicationController
  def index
    @dog = Dog.first
    @positions = @dog.past_positions.limit(5).collect do |position|
      {
        :x => position.x,
        :y => position.y
      }
    end
  end
end
