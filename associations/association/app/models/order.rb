class Order < ActiveRecord::Base
	belongs_to :customer, autosave: true
end
