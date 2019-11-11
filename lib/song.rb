class Song
	attr_accessor :name, :artist
	@@all = []
	
	def initialize(name)
		@name = name
		@@all << self
	end
	
	def self.all
		@@all
	end
	
	def self.new_by_filename(filename)
		files = filename.split(" - ")
		song = self.new(files[1])
		looking_for = self.all.detect { |artist| artist.name == name }
    if looking_for == nil 
      self.new(name)
    else
      looking_for
    end
		song.artist_name = files[0]
		song
	end
	
	def artist_name=(artist)
		looking_for = Artist.all.detect { |artist| artist.name == name }
    if looking_for == nil 
      self.new(name)
    else
      looking_for
    end
		self.artist = looking_for
	end
	
end