class Favorite < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user

  validates :pokemon_id, uniqueness: true
  validates :user_id, :pokemon_id, presence: true
end
