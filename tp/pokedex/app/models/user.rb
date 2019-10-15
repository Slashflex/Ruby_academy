# frozen_string_literal: true

class User < ActiveRecord::Base
  belongs_to :role
  has_many :pokemons
  has_many :comments

  validates :login, presence: {
    message: 'Il faut un login !'
  }
  validates :login, uniqueness: {
    message: 'Ce login existe déjà !'
  }
  validates :password, presence: {
    message: 'Il faut un mot de passe !'
  }

  def admin?
    role.name == 'admin'
  end
end
