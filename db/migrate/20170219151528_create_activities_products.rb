class CreateActivitiesProducts < ActiveRecord::Migration
  def change
    create_table :activities_products, id: false do |t|
      t.belongs_to :activity, index: true
      t.belongs_to :product, index: true
    end
  end
end
