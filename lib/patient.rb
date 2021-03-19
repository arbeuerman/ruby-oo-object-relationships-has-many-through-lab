class Patient

    #instance getters and setters
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
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end 

    def doctors
        appointments.map { |appointment| appointment.doctor }
    end 
end 
