class DoctorController < ApplicationController

    def index
      @doctor = Doctor.new
      @doctor1 = Doctor.all
    end 

	def create
	  @doctor = Doctor.new
	end

	def create_doctor
      @doctor = Doctor.create(:name =>params[:doctor][:name], :gender =>params[:doctor][:gender], :age => params[:doctor][:age])
      redirect_to :action => "index"
    end

    def delete
      
    end

    def delete_doctor
      @doctor = Doctor.where(:id =>params[:id])
      @doctor.delete_all
      redirect_to :action => "index"
    end

    def update
      
    end	

    def update_doctor
      @doctor = Doctor.find_by(:id => params[:id])
    end

    def updated_doctor
      @doctor = Doctor.find_by(:id => params[:doctor][:id])
      @doctor.update(:name =>params[:doctor][:name], :gender =>params[:doctor][:gender], :age => params[:doctor][:age])
      redirect_to :action => "index"
    end
	
end
