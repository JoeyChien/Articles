class Api::V1::ArticlesController < ApplicationController
  def index
    articles = Article.order('created_at DESC')
    render json: { status: 'SUCCESS', message: 'Show all articles', data: articles}
  end

  def show
    article = Article.find_by(id: params[:id])
    if article
      render json: { status: 'SUCCESS', message: 'Show article', data: articles}
    else
      render json: { status: 'ERROR', message: 'Article does not exist', data: 'nil'}
    end 
  end

  def create
    article = Article.new(article_params)
    
    if article.save
      render json: { status: 'SUCCESS', message: 'Saved article', data: article}
    else
      render json: { status: 'ERROR', message: 'Save failed', data: article.errors}
    end
  end

  def destroy
    article = Article.find_by(id: params[:id])
    if article
      article.destroy
      render json: { status: 'SUCCESS', message: 'Article was deleted', data: article}
    else
      render json: { status: 'ERROR', message: 'Article does not exist', data: 'nil'}
    end
  end

  
  def update
    article = Article.find_by(id: params[:id])
    if article
      if article.update(article_params)
        render json: { status: 'SUCCESS', message: 'Updated article', data: article}
      else
        render json: { status: 'ERROR', message: 'Update failed', data: nil}  
      end
    else
      render json: { status: 'ERROR', message: 'Article does not exist', data: 'nil'}
    end 
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end