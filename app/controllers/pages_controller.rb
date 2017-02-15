class PagesController < ApplicationController

  def home
    @coachs = Coach.all
    @users = User.all

  end


    private


          def user_params
            params.require(:user).permit(:name, :email, :icon, :password, :password_confirmation)
          end

          def coach_params
            params.require(:coach).permit(:sex, :age, :area, :jangle, :name, :user_id)
          end


end
