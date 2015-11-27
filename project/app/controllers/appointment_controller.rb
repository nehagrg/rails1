class AppointmentController < ApplicationController
  def appointment_index
    @appointment = Appointment.new
    @appointment1 = Appointment.all    

  end

  def appointments
    @appointment = Doctor.find(:id => params[:id]).appointments.select("appointment_date")
    redirect_to :action => "appointment_index"

  end

  def create_appointment
  	@appointment = Appointment.new
  end

  def created_appointment
  	@appointment = Appointment.create(:doctor_id =>params[:appointment][:doctor_id],:patient_id =>params[:appointment][:patient_id],:appointment_date =>params[:appointment][:appointment_date])
  	redirect_to :action => "appointment_index"
  end	
	
end
