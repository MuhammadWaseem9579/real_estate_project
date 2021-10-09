class Ad < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar3
  has_one_attached :avatar4
  has_one_attached :avatar5
end
