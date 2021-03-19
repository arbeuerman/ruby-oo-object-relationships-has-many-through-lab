class Doctor

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
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end 

    def patients
        appointments.map { |appointment| appointment.patient }
    end 

end 
