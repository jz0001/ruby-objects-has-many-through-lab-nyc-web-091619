require "pry"

class Patient

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def self.all
        @@all
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end

      
end