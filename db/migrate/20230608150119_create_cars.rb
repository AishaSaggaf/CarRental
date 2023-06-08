class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :km_travelled
      t.float :latitiude
      t.float :longitude
      t.datetime :available_from
      t.datetime :available_to

      t.timestamps
    end
  end
end
