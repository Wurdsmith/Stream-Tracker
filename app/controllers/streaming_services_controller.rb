class StreamingServicesController < ApplicationController
  before_action(:require_login)

  def index
    @streaming_services = StreamingService.all
    @top_titles = TopTitle.all
  end 
end
