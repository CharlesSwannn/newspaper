class ArticleSectionsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @section = Section.find(params[:article_section][:section_id])
    @article_section = ArticleSection.new(article: @article, section: @section)
    if @article_section.save
      redirect_to article_path(@article)
    else
      render "articles/show", status: :unprocessable_entity
    end
  end
end
