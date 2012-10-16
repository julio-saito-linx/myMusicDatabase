# encoding: UTF-8

class SongsController < ApplicationController
  def index
    @songs = Song.paginate(params[:page])
  end

  def search
    @songs = SongSearch.search(params)
  end

  def start
    filename = params[:filename]

    Process.kill("HUP", session[:pid]) rescue nil
    session[:pid] = spawn('cvlc', filename)

    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  def stop
    Process.kill("HUP", session[:pid]) rescue nil
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end
end
