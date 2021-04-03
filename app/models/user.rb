class User < ApplicationRecord
    has_many :subscriptions
    has_many :streaming_services, through: :subscriptions

    validates_uniqueness_of :username
    validates_presence_of :username

    has_secure_password
end
