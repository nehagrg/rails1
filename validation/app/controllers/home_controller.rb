class HomeController < ApplicationController
  def index
  end

  def create
  	@person = Person.new
  end

  def create_person
  	@person = Person.create(:name => params[:person][:name], :email =>params[:person][:email], :email_confirmation => params[:person][:email_confirmation],:gender => params[:person][:gender])
  end

  def employee
  	@employee = Employee.new
  end

  def create_employee
  	@employee = Employee.new(:name => params[:employee][:name], :age => params[:employee][:age], :salary => params[:employee][:salary], :dept => params[:employee][:dept])
  	
  end
  
end
