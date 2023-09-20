class SnslinksController < ApplicationController
  def index
    @snslinks = Snslink.all.order('created_at DESC')
  end

  def edit
    @snslink = Snslink.find_by(id: params[:id])
  end

  def post
    @snslink = Snslink.new(app: params[:app], account: params[:account], url: params[:url])
    if @snslink.save
      redirect_to("/snslinks/")
    else
      render("snslinks/new")
    end
  end

  def detail
    @snslink = Snslink.find_by(id: params[:id])
  end

  def new
    @snslink = Snslink.new()
  end

  # def update
  #   @snslink = Snslink.find_by(id: params[:id])
  #   if @snslink.update(app: params[:app], link: params[link])
  #     redirect_to("/snslinks/")
  #   else
  #     render("snslinks/edit")
  #   end
  # end

  def delete
    @snslink = Snslink.find_by(id: params[:id])
    @snslink.destroy
    redirect_to("/snslinks/")
  end
end
