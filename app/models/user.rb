class User < ActiveRecord::Base
  has_secure_password 
  has_many :albums
  validates :email, format: {with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "Invalid email address"}
  validates_uniqueness_of :username, message:  "Username already exists, choose another one!"
  validates_uniqueness_of :email, message:  "Email already exists, choose another one!"
end
