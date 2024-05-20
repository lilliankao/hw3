class PlacesController < ApplicationController
  def index
    @places = Place.all
     end
 
  def show
    @place = Place.find_by({ "name" => params["id"] })
    @entries = Entry.where(place_id: @place["name"] )

   # @company = Company.find_by({ "id" => params["id"] })
   # @contacts = Contact.where({ "company_id" => @company["id"] })
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

