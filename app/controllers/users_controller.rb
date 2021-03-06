class UsersController < ApplicationController

  def new
    @user = User.new
  end



  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to @user

    else
      render 'new'
    end

  end




  def show
    @users = User.all
    @user = User.find(params[:id])
    @coachs = @user.coaches(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      SampleMailer.send_when_update(current_user).deliver

      flash[:success] = "Profile updated"
          redirect_to @user
    else
      render 'edit'
    end

  end





private

          def user_params
            params.require(:user).permit(:name, :email, :icon, :password, :password_confirmation)
          end


end
