class AddUserIdToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :user_id, :integer
    add_index :pokemons, :user_id
  end
end
