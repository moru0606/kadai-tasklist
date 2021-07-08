class UsersController < ApplicationController
  
  # before_action :require_user_logged_in,only:[:show,:index]
  # before_action :already_login?,only:[:index,:show,:new,:create]
  
  # def index
  #   @user = User.all
  # end
   
  # def show
  #   @user = User.find(params[:id])
  # end 
   
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = "#{@user.name}が登録できました"
      redirect_to login_path
    else
      flash[:denger] = '登録に失敗しました'
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end