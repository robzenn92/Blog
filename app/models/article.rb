class Article < ActiveRecord::Base
  attr_accessible :content, :datetime, :title, :user_id
  belongs_to :user
  has_many :comments
  has_many :likes
end
