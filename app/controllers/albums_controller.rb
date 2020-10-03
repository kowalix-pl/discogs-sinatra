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
    @album = current_user.albums.new({artist:params["artist"],title:params["title"],rating:params["rating"]})
     if @album.valid? 
        @album.save
        redirect "/albums"
     else 
        erb :"/albums/new.html"
     end 
  end

  # GET: /albums/5
  get "/albums/:id" do
    @album = current_album
    if @album
     erb :"/albums/show.html" 
    else
     erb :"not_found.html"
    end
  end

  # GET: /albums/5/edit
  get "/albums/:id/edit" do
    @album = current_album
    erb :"/albums/edit.html"
  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    @album = current_album
    @album.assign_attributes({artist:params["artist"],title:params["title"],rating:params["rating"]})
     if @album.valid?
        @album.save 
        redirect "/albums/#{@album.id}"
     else
        erb :"/albums/edit.html"
     end 
  end

  # DELETE: /albums/5/delete
  delete "/albums/:id/delete" do
    @album = current_album
    @album.destroy
    redirect "/albums"
  end

  helpers do
    def current_album
      begin
      return current_user.albums.find(params[:id])
      rescue
        return false 
      end 
    end 
  end
end
