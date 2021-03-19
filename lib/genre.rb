class Genre

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
    def songs
        Song.all.select { |song| song.genre == self }
    end 

    def artists
        songs.map { |song| song.artist }
    end 
    
end 
