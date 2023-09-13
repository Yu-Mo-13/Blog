class ProfilesController < ApplicationController
  # プロフィールはid:1のみで構成する
  def index
    @profile = Profile.find_by(id: 1)
  end

  def edit
    @profile = Profile.find_by(id: 1)
  end

  def post
    @profile = Profile.find_by(id: 1)
    if @profile.update(content: params[:content])
      redirect_to("/profiles/")
    else
      render("profiles/edit")
    end
  end
end
