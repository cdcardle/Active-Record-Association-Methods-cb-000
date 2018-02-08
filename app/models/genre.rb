class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    artists = []
    self.songs.each {|song| artists << song.artist.name}
    artists.uniq.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end
