class ChangeCarlToClarl < ActiveRecord::Migration
  def up
    rename_table :carls, :clarls
    remove_column :clarls, :description, :string
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Can't rename the table"
  end
end
