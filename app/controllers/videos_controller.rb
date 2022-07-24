# frozen_string_literal: true

require 'uuid'
class VideosController < ApplicationController
  def index
    videos = Video.all
    render json: videos, except: [:updated_at]
  end

  def create
    video = Video.new(video_params)
    uid = UUID.new
    video.uid = uid.generate
    render json: { message: 'Video Created', video: video, except: %i[updated_at user_id] } if video.save
  end

  def destroy
    video = Video.find_by(uid: params[:id])

    return if video.nil?

    video.destroy
    render json: { message: 'Video Removed' }
  end

  private

  def video_params
    params.require(:video).permit(:title, :url, :user_id)
  end
end
