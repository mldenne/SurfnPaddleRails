class PostsController < ApplicationController

  def index
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.order(created_at: :desc).first
    @other_post = Post.where.not(id: @post.id).order(created_at: :desc).limit(4)
  end

  def show
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.find(params[:id])
    @other_post = Post.where.not(id: @post.id).order(created_at: :desc).limit(4)
  end

  def new
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.new
    @other_post = Post.order(created_at: :desc).limit(4)
  end

  def create
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @other_post = Post.order(created_at: :desc).limit(4)
    @post = Post.new(post_params)
      if @post.save
        redirect_to @post
      else
        render :new
      end
  end

  def edit
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
    @blogtitle = "Surf & Paddle Co. Blog"
    @post = Post.find(params[:id])
    @other_post = Post.order(created_at: :desc).limit(4)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :title, :body, :image)
  end

end
