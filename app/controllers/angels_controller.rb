class AngelsController < ApplicationController

  def index
    # binding.pry

    # apply filters to the angel list and show results
    
    # "languages"=>["ENGLISH"]

    # "age"=>["21-27", "28-33", "34-39", "40-50", "51-63"],
    # ages = params[:age].map { |ar| ar.split("-").map { |a| a.to_i } }

    @angels = Angel.where(gender: params[:gender])

    if params[:zodiac]
      @angels = @angels.where(zodiac: params[:zodiac])
    end

    if params[:airport]
      @angels = @angels.reject { |angel| (angel.airport & params[:airport]).empty? }
    end
  end



  def filters
    # choose filters form
  end
end
