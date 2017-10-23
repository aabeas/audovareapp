class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :username, :email

  has_many :accounts

  delegate :talents, :agencies, to: :accounts
end
