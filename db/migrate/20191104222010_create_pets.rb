class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :image
      t.text :cause
      t.integer :goal

      t.timestamps
    end
  end
end
