class AlbumsController < ApplicationController

  # GET: /albums
  get "/albums" do
    @albums = [Album.new({artist:"Michael Jackson",title:"Thriller",rating:100,id:1}), Album.new({artist:"Michael Bolton",title:"Thr",rating:10,id:2})]

    erb :"/albums/index.html"
  end

  # GET: /albums/new
  get "/albums/new" do
    erb :"/albums/new.html"
  end

  # POST: /albums
  post "/albums" do
    redirect "/albums"
  end

  # GET: /albums/5
  get "/albums/:id" do
    erb :"/albums/show.html"
  end

  # GET: /albums/5/edit
  get "/albums/:id/edit" do
    erb :"/albums/edit.html"
  end

  # PATCH: /albums/5
  patch "/albums/:id" do
    redirect "/albums/:id"
  end

  # DELETE: /albums/5/delete
  delete "/albums/:id/delete" do
    redirect "/albums"
  end
end
