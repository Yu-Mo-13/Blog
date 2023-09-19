class SnslinksController < ApplicationController
  def index
    @snslink = Snslink.all.order('created_at DESC')
  end

  def edit
    @snslink = Snslink.find_by(id: params[:id])
  end

  def post
    @snslink = Snslink.new(app: params[:app], link: params[link])
  end

  def new
    @snslink = Snslink.new()
  end

  def update
    @snslink = Snslink.find_by(id: params[:id])
    if @snslink.update(app: params[:app], link: params[link])
      redirect_to("/snslinks/")
    else
      render("snslinks/edit")
    end
  end
end
