class PhotosController < ApplicationController
  
  def index
    @list_of_photos = Photo.all
  end

# single photo view
  def show 
  	@photo = Photo.find_by({ :id => params["id"] })
  end


end
