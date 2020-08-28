class Api::V1::PostsController < ApplicationController
      # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end
end
