module SpotsHelper
  def spot_params
    params.require(:spot).permit( :price, :latitude, :longitude, :image)
  end
end
