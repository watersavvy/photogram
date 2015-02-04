class PhotosController < ApplicationController
  
   def edit_form   
   @photo = Photo.find_by({ :id => params["id"] })
   end

   def update_photo
   @photo = Photo.find_by({ :id => params["id"] })

   @photo.caption = params["caption"]
   @photo.source = params["source"]

   @photo.save
   end


  def index
    @list_of_photos = Photo.all
  end

# single photo view
  def show 
  	@photo = Photo.find_by({ :id => params["id"] })
  end

  def create_row
  	@photo = Photo.new

  	@photo.caption = params["caption"]
  	@photo.source = params["source"]

  	@photo.save
  end

  def new_form

  end

  def destroy
   @photo = Photo.find_by({ :id => params["id"] })

   @photo.destroy
   end


end
