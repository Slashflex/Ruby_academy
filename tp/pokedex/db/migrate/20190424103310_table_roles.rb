class TableRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles
    add_column :roles, :name, :string
  end
end
