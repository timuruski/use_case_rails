class UsersController < ApplicationController
  def index
    @users = ListUsers.run
    render json: @users
  end

  def show
    @user = FetchUser.run(id: user_id)
    render json: @user
  end

  def create
    @user = CreateUser.run(user: user_params)
    render json: @user
  end

  def update
    @user = UpdateUser.run(id: user_id, **user_params)
    render json: @user
  end

  def destroy
    DestroyUser.run(id: user_id)
  end

  private def user_params
    params.require(:user).permit(:name, :email)
  end

  private def user_id
    params.fetch(:id)
  end
end
