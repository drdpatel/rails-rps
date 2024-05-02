Rails.application.routes.draw do

  get("/home", { :controller => "pages",:action =>"home" })
  get("/", { :controller => "game", :action =>"get_home" })
  get("/rock", { :controller => "game", :action =>"play_rock"})
  get("/paper", { :controller => "game", :action =>"play_paper"})
  get("/scissors", { :controller => "game", :action =>"play_scissors"})

end
