class AddUserIdToTherapists < ActiveRecord::Migration[6.0]
  def change
    add_column :therapists, :user_id, :bigint
  end
end
