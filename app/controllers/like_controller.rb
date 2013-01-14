class LikeController < ApplicationController
  
  def add_like_to_article
	like = Like.new
	like.user_id = 1
	like.article_id = params[:article_id]
	like.save

	respond_to do |format|
      format.html # like.html.erb
      format.json { render json: @like }
  	end
  end

  def remote_like_from_article
  end
end
