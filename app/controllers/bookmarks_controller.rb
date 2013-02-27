# encoding: utf-8

class BookmarksController < ApplicationController
  load_and_authorize_resource
  
  def index
    @bookmarks = Bookmark.all
  end
  
  def edit
    @bookmark = Bookmark.find(params[:id])
  end
  
  def new
    @bookmark = Bookmark.new
  end
  
  def show
    @bookmark = Bookmark.find(params[:id])
  end
  
  def create
    @bookmark = Bookmark.new(params[:bookmark])
    if @bookmark.save
      redirect_to bookmarks_path,
      notice: "Link wurde erfolgreich erstellt."
    else
      render "new"
    end
  end
  
  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to bookmarks_path,
      notice: "Link wurde erfolgreich geändert."
    else
      render "edit"
    end
  end
  
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_url,
            notice: "Link wurde erfolgreich gelöscht."
  end
end
