class User < ActiveRecord::Base
  validates :name, exclusion: { in: %w(deepak preeti)}
  validates :name, inclusion: { in: %w(shruti ayush rahul AYUSH)}, allow_nil: true
  validates :city, length: { in: 1..3}
  validates :gender, length: {maximum: 5}
  validates :email, length: {minimum: 5}
  validates :age, numericality: true
  validates :exprience, numericality: { only_integer: true}
  validates :age, numericality: { greater_than: 14}
  validates :exprience, numericality: { only_integer: true, greater_than_or_equal_to: 3}
  validates :age, numericality: { odd: true}
  validates :email, presence: true
  validates :fav_color, absence: true
  validates :name, uniqueness: { strict: true}
  validates :name, uniqueness: {case_sensitive: true}
  validates :gender, length: {maximum: 5}, allow_blank: true
  validates :age, numericality: { odd: true, message: "can-not be even"}

end
