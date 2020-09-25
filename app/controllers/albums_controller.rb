class AlbumsController < ApplicationController

  # GET: /albums
  get "/albums" do
    @albums = Album.all 
    erb :"/albums/index.html"
  end

  # GET: /albums/new
  get "/albums/new" do
    erb :"/albums/new.html"
  end

  # POST: /albums
  post "/albums" do
    @album = Album.new({artist:params["artist"],title:params["title"],rating:params["rating"]})
    @album.save
    redirect "/albums"
  end

  # GET: /albums/5
  get "/albums/:id" do
    @album = Album.find(params[:id])
    erb :"/albums/show.html"
  end

  # GET: /albums/5/edit
  get "/albums/:id/edit" do
    @album = Album.find(params[:id])
    erb :"/albums/edit.html"
  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    @album = Album.find(params[:id])
    @album.update({artist:params["artist"],title:params["title"],rating:params["rating"]})
    redirect "/albums/#{@album.id}"
  end

  # DELETE: /albums/5/delete
  delete "/albums/:id/delete" do
    @album = Album.find(params[:id])
    @album.destroy
    redirect "/albums"
  end
end
