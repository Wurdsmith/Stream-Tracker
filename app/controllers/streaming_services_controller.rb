class StreamingServicesController < ApplicationController

  def index
    @streaming_services = StreamingService.all
    @top_titles = TopTitle.all
  end

  def show
  end
end
