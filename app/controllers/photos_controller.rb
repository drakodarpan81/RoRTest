class PhotosController < ApplicationController
    def index
        @photos = Photo.all
    end

    def new
    end

    def create
        photo = Photo.new

        photo.title = params[:photo][:title]
        photo.image_url = params[:photo][:image_url]

        photo.save

        # redirect_to "/photos/#{photo.id}"
        redirect_to photo
    end

    def show
        @photo = Photo.find(params[:id])
    end

    def edit
        @id = params[:id]
    end

    def update
        photo = Photo.find(params[:id])

        photo.title = params[:photo][:title]
        photo.image_url = params[:photo][:image_url]
        photo.save

        redirect_to photo
    end

    def destroy
        photo = Photo.find(params[:id])
        photo.destroy
        put("photo.errors")

        redirect_to "/photos"
    end
end
