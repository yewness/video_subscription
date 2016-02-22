class User < ActiveRecord::Base
  belongs_to :category
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :rememberable, :trackable, :validatable, :registerable
  #, :recoverable 
end
