class SongsController < ApplicationController
  def index
    @songs = Song.paginate(params[:page])
  end

  def search
    @songs = SongSearch.search(params)
  end
end
