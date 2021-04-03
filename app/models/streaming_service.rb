class StreamingService < ApplicationRecord
    has_many :subscriptions
    has_many :users, through: :subscriptions
    has_many :top_titles
end
