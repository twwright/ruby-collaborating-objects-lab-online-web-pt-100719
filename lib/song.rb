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
        artist_obj = Artist.all.select{|artist| artist.name == file_array[0]}
        if artist_obj == [] 
            artist_obj = Artist.new(file_array[0])
        else
            artist_obj = artist_obj.pop
        end 
        song.artist = artist_obj
        song
    end
	
	def artist_name=(artist)
		artist.find_or_create_by_name(artist)
		artist.add_song(self)
	end
	
end