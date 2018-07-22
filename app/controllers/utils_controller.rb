class UtilsController < ApplicationController

  def image_converter_page
  end

  def convert_image_to_base
    unless params[:image_path]
      raise 'Image not present'
    end

    begin
      image_converted_string = Base64.encode64(open(image_path).read).gsub("\n", '')

      render 'utils/image_converter_page', locals: { image_converted_string: image_converted_string }
    rescue => exception
      raise StandardError.new exception.message
    end
  end
end
