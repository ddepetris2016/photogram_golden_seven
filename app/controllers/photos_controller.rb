class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show

    @id_num = params[:id]
    a = Photo.find_by({:id => @id_num})
    @caption = a.caption
    @image = a.source

  end

  def new_form

  end

  def create_row

    a=Photo.new
    a.source = params[:the_source]
    a.caption = params[:the_caption]
    a.save

    redirect_to("http://localhost:3000/photos")

  end

  def destroy

    a = Photo.find(params[:id])
    a.destroy

    redirect_to("http://localhost:3000/photos")

  end

  def edit_form

   a = Photo.find(params[:id])
   a.caption = @caption
   a.source= @source

   @id = params[:id]

 end

 def update_row

  a=Photo.find(params[:id])
  a.caption = params[:the_caption]
  a.source = params[:the_source]
  a.save

  redirect_to("http://localhost:3000/photos")

end

end

