class PlacesController < ApplicationController

#here need to define certain actions

def new
@place = place.new
end

def 
show @place = place.find(params["id"])
end

def create
@place = Place.new(params["place"])
@place.save
redirect_to "/places"
end

def index
@places = Place.ApplicationController
end

#covers places actions
