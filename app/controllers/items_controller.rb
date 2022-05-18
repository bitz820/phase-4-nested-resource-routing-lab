class ItemsController < ApplicationController

  def index
    # byebug
    items = Item.all
    user = User.find_by(id: params[:user_id])
    if user 
      render json: user.items, status: :ok
    # elsif user == nil
    #   render json: items, status: :ok
    else
      render json: {error: ""}, status: 404
    end
  end

  def show 
    # debugger
    user = User.find_by(id: params[:user_id])
    

    end

end
