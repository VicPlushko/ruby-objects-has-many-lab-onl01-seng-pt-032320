class Artist
  attr_accessor :name
   
   @@song_count = 0
   
   def initialize(name)
     @name = name
   end
   
   def songs
     Song.all
   end
   
   def add_song(song)
     song.artist = self
     @@song_count += 1
   end
   
   def add_song_by_name(name)
     song = Song.new(name)
     song.artist = self
     @@song_count += 1
   end
   
   def self.song_count
     @@song_count += 1
   end
 end

  