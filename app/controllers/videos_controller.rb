class VideosController < ApplicationController

  def index
    @videos = Vimeo::Simple::User.videos('2059756')
  end
end
