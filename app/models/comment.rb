class Comment < ActiveRecord::Base
  attr_accessible :content, :datetime, :article_id, :user_id

  validates :content, :presence => true, :length => { :minimum => 1, :maximum => 140 }
  validates :datetime, :presence => true

  belongs_to :article
  belongs_to :user 
end
