class HomeController < ApplicationController
  def index
  end
	
  def show
    @find = User.find(2)
	@find1 = User.find( [ 1, 5 ])	
	@take = User.take
	@take1 = User.take(3)
	@take2 = User.take(3).first
	@first = User.first
	@first1 = User.first(3)
	@last = User.last
	@last1 = User.last(4)
	@find_by = User.find_by name: 'surbhi'
	@users = User.all
	@find_each = User.find_each
	@users1 = User.where(" city = 'fbd' ")
	@users2 = User.where(" name = ?", params[:name])
	@users3 = User.where( name: "surbhi")
	@users4 = User.where( id: ( 1..5))
	@subset = User.where( id: [1,4,7])
	@users5 = User.where.not(name: 'neha')
	@order = User.order(:name)
	@order1 = User.order(name: :desc)
	@order2 = User.order(name: :desc, city: :asc)
	@select = User.select("name, city, gender")
	@distinct = User.select( "name" ).distinct
	@limit = User.limit(4)
	@offset = User.limit(3).offset(4)
	@group = User.select("name").group(:name)
	@group1 = User.group( :name ).count
	@having = User.select(:name).group(:name).having("sum(id) > ?", 4)
	@unscope = User.where('id > 4').limit(3).offset(1).order("name asc").unscope(:limit)
	@unscope1 = User.where('gender = ?', 'female').order('name asc').unscope(:where)
	@only = User.where('city = ?', 'noida').order('gender asc').only(:where)
	@reorder = User.order('name asc').reorder('name')
	@reverse_order = User.order('name desc').reverse_order
	@join = User.joins('right outer join articales on users.id = articales.user_id')
    @innerjoin = User.joins(:articales)
    @innerjoin1 = User.joins(:articales, :comments)
    @innerjoin2 = User.joins( articales: :comments)
    @innerjoin3 = User.joins(:articales).where('gender = ?','female').where(id:[ 1..2])
    @pluck = User.limit(5).pluck( :id, :name, :gender, :city)
    @ids = User.ids
  end

  def form

  end

  def create
    @user = User.create( :name => params[:name], :city => params[:city], :gender => params[:gender])
  end

  def delete_user

  end

  def delete
  	@user = User.where( :name => params[:name], :city => params[:city], :gender => params[:gender])
  	@user.delete_all
  end

  def update

  end

  def update_user
  	@user = User.find_by( :id => params[:id])
  end

  def update_complete
  	@user = User.find_by( :id => params[:id])
  	@user.update(:name => params[:name], :city => params[:city], :gender => params[:gender], :id => params[:id])
  end	
end
