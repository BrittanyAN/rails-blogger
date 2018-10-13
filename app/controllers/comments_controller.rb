class CommentsController < ApplicationController
    def create
        @comment = Commnet.new(commnet_params)
        @comment.article_id = params[:article_id]

        @commnet.save

        redirect_to article_path(@comment.article)
    end

    def commnet_params
        params.require(:comment).permit(:author_name, :body)
    end
end
