module ArticlesHelper

	def comment_path(comment)
	  url_for :controller => "comments", :action => "show",
	      :article_id => comment.article, :id => comment
	end
	def edit_comment_path(comment)
	  url_for :controller => "comments", :action => "edit", 
	      :article_id => comment.article, :id => comment
	end
end
