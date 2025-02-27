class CommentsController < ApplicationController

  def index
  end

  def new
  end

  def create
    @comment = Comment.new
    @comment["comment"] = params["comment"]
    @comment["user_id"] = params["user_id"]
    @comment["post_id"] = params["post_id"] 
    @comment.save
    redirect_to "/posts"
  end

end
