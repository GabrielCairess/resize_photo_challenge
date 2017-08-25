class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def resize_images
    resized_image = ImageResizer.new

    if resized_image.resize_images
      head 201
    else
      head 500
    end
  end
end
