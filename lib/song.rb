class Song

    #instance variables getters and setters
    attr_accessor :name, :artist, :genre 

    #class variables
    @@all = []

    #constructor
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 

end 
