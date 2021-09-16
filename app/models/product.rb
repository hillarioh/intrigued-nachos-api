class Product < ApplicationRecord
    belongs_to :category
    has_many :users, through: :favorites
    has_many :favorites
end
