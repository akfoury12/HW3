class PostsController < ApplicationController

#form
def new
@post = Post.new
@place = Place.find(params["place_id"])
@post.place_id = @place.id
end

#save
def create
@post = Post.new(params["post"])
@post.save
redirect_to "/places/#{@post.place_id}"
end

#display
def show
@post = Post.find(params["id"])
end
end
