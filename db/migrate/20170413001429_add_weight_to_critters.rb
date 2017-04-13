class AddWeightToCritters < ActiveRecord::Migration
  def change
    add_column :critters, :weight, :integer
  end
end
