class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :streaming_service

    validates_presence_of :monthly_price
    
    scope :find_subscriptions, ->{self.where user_id: "1"}
end
