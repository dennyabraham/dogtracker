class PositionsController < InheritedResources::Base
  belongs_to :dog
  custom_actions :resource => :current
  def current
    @dog = Dog.find(params[:dog_id])
    @position = @dog.current_position
    show!
  end
end
