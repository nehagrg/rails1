class Employee < ActiveRecord::Base
  validates :dept, acceptance: true
end
