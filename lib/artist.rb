require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  # where all artist class will be held
  @@artists = []

  # class method to find a particular artist by name in the class variable
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  # class initialize adding itself into the class variable

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@artists.count
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
