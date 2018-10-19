class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
  end

  def show
    @article_item = Article.friendly.find(params[:id])

    @article = Article.includes(:comments).friendly.find(params[:id])
    @comment = Comment.new
  end
end
