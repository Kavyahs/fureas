class UsersController < ApplicationController


   def new
    @user = User.new
   end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

      @user = User.find(params[:id])


  end

  def update
        @user = User.find(params[:id])
        if @user.update(user_params)
             redirect_to users_path
       else
          flash[:notice] = "You are not authorizable person to delete this?"
            redirect_to users_path
       end

  end

  def destroy
    @user = User.find(params[:id])
    if @user.user_id == current_user.id
    @user.destroy
    redirect_to users_path
  else
    flash[:notice] = "You are not authorizable person to delete this?"
    redirect_to root_path
  end
end


private
def user_params
    params.require(:user).permit(:name, :email, :gender, :address, :state, :country, :image)
  end
end
