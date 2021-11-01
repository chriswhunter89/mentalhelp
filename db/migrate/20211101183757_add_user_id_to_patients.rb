class AddUserIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :user_id, :bigint
  end
end
