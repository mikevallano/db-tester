class AddHasCollarToCritters < ActiveRecord::Migration
  def change
    add_column :critters, :has_collar, :boolean, default: false
  end
end
