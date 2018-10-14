class ArticlesController < ApplicationController
  has_many :comments, dependent: :destroygit 

  def index
    @articles = Article.all
  end
  
end
