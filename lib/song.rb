class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_info = filename.split("-")
    new_song = Song.new(song_info[1].strip)
  end


end
