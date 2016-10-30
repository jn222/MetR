module SpotsHelper
  def spot_params
    params.require(:spot).permit( :price, :image, :address, :description)
  end
end
