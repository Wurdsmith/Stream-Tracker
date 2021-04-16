class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :streaming_service

    validates_presence_of :monthly_price, :subscription_notes, :shared_user_accounts

    #Technically this scope method is not really necessary, but rather is included to satisfy the project requirements.
    scope :find_subscriptions, -> (current_user) {self.where user_id: current_user.id}
end
