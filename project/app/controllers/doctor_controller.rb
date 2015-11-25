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
    end

    def delete
      @doctor = Doctor.new

    end

    def delete_doctor
      @doctor = Doctor.where(:name =>params[:doctor][:name], :gender =>params[:doctor][:gender], :age => params[:doctor][:age])
      @doctor.delete_all
    end

    def update
    end	

    def update_doctor
      @doctor = Doctor.find_by(:id => params[:doctor][:id])
    end

    def updated_doctor
      @doctor = Doctor.find_by(:id => params[:doctor][:id])
      @doctor.update(:name =>params[:doctor][:name], :gender =>params[:doctor][:gender], :age => params[:doctor][:age])
    end
	
end
