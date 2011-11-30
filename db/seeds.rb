dog = Dog.create!(:name => 'Ezio')
for i in 1..10000 do
  x = Kernel.rand(400) + 50
  y = Kernel.rand(300) + 100
  dog.positions.create!(:x => x, :y => y, :time => 4.hours.ago + i * 5.seconds)
end
