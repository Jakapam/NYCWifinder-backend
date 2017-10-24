class HotspotsController < ApplicationController
  def all
    hotspots = Hotspot.all
    render json: hotspots
  end

  def boroughs
    borough = Borough.find_by(name: params[:borough])

    render json: borough.hotspots
  end

  def neighborhoods
    neighborhood = Neighborhood.find_by(name: params[:neighborhood])

    render json: neighborhood.hotspots
  end

  def zipcodes
    zipcode = Zipcode.find_by(zipcode_num: params[:zipcode])

    render json: zipcode.hotspots
  end
end
