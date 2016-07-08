class WelcomeController < ApplicationController

  def index
    @title = "Surf & Paddle Co."
    @subtitle = "A Fourth Cohort Indianapolis IronYard Project"
  end

  def blog_posts
    @posts = Post.all
  end

end
