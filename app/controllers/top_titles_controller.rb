class TopTitlesController < ApplicationController
  before_action :set_top_title


  def index
    @top_titles = TopTitle.all
  end

  def show
  end

  def new
    @top_title = TopTitle.new
  end

  def edit
  end

  def create
    @top_title = TopTitle.new(top_title_params)

    respond_to do |format|
      if @top_title.save
      else
    end
  end

  # PATCH/PUT /top_titles/1 or /top_titles/1.json
  def update
    respond_to do |format|
      if @top_title.update(top_title_params)
      else
    end
  end

  def destroy
    @top_title.destroy
    respond_to do |format|

    end
  end

  private
    def set_top_title
      @top_title = TopTitle.find(params[:id])
    end

    def top_title_params
      params.fetch(:top_title, {})
    end
end
