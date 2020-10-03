class User < ActiveRecord::Base
  has_secure_password 
  has_many :albums
  validates :email, format: {with:/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
    message: "Invalid email address"}
end
