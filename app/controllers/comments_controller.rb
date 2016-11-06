class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params)
		if @comment.save
			redirect_to @post, notice: 'Comment was successfully created.'
		elsif
			! @comment.body.presence
  			redirect_to @post, notice: 'Content cannot be empty.'
  		else 
  			redirect_to @post, notice: 'Error creating comment.'
  		end
	end

	private

	def comment_params
		params.require(:comment).permit(:author, :body)
	end
end
