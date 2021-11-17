class InflationAdjustsController < ApplicationController

  # GET /uf/:day
  def show
    user_name_value = request.headers['X-CLIENT']

    if Client.exists?(user: user_name_value)
      @client = Client.find_by(user: user_name_value)
      @inflation_adjust = InflationAdjust.find_by(day: params[:d])
      
      if not @inflation_adjust.nil?
        if not @inflation_adjust.errors.any?
          @client.update_attribute(:requests, @client.requests + 1)

          render json: { day: @inflation_adjust.day, price: @inflation_adjust.price, user_requests: @client.requests }
        else
          render json: @inflation_adjust.errors
        end

      else
        render json: {status: "NOT FOUND"}
      end

    else
      render json: {status: "AUTH ERROR"}
    end

  end
end