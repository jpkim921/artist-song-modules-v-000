require 'pry'

class Song

  extend Memorable

  attr_accessor :name
  attr_reader :artist

  @@artists = []

  def initialize
    @@artists << self
  end

  # class method to find a particular song by name in the class variable
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  # assign artist to song. ie create the belongs to relationship
  def artist=(artist)
    @artist = artist
  end

  # replaces a space with a hyphen within a name
  def to_param
    name.downcase.gsub(' ', '-')
  end

  # reader method to read @@artists
  def self.all
    @@artists
  end
end
