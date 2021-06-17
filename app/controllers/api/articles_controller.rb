class Api::ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: { articles: articles }
  end

  def show
    article = Article.find(params[:id])
    render json: { article: article }
  end

  def create
    comment == comments.create(params[:article_id, :body])
    render json: { message: 'Your comment is submitted' }
  end
end
