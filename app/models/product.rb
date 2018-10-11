class Product < ApplicationRecord
  # mount_uploader :photo, ImageUploader
  has_many :raffles
  has_many :users, through: :raffles, dependent: :destroy
  belongs_to :user
  validates :user, presence: true
end
