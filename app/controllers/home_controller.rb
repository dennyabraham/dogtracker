class HomeController < ApplicationController
  def index
    @dog = Dog.first
    @positions = @dog.past_positions.limit(5)
  end
end
