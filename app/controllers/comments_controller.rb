class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article_id = @article.id
    if @comment.save
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
