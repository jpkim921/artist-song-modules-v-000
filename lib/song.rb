require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  # class method to find a particular song by name in the class variable
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  # assign artist to song. ie create the belongs to relationship
  def artist=(artist)
    @artist = artist
  end

  def self.reset_all
    @@songs.clear
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.count
    self.all.count
  end

  def self.all
    @@songs
  end
end
