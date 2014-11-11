class ImagesController < ApplicationController

  # GET /images
  def index
    @images = Image.all
  end

  # GET /image/new
  def new
    @image = Image.new
  end

  # POST /images
  def create
    @image = Image.new(image_params)

    if @image.save
      redirect_to action: 'index', notice: 'Image was successfully uploaded.'
    else
      render action: 'new', alert: 'Image could not be uploaded' 
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:title, :story, :file)
    end

end
