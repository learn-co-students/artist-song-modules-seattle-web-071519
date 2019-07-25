require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramble
  attr_accessor :name
  attr_reader :artist

  @@songs = []


  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  #instructions said to delete this comment - I want to keep in for future reference
  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
