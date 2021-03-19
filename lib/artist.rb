class Artist

    #instance variables getters and setters
    attr_accessor :name 

    #class variables
    @@all = []

    #constructor
    def initialize(name)
        @name = name
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 

    #instance methods
    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end 

    def songs
        Song.all.select { |song| song.artist == self }
    end 

    def genres
        songs.map { |song| song.genre }
    end 

end 
