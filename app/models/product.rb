class Product < ApplicationRecord
  has_many :raffles
  has_many :users, through: :raffles, dependent: :destroy

end
