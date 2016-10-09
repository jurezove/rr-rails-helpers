class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :make
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
