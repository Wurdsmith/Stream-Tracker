class StreamingServicesController < ApplicationController

  def index
    @streaming_services = StreamingService.all
  end

  def show
  end
end
