class AddPokemonIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :pokemon_id, :integer
    add_index :comments, :pokemon_id
  end
end
