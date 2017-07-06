class ArticleController < ApplicationController

  before_action :authenticate_user!

  def add
    @article = Article.new
    respond_to do |format|
      format.html
    end
  end

  def edit
    @article = Article.find_by_id params[:id]
    Rails.logger.debug params.inspect
    respond_to do |format|
      format.html
    end
  end

  def save
    @article = Article.create(title: params[:article][:title], body: params[:article][:body])
    respond_to do |format|
      if @article.save
        format.html { redirect_to url_for(:action => "add", :controller => "article"), alert: 'Successfully saved.' }
        # format.html { redirect_to article_add_path, alert: 'Successfully save.' } ## using this wont re-populate the form
      else
        format.html { render action: "add" }
      end
    end
  end

  def update
    @article = Article.find_by_id params[:article][:id]
    respond_to do |format|
      @article.title = params[:article][:title]
      @article.body = params[:article][:body]
      if @article.save
       format.html { redirect_to url_for(:action => "edit", :controller => "article", :id => @article.id), alert: 'Successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def view
  end

  def delete
    @article = Article.find(params[:id])
    @article.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
