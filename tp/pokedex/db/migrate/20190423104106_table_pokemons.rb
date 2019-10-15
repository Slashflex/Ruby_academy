class TablePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons
    add_column :pokemons, :name, :string
    add_column :pokemons, :content, :text
  end
end
