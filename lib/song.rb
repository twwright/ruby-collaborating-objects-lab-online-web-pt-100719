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
		song.artist_name = files[0]
		song
	end
	
	def artist_name=(artist)
		artist.find_or_create_by_name(artist)
		artist.add_song(self)
	end
	
end