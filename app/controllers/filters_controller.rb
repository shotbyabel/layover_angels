class FiltersController < ApplicationController
  


  def index
    @filters = Filter.all
  end

  def new
    @filter = User.new
  end

  def edit
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end
