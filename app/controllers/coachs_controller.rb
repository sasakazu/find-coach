class CoachsController < ApplicationController


  def new
    @coach = Coach.new
  end


  def edit
    @user = User.find(params[:id])
    @coach = Coach.find(params[:id])
  end




    def create
      @coach = current_user.coaches.build(coach_params)
      if @coach.save
        redirect_to current_user
      else
        render 'new'
      end
    end


    def show
      @coach = Coach.find(params[:id])
    end

    def index

    end



  private

            def coach_params
              params.require(:coach).permit(:sex, :age, :area, :jangle, :name, :face)
            end




end
