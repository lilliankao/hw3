class PlacesController < ApplicationController
  def index
    @places = Place.all
     end
 
  def show
    @place = Place.find_by({ "name" => params["id"] })
    @entry = Entry.where({ "place_id" => params["id"] })
  end

  def new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place.save
    redirect_to "/places"
  end
end

