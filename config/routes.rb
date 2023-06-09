Rails.application.routes.draw do

  # Routes for the Message resource:
  get("/", { :controller => "listings", :action => "index" })

  get("/welcome", { :controller => "listings", :action => "welcome" })

  get("/listings/new", { :controller => "listings", :action => "new" })

  #get("/categories/:category_id/items", { :controller => "categories", :action => "category" })

  get("/categories/new", { :controller => "categories", :action => "category" })

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })

  # READ
  get("/messages", { :controller => "messages", :action => "index" })

  post("/messages", { :controller => "messages", :action => "create" })

  get("/messages/:path_id", { :controller => "messages", :action => "show" })

  # UPDATE

  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })

  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })

  get("/categories/:path_id", { :controller => "categories", :action => "show" })

  

  # UPDATE

  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })

  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Listing resource:

  # CREATE
  post("/insert_listing", { :controller => "listings", :action => "create" })

  # READ
  get("/listings", { :controller => "listings", :action => "index" })

  get("/listings/:path_id", { :controller => "listings", :action => "show" })

  # UPDATE

  post("/modify_listing/:path_id", { :controller => "listings", :action => "update" })

  # DELETE
  get("/delete_listing/:path_id", { :controller => "listings", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create" })

  # EDIT PROFILE FORM
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  # SIGN OUT
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })

  get("/conversations", { :controller => "conversations", :action => "index" })

  

  get("/ask_me", { :controller => "open_api", :action => "index" })

  get("/fetch_gpt_response", { :controller => "open_api", :action => "create" })

  

  #------------------------------

end
