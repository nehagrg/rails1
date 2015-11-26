class AppointmentController < ApplicationController
  def appointment_index
  	@doctors = Doctor.all
    @appointments     

  end

  def appointments

  	@appointments = Appointment.join(:doctor)

  end


  
  def create_appointment
  	@appointment = Appointment.new
  	
  end

  def created_appointment
  	@appointment = Appointment.create(:doctor_id =>params[:doctor_id],:patient_id =>params[:patient_id],:appointment_date =>params[:date_time])
  	redirect_to :action => "appointment_index"
  end	
	
end
