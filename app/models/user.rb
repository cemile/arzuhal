class User < ActiveRecord::Base
  has_many :tweets

  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true
  validates :bio, presence: true

end
