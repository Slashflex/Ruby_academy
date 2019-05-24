class AddTypeIdToPokemons < ActiveRecord::Migration[5.2]
  def change
  add_column :pokemons, :type_id, :integer
  add_index :pokemons, :type_id
  end
end