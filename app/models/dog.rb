class Dog < ActiveRecord::Base
  has_many :positions

  def current_position
    self.positions.where("time <= :now", :now => DateTime.now).order('date DESC').last
  end
end
