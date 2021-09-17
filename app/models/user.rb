class User < ApplicationRecord
    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :fullname, presence: true
    validates :tel_no, presence: true, uniqueness: true
    has_secure_password
    has_many :orders
    has_many :favorites
    has_many :products, through: :favorites
end
