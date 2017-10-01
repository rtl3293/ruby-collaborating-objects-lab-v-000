require 'pry'
require_relative 'artist.rb'
class Song

  attr_accessor :name, :artist_name

  def initialize(name)
    @name = name

  end

  def self.new_by_filename(filename)
    song_info = filename.split("-")

    song_info.each do |info|
      info.strip!
    end

    new_song = Song.new(song_info[1])
    new_song.artist_name(song_info[0])

    #binding.pry
    new_song
  end

  def artist_name(name)
    new_artist = Artist.find_or_create_by_name(name)
    self.artist = new_artist
  end


end

Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
