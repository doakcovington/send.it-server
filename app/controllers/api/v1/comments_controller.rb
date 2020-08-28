class Api::V1::CommentsController < ApplicationController
          # GET /posts
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /posts/1
  def show
    render json: @comments
  end
end
