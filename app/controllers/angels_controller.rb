class AngelsController < ApplicationController
  def index
    # apply filters to the angel list and show results
    @angels = Angel.all
  end

  def filters
    # choose filters form
  end
end
