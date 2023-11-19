class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @article_section = ArticleSection.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article.id)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :image_url, :author)
  end
end
