class SpotsController < ApplicationController
  def new
    @spots = Spot.all
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @spot = Spot.find(params[:id])
  end
end
