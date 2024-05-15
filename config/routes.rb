Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", {:controller => "director", :action => "list"})
  get("/directors/youngest", {:controller => "director", :action => "youngest"})
  get("/directors/eldest", {:controller => "director", :action => "oldest"})
  get("/directors/:the_id", {:controller => "director", :action => "detail"})
  
  get("/movies", {:controller => "movie", :action => "list"})
  get("/movies/:the_id", {:controller => "movie", :action => "detail"})

  get("/actors", {:controller => "actor", :action => "list"})
  get("/actors/:the_id", {:controller => "actor", :action => "detail"})

end
