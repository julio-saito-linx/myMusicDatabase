class SongSearch
  def self.search(params, repository = Song)
    repository.search(params[:search], {
      :page => params[:page],
      :per_page => Paginate::Config.size + 1
    })
  end
end
