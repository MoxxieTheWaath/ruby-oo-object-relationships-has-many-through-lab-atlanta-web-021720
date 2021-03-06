class Patient
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end
    def appointments
        Appointment.all.select do |appointInstan|
            appointInstan.patient == self
        end
    end
    def doctors
        appointments.map do |a|
            a.doctor
        end
    end
end