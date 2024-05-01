class Order < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
  validates :user_id, :pokemon_id, presence: true
end
