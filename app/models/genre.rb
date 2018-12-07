class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    songs.count
  end

  def artist_count
    artists.uniq.count
  end

  def all_artist_names
    artists.uniq.map {|x| x.name}
  end
end
