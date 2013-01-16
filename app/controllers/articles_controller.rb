class ArticlesController < ApplicationController
  
  before_filter :find_user

  # GET /articles
  # GET /articles.json
  def index
    @articles = @user.articles.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = @user.articles.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/new
  # GET /articles/new.json
  def new
    @article = @user.articles.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  # GET /articles/1/edit
  def edit
    @article = @user.articles.find(params[:id])
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = @user.articles.build(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to user_articles_url(@user), notice: 'Article was successfully created.' }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render action: "new" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = @user.articles.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to user_articles_path(@user) , notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = @user.articles.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to user_articles_url, notice: 'Article was successfully destroied.'  }
      format.json { head :no_content }
    end
  end

  protected
  def find_user
      @user = User.find(params[:user_id])
  end
end
