class HousesController < ApplicationController
  before_action :set_house, only: %i[show update destroy]

  # GET /houses
  def index
    @houses = House.all

    render json: @houses
  end

  # GET /houses/1
  def show
    render json: @house.as_json.merge({ image_url: picture_house_path(@house).to_s })
  end

  # GET /houses/:id/picture(.:format)
  def picture
    house = House.find_by(id: params[:id])

    if house.picture.attached?
      redirect_to rails_blob_url(house.picture)
    else
      redirect_to '/placeholder_house.jpg'
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_house
    @house = House.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def house_params
    params.permit(:location, :description, :bedrooms, :bathrooms)
  end
end
