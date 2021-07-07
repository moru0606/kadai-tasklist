class UsersController < ApplicationController
  
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