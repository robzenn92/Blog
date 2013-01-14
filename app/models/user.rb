class User < ActiveRecord::Base
  attr_accessible :image_url, :name, :surname, :id
  has_many :articles
  has_many :comments
end
