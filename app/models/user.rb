class User < ApplicationRecord
    has_secure_password
validates :username, presence: true, uniqueness: { case_sensitive: false }
validates :fullname, presence: true
validate :tel_no, presence: true, uniqueness: true
    has_many :orders
    has_many :favorites
    has_many :products, through: :favorites
end
