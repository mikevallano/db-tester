class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_reference :critters, :owner, index: true
  end
end
