class Api::UsersController < ApplicationController
  protect_from_forgery with: :null_session
  skip_before_filter  :verify_authenticity_token

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def create
    user = User.create name: user_params[:name], email: user_params[:email], pass: user_params[:pass],
                             telefon: user_params[:telefon], adresa: user_params[:adresa]  

    render json: user, status: :created
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :pass, :telefon, :adresa)
  end

end
