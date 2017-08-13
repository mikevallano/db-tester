class AddDateOrderedToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :ordered_at, :date
  end
end
