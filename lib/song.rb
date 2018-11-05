require 'pry'
require_relative './concerns/memorable'
require_relative './concerns/findable'

class Song
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
    include Paramble::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
