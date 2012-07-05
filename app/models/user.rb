class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessible :email, :password, :password_confirmation

  validates :password, :confirmation => true
  validates :password, :presence => true, :on => :create
  validates :email,    :presence => true, :uniqueness => true
end
