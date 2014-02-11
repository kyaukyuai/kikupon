class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
  # Setup accessible
  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  validates_uniqueness_of :username
end
