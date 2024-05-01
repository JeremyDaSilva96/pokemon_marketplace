class Request < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
  validates :proposal, presence: true
end
