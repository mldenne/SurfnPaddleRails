class PostsController < ApplicationController

  def index
    @title = "Surf and Paddle Co."
    @post = Post.all.sort_by { |post| post.created_at }.reverse.first
    @other_post = Post.all.reject { |post| post == @post }
  end

  def show
    @post = Post.all.find { |post| post.id == params[:id].to_i }
    @other_post = Post.all.reject { |post| post == @post }
  end

end
