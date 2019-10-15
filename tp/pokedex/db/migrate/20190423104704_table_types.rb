class TableTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types
    add_column :types, :name, :string
  end
end
