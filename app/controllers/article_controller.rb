class ArticleController < ApplicationController
  def index
    @articles = Article.all.order('created_at DESC')
  end

  def detail
    @article = Article.find_by(id: params[:id])
  end

  def new
    @article = Article.new()
  end

  def post
    @article = Article.new(content: params[:content], title: params[:title])
    if @article.save
      redirect_to("/")
    else
      render("article/new")
    end
  end
end
