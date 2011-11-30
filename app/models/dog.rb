class Dog < ActiveRecord::Base
  has_many :positions

  def current_position
    self.positions.where("time <= :now", :now => DateTime.now).order('time DESC').last
  end

  def past_positions
    self.positions.where("time <= :now", :now => DateTime.now).order('time DESC')
  end
end
