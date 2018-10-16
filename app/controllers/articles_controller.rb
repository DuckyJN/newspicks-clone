class ArticlesController < ApplicationController
  has_many :comments, dependent: :destroy

  def index
    @articles = Article.all
  end
end
