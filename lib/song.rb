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
  end

end
