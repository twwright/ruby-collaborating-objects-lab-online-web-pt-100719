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
	
	def self.new_by_filename(filename)
        artist = Artist.all.select{|artist| artist.name == file_array[0]}
        if artist == nil 
            artist = Artist.new(file_array[0])
        else
            artist = artist.pop
        end 
        song.artist = artist_obj
        song
    end
	
	def artist_name=(artist)
		artist.find_or_create_by_name(artist)
		artist.add_song(self)
	end
	
end