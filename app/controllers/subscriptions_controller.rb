class SubscriptionsController < ApplicationController
  before_action(:require_login)


  def index
    #binding.pry
    if params[:user_id]
      current_user #This ensures that the user will only be getting their own account's subscription list because it validates the session[:user_id]
      @subscriptions = @current_user.subscriptions
        if @subscriptions
          @total_price = 0
          @subscriptions.each do |subscription|
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
    binding.pry
        if @subscription.save
          redirect_to user_subscriptions_path(current_user)
        else #I used notice: here because the only way a user can enter invalid data is by not submitting a dollar amount.
          redirect_to user_subscriptions_path(current_user), notice: "Monthly price can't be blank!"
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

    def get_streaming_service_by_id
      @streaming_service = StreamingService.find_by(id: params[:streaming_service_id]) 
    end

    def subscription_params
      params.require(:subscription).permit(:monthly_price, :streaming_service_id, :subscription_notes, :shared_user_accounts)
    end
end
