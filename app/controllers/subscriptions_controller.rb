class SubscriptionsController < ApplicationController
  before_action(:require_login)

  def index
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      @subscriptions = user.subscriptions
        if @subscriptions != nil
          summed_subscriptions = user.subscriptions.find_subscriptions(current_user)
          @total_price = 0
          summed_subscriptions.each do |subscription|
          @total_price += subscription.monthly_price
          end
        else
          redirect_to streaming_services_path     
        end
    end
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
      if params[:subscription_id]
        @subscription.subscription_id = paramsparams[:subscription_id]
      end
        if @subscription.save
          #flash[:message] = "Subscription created!"
          redirect_to user_subscriptions_path(current_user)
        else
          @subscriptions = Subscription.all
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
