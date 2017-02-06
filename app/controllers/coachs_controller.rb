class CoachsController < ApplicationController


  def new
    @coach = Coach.new
  end




    def create
      @coach = Coach.new(coach_params)
      if @coach.save
        redirect_to root_url
      else
        render 'new'
      end
    end





  private

            def coach_params
              params.require(:coach).permit(:sex)
            end




end
