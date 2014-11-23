class ImagesController < ApplicationController

  before_action :admin_user, only: [:create, :new, :edit, :create, :update, :destroy]
  # GET /images
  def index
    @images = Image.all
  end

  def show
    @image=Image.find(params[:id])
  end

  # GET /image/new
  def new
    @album = Album.find(params[:album_id])
    @image = @album.images.build
  end

  def edit
    @image = Image.find(params[:id])
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

  def update

    @album = Album.find(params[:album_id])

    @image = @album.images.find(params[:id])

    if @image.update_attributes(image_params)
      redirect_to action: 'index', notice: 'Image was successfully updated.'
    else
      render action: 'edit', alert: 'Error occured' 
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
   end

  private

    def image_params
      params.require(:image).permit(:title, :file, :album_id)
    end

end
