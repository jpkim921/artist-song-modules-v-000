require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

# assign artist to song. ie create the belongs to relationship
  def artist=(artist)
    @artist = artist
  end

  # reader method to read @@songs
  def self.all
    @@songs
  end

end
