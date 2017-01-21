class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
