class PagesController < ApplicationController

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @articles = Articles.includes(:comments).friendly.find(params[:id])
    @comment = Comment.new
    @page_title = @articles.article[:id]
  end

end
