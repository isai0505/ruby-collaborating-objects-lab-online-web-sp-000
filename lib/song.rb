# class Song
#   attr_accessor :artist, :name
#
#   # other methods
#   def initialize(name)
#     @name = name
#   end
#
#   def self.new_by_filename(filename)
#       song = self.new
#       song.title = filename.split(" - ")[1]
#       song
#   end
#
#   def artist_name=(name)
#     if (self.artist.nil?)
#       self.artist = Artist.new(name)
#     else
#       self.artist.name = name
#     end
#   end
# end

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    splitname = filename.split(" - ")
    self.new(split_name[1])
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end

end
