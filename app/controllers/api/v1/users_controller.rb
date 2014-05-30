class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all

    render json: @users #{ message: "OK"}, status: 200
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: 200
    else
      render json: @user.errors, status: :unprocessable_entry
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    render json: { message: "Deleted OK"}, status: 200
  end

  private

  def user_params
    params.require(:user).permit(:status, :name, :gender, :company, :email, :phone, :address)
  end
end
