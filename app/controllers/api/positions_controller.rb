class Api::PositionsController < InheritedResources::Base
  belongs_to :dog
  respond_to :json
  custom_actions :resource => :current, :collection => :past
  def current
    @dog = Dog.find(params[:dog_id])
    @position = @dog.current_position
    show!
  end

  def past
    @dog = Dog.find(params[:dog_id])
    @positions = @dog.past_positions.order('time DESC').limit(5).collect do |position|
      {
        :x => position.x,
        :y => position.y
      }
    end
    index!
  end
end
