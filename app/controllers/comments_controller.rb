class CommentsController < ApplicationController

  before_filter :find_article

  # GET /comments
  # GET /comments.json
  def index
    @comments = @article.comments.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = @article.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = @article.comments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = @article.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create

    @comment = @article.comments.build(params[:comment])
    @comment.user = @user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to user_article_url(@user, @article), notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = @article.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to user_article_comments_url, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to user_article_comments_url, notice: 'Comment was successfully destroied' }
      format.json { head :no_content }
    end
  end

protected
  def find_article
      @article = Article.find(params[:article_id])
      @user = @article.user
  end
end
