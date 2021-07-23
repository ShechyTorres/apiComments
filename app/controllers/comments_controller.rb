class CommentsController < ApplicationController
  def index
    comentarios = Comment.all
    render json: comentarios, status: 200
  end

  def create
    comment = Comment.create!(
      name: params[:name],
      email: params[:email],
      body: params[:body]
    )
    render json: comment, status: 201
  end
  
  def show
    comment = Comment.find(params[:id])
    render json: comment, status: 200
  end

  def update
    comment = Comment.find(params[:id])
    comment.update(
      name: params[:name],
      email: params[:email],
      body: params[:body]
    )
    render json: comment, status: 200
  end
  
  def destroy
    comment = Comment.find(params[:id])
    comment.destroy!
    render status: 200
  end
end
