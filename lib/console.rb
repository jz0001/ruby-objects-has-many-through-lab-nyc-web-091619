require "pry"

require_relative "appointment.rb"
require_relative "doctor.rb"
require_relative "patient.rb"


doctor_who = Doctor.new('The Doctor')
doctor_what = Doctor.new('Das Doktor')
hevydevy = Patient.new('Devin Townsend')
a1 = hevydevy.new_appointment(doctor_who, 'Friday, January 32nd')
a2 = hevydevy.new_appointment(doctor_what, 'Saturday, January 32nd')

binding.pry