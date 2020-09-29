class AlbumsController < ApplicationController

  # GET: /albums
  get "/albums" do
    @albums = current_user.albums 
    erb :"/albums/index.html"
  end

  # GET: /albums/new
  get "/albums/new" do
    erb :"/albums/new.html"
  end

  # POST: /albums
  post "/albums" do
    @album = current_user.albums.create({artist:params["artist"],title:params["title"],rating:params["rating"]})
    redirect "/albums"
  end

  # GET: /albums/5
  get "/albums/:id" do
    @album = current_album
    erb :"/albums/show.html"
  end

  # GET: /albums/5/edit
  get "/albums/:id/edit" do
    @album = current_album
    erb :"/albums/edit.html"
  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    @album = current_album
    @album.update({artist:params["artist"],title:params["title"],rating:params["rating"]})
    redirect "/albums/#{@album.id}"
  end

  # DELETE: /albums/5/delete
  delete "/albums/:id/delete" do
    @album = current_album
    @album.destroy
    redirect "/albums"
  end

  helpers do
    def current_album
      current_user.albums.find(params[:id])
    end 
  end
end
