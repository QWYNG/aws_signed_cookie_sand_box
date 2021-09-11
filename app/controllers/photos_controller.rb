# frozen_string_literal: true

class PhotosController < ApplicationController
  def index
    @photo = Photo.new
    @photos = Photo.all
  end

  def create
    Photo.create(photo_params) # attaches the uploaded file
    @photo = Photo.new
    @photos = Photo.all
    render :index
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
