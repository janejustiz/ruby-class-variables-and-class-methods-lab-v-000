class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

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
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.keys.any?{|genre| genre == @genre} == false
        genre_hash[genre] = @@genres.count(genre)
      end
    end
  end

  def self.artist_count
    count = {}
  end

end
