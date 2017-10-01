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

    song_info.each do |info|
      info.strip!
    end

    new_song = Song.new(song_info[1])
    new_song.artist = Artist.find_or_create_by_name(song_info[0])
    new
  end


end

Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
