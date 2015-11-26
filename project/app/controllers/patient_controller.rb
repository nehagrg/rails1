class PatientController < ApplicationController
  def patient_index
  	@patient = Patient.new
  	@patient1 = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create_patient
	@patient = Patient.create(:name =>params[:patient][:name], :gender =>params[:patient][:gender], :age => params[:patient][:age])
    redirect_to :action => "patient_index"
  end

  def remove
    
  end	

  def delete_patient
  	@patient = Patient.where(:id =>params[:id])
  	@patient.delete_all
  	redirect_to :action => "patient_index"
  	
  end	

  def edit
  	
  end

  def update_patient
    @patient = Patient.find(params[:id])
  
  end

  def updated_patient
  	@patient = Patient.find_by( :id => params[:patient][:id])
  	@patient.update(:name =>params[:patient][:name], :gender =>params[:patient][:gender], :age => params[:patient][:age])
  	redirect_to :action => "patient_index"
  end

end
