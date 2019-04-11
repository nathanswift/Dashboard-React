class Api::UsersController < ApplicationController
  before_action :set_company
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    render json: @company.users
  end

  def show
    render json: @user
  end

  def create
    user = @company.users.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors, status: 422
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: 422
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_company
      @company = Company.find(params[:company_id])
    end

    def user_params
      params.require(:user).permit(:name, :admin)
    end

    def set_user
      @user = User.find(params[:id])
    end
end
