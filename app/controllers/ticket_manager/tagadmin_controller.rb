class TagadminController < ApplicationController
  respond_to :html

  def create
    newtag = Tag.create(params[:tag])
    respond_with(newtag, :location=>manage_index_path)
  end

  def update
  end


end
