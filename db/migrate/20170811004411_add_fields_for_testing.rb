class AddFieldsForTesting < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, precision: 8, scale: 2

    create_table :transactions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :product, index: true
    end
  end
end
