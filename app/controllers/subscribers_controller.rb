class SubscribersController < ApplicationController

   def new
      @subscriber = Subscriber.new
   end

   def create
      @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
         flash[:success] = "You've Been Added to Our Subscription List :D"
         redirect_to root_path
      else
         flash[:success] = "Style Not :D"
         redirect_to root_path
      end

   end

   private

   def subscriber_params
       params.require(:subscriber).permit(:firstname, :email)
   end
end