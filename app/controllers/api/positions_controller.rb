class Api::PositionsController < ApplicationController
  respond_to :json

  def past
    @dog = Dog.find(params[:dog_id])
    @positions = @dog.past_positions.order('time DESC').limit(5).collect do |position|
      {
        :x => position.x,
        :y => position.y
      }
    end
    respond_with(@positions, :callback => params[:callback])
  end
end
