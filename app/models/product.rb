class Product < ApplicationRecord
  belongs_to :user
  has_many :prices, dependent: :destroy
  #accepts_nested_attributes_for :prices, allow_destroy: true
end
