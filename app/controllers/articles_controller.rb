class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article_item = Article.find(params[:id])
  end
end
