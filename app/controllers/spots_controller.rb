class SpotsController < ApplicationController
  include SpotsHelper

  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.username = current_user.username
    @spot.user = current_user
    @spot.save
    flash.notice = "Spot created!"
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
    @reservation = Reservation.new
    @reservation.spot_id = @spot.id
    @user = current_user
  end
end
