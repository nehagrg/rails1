class HomeController < ApplicationController
  def index
	@appointmet = Appointment.new
  end
end
