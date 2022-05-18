class UsersController < ApplicationController

  def show
    user = User.find_by(id: params[:id])
    if user.valid?
      render json: user, include: :items
    else
      render json: {errors: "Error" }, status: :not_found
    end
  end

  def index
  
  end

end
