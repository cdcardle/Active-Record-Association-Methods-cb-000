class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.all_artist_names.count
  end

  def all_artist_names
    artists = []
    self.songs.each {|song| artists << song.artist.name}
    artists.uniq
  end
end
