MyMusicDatabase::Application.routes.draw do
  root :to => 'songs#index'
  get "/search", :to => "songs#search", :as => :search
  get "/start", :to => "songs#start", :as => :start
  get "/stop", :to => "songs#stop", :as => :stop
end
