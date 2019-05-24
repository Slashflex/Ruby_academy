class AddAttachmentImageToPokemons < ActiveRecord::Migration[5.2]
  def self.up
    change_table :pokemons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pokemons, :image
  end
end
