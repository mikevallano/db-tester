class AddManagerIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :manager_id, :integer, index: true
  end
end
