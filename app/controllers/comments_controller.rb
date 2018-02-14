class CommentsController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[]
        @comment.post_id = params[]
        @comment.save
        
        redirect_to "posts/show/#{}"
    end
    
    def destroy
        @comment = Comment.find()
        @comment.destroy
        
        redirect_to "posts/show/#{}"
    end
end
