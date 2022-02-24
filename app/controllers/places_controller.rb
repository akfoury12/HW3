
class PlacesController < ApplicationController
#form
def new
@place = Place.new
end

#save
def create
@place = Place.new(params["place"])
@place.save
redirect_to "/places"
end

#read
def index
@places = Place.all
end

#display
def show
@place = Place.find(params["id"])
end
end

#end