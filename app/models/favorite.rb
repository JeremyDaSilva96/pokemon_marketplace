class Favorite < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
end
