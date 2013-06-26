class User < ActiveRecord::Base
  attr_accessible :email_address, :first_name, :last_name, :password
  validates :email_address, :first_name, :last_name, :password, :presence => true
  validates :first_name, :last_name, :length => {:minimum => 2}
  validates :password, :length => {:minimum => 6}
  validates :email_address, :length => {:minimum => 5}
end
