class Physician < ActiveRecord::Base
	has_many :appointments
	has_many :paitents, :through => :appointments
end
