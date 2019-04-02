class CommentsController < ApplicationController
  before_action :find_post

  def create
    comment = @post.comments.build(params[:comment].permit(:name, :body))
    comment.save
    redirect_to post_path(@post)
  end

  def destroy
    comment = @post.comments.find(params[:id])
    comment.destroy

    redirect_to post_path(@post)
  end

  private
    def find_post
      @post = Post.find(params[:post_id])
    end

end
