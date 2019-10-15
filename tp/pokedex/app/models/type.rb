# frozen_string_literal: true

class Type < ActiveRecord::Base
  has_many :pokemons
end
