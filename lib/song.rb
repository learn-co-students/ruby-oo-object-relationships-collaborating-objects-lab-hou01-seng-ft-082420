require 'pry'

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file)
        arr = file.split(" - ")
        new_song = Song.new(arr[1])
        new_song.artist = Artist.new(arr[0])
        new_song
    end

    def artist_name=(name)
        art = Artist.find_or_create_by_name(name)
        self.artist = art
    end 

end