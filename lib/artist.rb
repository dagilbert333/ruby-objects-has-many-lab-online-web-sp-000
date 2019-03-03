class Artist 
  attr_accessor :name, :songs
  @@songs = []
  
  def initialize(name)
    @name = name
    @@songs << self
  end
  
  def songs
    @@songs
  end
  
  def add_song(song_name)
    @@songs << song_name
    song_name.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @@songs << song
    song.artist = self
  end
  
  def self.song_count
    

  end
  
end