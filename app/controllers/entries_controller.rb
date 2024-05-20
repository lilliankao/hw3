class EntriesController < ApplicationController

  def new
    @place = Place.find_by({ "name" => params[:place_id] })
  end

  def create
    @place = Place.find_by({ "name" => params[:place_id] })

    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["posted_on"] = params["posted_on"]
    @entry["description"] = params["description"]
    @entry["place_id"] = @place["id"]
    @entry.save
    redirect_to "/places/#{params["place_id"]}"

  end

end