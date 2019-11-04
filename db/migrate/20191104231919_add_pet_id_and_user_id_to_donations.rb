class AddPetIdAndUserIdToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :pet_id, :integer
    add_column :donations, :user_id, :integer
  end
end
