class PagesController < ApplicationController

  def home
    @coach = Coach.all

  end





end
