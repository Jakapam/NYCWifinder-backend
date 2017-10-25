class ZipcodesController < ApplicationController

  def all
    zipcodes = Zipcode.all.map do | zipcode |
      zipcode.zipcode_num
    end

    render json: zipcodes

  end

end
