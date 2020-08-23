class User < ApplicationRecord
    has_secure_password
    has_many :lists

    validates :username, presence: true
end
