class TableComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments
    add_column :comments, :content, :text
  end
end
