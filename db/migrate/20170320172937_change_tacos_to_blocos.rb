class ChangeTacosToBlocos < ActiveRecord::Migration
  def change
    rename_table :tacos, :blacos
  end
end
