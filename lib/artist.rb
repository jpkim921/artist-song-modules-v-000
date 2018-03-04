require 'pry'

class Artist

  extend Memorable

  attr_accessor :name
  attr_reader :songs

  # where all artist class will be held
  @@collection = []

  # class method to find a particular artist by name in the class variable
  def self.find_by_name(name)
    @@collection.detect{|a| a.name == name}
  end

  # initializes adding itself into the class variable and creating an array to hold the has many songs
  def initialize
    @@collection << self
    @songs = []
  end

  # reader method to read @@collection
  def self.all
    @@collection
  end

  # adds song to has many songs array and also creates belongs to association to song's artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # takes an array of songs and adds each and all songs to the artist
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # replaces a space with a hyphen within a name
  def to_param
    name.downcase.gsub(' ', '-')
  end

end
