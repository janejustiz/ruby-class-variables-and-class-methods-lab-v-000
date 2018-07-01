class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @genre_hash = {}
  @artist_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    if @genre_hash.keys.any?{|x| x == @genre} == true
      @genre_hash[@genre] = @@genres.count(@genre)
    end
  end

  def self.artist_count

  end

end
