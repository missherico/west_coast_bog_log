class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :animal_type
      t.string :color
      t.string :size
      t.string :description

      t.timestamps
    end
  end
end
