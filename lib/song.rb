class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  genre_hash = {}
  artist_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def count
    @@count
  end

  def artists
    @@artists
  end

  def genres
    @@genres
  end

  def genre_count
    @@genres.each do |item|
      genre_hash[item] = @@genre.count(item)
    end
  end

  def artist_count
  end
end
