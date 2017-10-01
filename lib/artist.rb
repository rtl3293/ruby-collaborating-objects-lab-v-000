require_relative 'song.rb'

class Artist
  attr_accessor :name
  @songs = []
  @@all = []
  def initialize(name)
    @name = name
    self.save
  end

  def self.all
    @@all
  end


  def add_song(song)
    binding.pry
    @song << song
    #@@song_count += 1
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.any? { |artist| artist.name == name }
      return @@all.find { |artist| artist.name == name}
    else
      self.new(name)
    end
  end

  def songs
    @songs
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end


song_one = Song.new("Rock With You")
song_two = Song.new("Smooth Criminal")
artist.add_song(song_one)
artist.add_song(song_two)
