class UsersController < ApplicationController
  def index
    # render plain: "I'm in the index action!"
    render json: User.all
  end
  
  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def update
    user = User.find(params[:id])
    user.update_attributes(user_params)
  end
  
  def destroy
    user = User.find(params[:id])
    user.delete
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end