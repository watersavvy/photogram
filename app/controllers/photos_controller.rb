class PhotosController < ApplicationController
  
  def index
    @list_of_photos = Photo.all
  end

# single photo view
  def show 
  	@photo = Photo.find_by({ :id => params["id"] })
  end

# add data in form for a new record
  def new_form

  end

#
  def create_row
  	@photo = Photo.new

  	@photo.caption = params["the_caption"]
  	@photo.source = params["the_source"]

  	@photo.save
  end


end
