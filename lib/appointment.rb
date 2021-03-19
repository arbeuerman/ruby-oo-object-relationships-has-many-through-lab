class Appointment

    #instance variables getters and setters
    attr_accessor :date, :patient, :doctor

    #class variables
    @@all = []

    #constructor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient 
        @doctor = doctor
        @@all << self
    end 

    #class methods
    def self.all
        @@all
    end 
    
end 
