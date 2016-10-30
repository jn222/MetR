class ReservationsController < ApplicationController
  require 'capital_one'

  before_filter :require_login
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.spot_id = params[:spot_id]
    @reservation.price = @reservation.spot.price * (@reservation.end - @reservation.start)/3600
    @reservation.user_id = current_user.id
    @reservation.save
    Config.apiKey = "a0edc2ce6ddbea44b9f8381f06919a73"
    
    redirect_to spot_path(@reservation.spot, notice:"Reservation successfully made.")
  end

  private
    def reservation_params
      params.require(:reservation).permit(:start, :end, :price)
    end
end
