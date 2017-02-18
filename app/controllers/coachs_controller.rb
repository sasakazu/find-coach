class CoachsController < ApplicationController


  def new
    @coach = Coach.new
  end


  def show
    @coach = Coach.find(params[:id])

  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def update
    @coach = Coach.find(params[:id])
    if @coach.update_attributes(coach_params)
      flash[:success] = "Profile updated"
          redirect_to @coach
    else
      render 'edit'
    end

  end




    def create
      @coach = current_user.coaches.build(coach_params)
      if @coach.save
        redirect_to current_user
      else
        render 'new'
      end
    end

    def index
      @coachs = Coach.all
      @users = User.all


    end



  private

            def coach_params
              params.require(:coach).permit(:sex, :age, :area, :jangle, :name, :face, :when, :money, :user_id, :explain)
            end


            def user_params
                params.require(:user).permit(:name, :email, :icon, :password, :password_confirmation)
            end




end
