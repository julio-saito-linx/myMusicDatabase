class SongsController < ApplicationController
  def index
    @songs = Song.paginate(params[:page])
  end

  def search
    @songs = Song.search(params[:search])
  end
end
