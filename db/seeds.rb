dog = Dog.create!(:name => 'Ezio')
for i in 1..10000 do
  x = Kernel.rand(400) + 50
  y = Kernel.rand(300) + 100
  dog.positions.create!(:x => x, :y => y, :time => 18.hours.ago + i * 15.seconds)
end
