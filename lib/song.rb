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
    artist_array = []
    artist_array.each do |added|
      if @@artists.any? {|person| person == added}== false
        artist_array << person
      end
    end
    artist_array
  end

  def self.genres
    @@genres
  end

  def self.genre_count

  end

  def self.artist_count

  end

end
