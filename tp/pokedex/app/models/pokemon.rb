class Pokemon < ActiveRecord::Base
    belongs_to :type
    belongs_to :user
    has_many :comments

    has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "100x100>"}, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    scope :feu, ->{where(type_id: 1)}
    scope :eau, ->{where(type_id: 2)}
    scope :plante, ->{where(type_id: 3)}

    validates :name, presence: {
        message: "Il manque le nom du pokémon !"
    }
    validates :name, uniqueness: {
        message: "Ce pokémon existe déjà dans votre pokédex."
    }
    validates :content, presence: {
        message: "Il manque la description du pokémon !"
    }
end
  