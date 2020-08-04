class User < ApplicationRecord
    has_many :todos
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    has_secure_password
    has_secure_token
end
