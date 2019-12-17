class VideosController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @videos = Video.all
    # binding.pry
  end

  def new
    @video = Video.new
  end

  def create
    @video = Video.create(video_params)
    redirect_to root_path
  end

  def show
    @video = Video.find(params[:id])
    
  end

  private
  def video_params
     params.require(:video).permit(:title, :video).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
