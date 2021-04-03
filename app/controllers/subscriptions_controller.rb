class SubscriptionsController < ApplicationController
  before_action(:require_login)

  def index
    @subscriptions = Subscription.all
    summed_subscriptions = Subscription.find_subscriptions
    @total_price = 0
    summed_subscriptions.each do |subscription|
    @total_price += subscription.monthly_price
    end
    #binding.pry
  end

  def show
  end

  def new
    @subscription = Subscription.new
    get_streaming_service_by_id
  end

  def edit
    @subscription = Subscription.find_by(id: params[:id])
   
  end

  def create
   
    @subscription = Subscription.create(subscription_params)
    @subscription.user = current_user
      if @subscription.save
        redirect_to user_subscriptions_path(current_user), notice: "Subscription added!"
      else
        render :new
    end
  end

  def update
    @subscription = current_user.subscriptions.find_by(id: params[:id])
      if @subscription.update(subscription_params)
        redirect_to user_subscriptions_path(current_user), notice: "Subscription successfully updated!"
      else
        render :new
    end
  end

  def destroy
    set_subscription
    params[:id]
    @subscription.delete
    redirect_to user_subscriptions_path(current_user)
  end

  private
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    def subscription_params
      params.require(:subscription).permit(:monthly_price, :streaming_service_id)
    end
end
