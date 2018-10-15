class ArticlesController < ApplicationController
  has_many :comments, dependent: :destroygit 

  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

end
