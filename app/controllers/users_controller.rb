class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if request.post?
       User.create(user_params)
    end

    redirect_to '/sessions/new'
  end


  private
  def user_params
    params.require(:user).permit(:user_id, :name, :password_digest)
    # ここに指定していないものはuser_paramsで値を渡す時に消える。paramsには残る
  end
end
