class ClientsController < ApplicationController
  # GET /clients/1
  def show
    @client = Client.find_by(user: params[:u])
    render json: {user: @client.user, requests: @client.requests}
  end

  # POST /clients
  def create
    @client = Client.new(user: (params[:client][:user]).downcase.gsub(" ",""), requests: 0)

    if @client.save and not @client[:user].nil?
      render json: { status: :ok }
    else
      render json: @client.errors
    end
  end
end
