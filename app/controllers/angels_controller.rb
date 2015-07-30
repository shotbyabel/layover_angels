class AngelsController < ApplicationController
  
  def index
    binding.pry
    # apply filters to the angel list and show results
    # if params[:gender] == "male"
    #   @users = Angel.males
    # elsif params[:gender] == "female"
    #   @users = Angel.females
    # else
      @angels = Angel.all
    # end
  end



  def filters
    # choose filters form
  end
end
