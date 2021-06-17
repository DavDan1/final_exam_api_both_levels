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
    comment = comments.create(params[:article])
    render json: { message: 'Your comment is submitted' } if comment.persisted?
  end
end
