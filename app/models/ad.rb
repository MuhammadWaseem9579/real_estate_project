class Ad < ApplicationRecord
  belongs_to :user
  has_one_attached :avatar
  has_one_attached :avatar1
  has_one_attached :avatar2
  has_one_attached :avatar3
end
