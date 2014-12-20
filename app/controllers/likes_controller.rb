class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @likes = Like.all
    respond_with(@likes)
  end

  def show
    respond_with(@like)
  end

  def new
    @like = Like.new
    respond_with(@like)
  end

  def edit
  end

  def create
    @like = Like.new(like_params)
    @like.user_id = current_user.id
    @like.idea_id = like_params[:idea_id]
    @like.save
    respond_with(@like)
  end

  def update
    @like.update(like_params)
    respond_with(@like)
  end

  def destroy
    @like.destroy
    respond_with(@like)
  end

  private
    def set_like
      @like = Like.find(params[:id])
    end

    def like_params
      params.require(:like).permit(:user_name, :idea_id)
    end
end
