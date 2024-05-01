class Pokemon < ApplicationRecord
  belongs_to :user, optional: true
  has_many :favorites
  has_many :orders
  has_many :requests

  include PgSearch::Model
  pg_search_scope :search_by_fr_name,
    against: [ :fr_name ],
    using: {
      tsearch: { prefix: true }
    }

  validates :fr_name, :credit, :pokemon_type, :image, :catch_rate, :jp_name, presence: true
end
