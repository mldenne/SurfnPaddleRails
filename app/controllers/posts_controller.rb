class PostsController < ApplicationController

  def index
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.all.sort_by { |post| post.created_at }.reverse.first
    @other_post = Post.all.reject { |post| post == @post }
  end

  def show
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.all.find { |post| post.id == params[:id].to_i }
    @other_post = Post.all.reject { |post| post == @post }
  end

end
