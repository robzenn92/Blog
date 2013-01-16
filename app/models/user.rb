class User < ActiveRecord::Base
  attr_accessible :image_url, :name, :surname, :id, :created_at, :email, :password_digest, :password, :password_confirmation, :description
  has_secure_password
  has_many :articles
  has_many :comments
end
