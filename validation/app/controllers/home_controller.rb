class HomeController < ApplicationController
  def index
  end

  def create
  	@person = Person.new
  end

  def create_person
  	@person = Person.create(:name => params[:person][:name], :email =>params[:person][:email], :email_confirmation => params[:person][:email_confirmation],:gender => params[:person][:gender])
  end
end
