class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.references :dog
      t.integer :x
      t.integer :y
      t.datetime :time

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
