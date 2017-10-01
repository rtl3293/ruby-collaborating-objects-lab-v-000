require 'pry'
require_relative 'artist.rb'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    #binding.pry
    song_info = filename.split("-")

    new_song = Song.new(song_info[1].strip)

  end


end

Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
