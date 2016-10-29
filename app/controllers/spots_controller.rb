class SpotsController < ApplicationController
  include SpotsHelper

  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.save
    redirect_to spot_path(@spot)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end
end
