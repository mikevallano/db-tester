class CreateSauces < ActiveRecord::Migration
  def change
    create_table :sauces do |t|
      t.string :name
      t.string :description
      t.belongs_to :taco, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
