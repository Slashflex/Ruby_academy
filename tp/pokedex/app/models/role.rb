# frozen_string_literal: true

class Role < ActiveRecord::Base
  has_many :users
end
