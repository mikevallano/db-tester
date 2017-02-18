class CreateCarls < ActiveRecord::Migration
  def change
    create_table :carls do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
