class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  	@post = Post.find(params[:post_id])
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = Comment.create(params.require(:comment).permit(:name, :comment))
  	if @comment.save
  		redirect_to blog_path, notice: "Your comment has been posted!"

  	else 
  	 render :new
  	end 
  end

  def destroy
  end

  def edit
  end
end


