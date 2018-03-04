require 'pry'

class Artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :songs

  # where all artist class will be held
  @@artists = []

  # initializes adding itself into the class variable and creating an array to hold the has many songs
  def initialize
    # @@artists << self
    super
    @songs = []
  end

  # reader method to read @@artists
  def self.all
    @@artists
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

end
