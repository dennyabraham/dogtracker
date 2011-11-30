class PositionsController < InheritedResources::Base
  belongs_to :dog
  custom_actions :resource => :current, :collection => :past
  def current
    @dog = Dog.find(params[:dog_id])
    @position = @dog.current_position
    show!
  end

  def past
    @dog = Dog.find(params[:dog_id])
    @positions = @dog.past_positions
    index!
  end
end
