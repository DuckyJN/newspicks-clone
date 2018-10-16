class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article_item = Article.find(params[:id])

    @article = Article.includes(:comments).find(params[:id])
    @comment = Comment.new
  end
end
