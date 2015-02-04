Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE a new photo record
  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/photos/create_photo", { :controller => "photos", :action => "create_row" })


  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Routes to EDIT photos

  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/update_photo/:id", { :controller => "photos", :action => "update_photo" })


  # Routes to DELETE photos

  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

end
