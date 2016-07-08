class PostsController < ApplicationController

  def index
    @post = Post.all.sort_by { |post| post.created_at }.reverse.first
    @other_post = Post.all.reject { |post| post == @post }
  end

  def show
    @post = Post.all.find { |post| post.id == params[:id].to_i }
  end

end
