class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_spot

  def index
    @bookings = Booking.where("spot_id = ? AND end_time >= ?", @spot.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(spot_id: @spot.id)
  end

  def create
    @booking =  Booking.new(params[:booking].permit(:spot_id, :start_time, :length))
    @booking.spot = @spot
    if @booking.save
      redirect_to spot_bookings_path(@spot, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to spot_bookings_path(@spot)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @booking.spots = @spots

    if @booking.update(params[:booking].permit(:spot_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to spot_bookings_path(@spot)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to spot_booking_path(@spot, @booking)
      else
        render 'new'
      end
  end

  def find_spot
    if params[:spot_id]
      @spot = Spot.find_by_id(params[:spot_id])
    end
  end

end
