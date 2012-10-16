MyMusicDatabase::Application.routes.draw do
  root :to => 'songs#index'
  get "/search", :to => "songs#search", :as => :search
end
