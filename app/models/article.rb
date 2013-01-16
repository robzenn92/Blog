class Article < ActiveRecord::Base
  attr_accessible :content, :datetime, :title, :user_id
  validates :content, :presence => true, :length => { :minimum => 1, :maximum => 15000 }
  belongs_to :user
  has_many :comments
  has_many :likes
end
