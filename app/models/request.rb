class Request < ApplicationRecord
  belongs_to :pokemon
  belongs_to :user
end
