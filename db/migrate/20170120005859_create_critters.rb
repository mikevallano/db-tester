class CreateCritters < ActiveRecord::Migration
  def change
    create_table :critters do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
