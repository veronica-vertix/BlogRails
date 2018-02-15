# Veronica Vazquez
# Ruby on Rails 
# CD of an article's comments 

class CommentsController < ApplicationController
    def create

        # get an article
        @article = Article.find( params[:article_id])

        # store a new article's comments 
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy 
        @article = Article.find(params[:article_id])

        # get an article's comments by id
        @comment = @article.comments.find(params[:id])

        # destroy the specified comment
        @comment.destroy
        redirect_to article_path(@article)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
end
