class TopTitlesController < ApplicationController
  before_action :set_top_title, only: %i[ show edit update destroy ]

  # GET /top_titles or /top_titles.json
  def index
    @top_titles = TopTitle.all
  end

  # GET /top_titles/1 or /top_titles/1.json
  def show
  end

  # GET /top_titles/new
  def new
    @top_title = TopTitle.new
  end

  # GET /top_titles/1/edit
  def edit
  end

  # POST /top_titles or /top_titles.json
  def create
    @top_title = TopTitle.new(top_title_params)

    respond_to do |format|
      if @top_title.save
        format.html { redirect_to @top_title, notice: "Top title was successfully created." }
        format.json { render :show, status: :created, location: @top_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @top_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_titles/1 or /top_titles/1.json
  def update
    respond_to do |format|
      if @top_title.update(top_title_params)
        format.html { redirect_to @top_title, notice: "Top title was successfully updated." }
        format.json { render :show, status: :ok, location: @top_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @top_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_titles/1 or /top_titles/1.json
  def destroy
    @top_title.destroy
    respond_to do |format|
      format.html { redirect_to top_titles_url, notice: "Top title was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_top_title
      @top_title = TopTitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def top_title_params
      params.fetch(:top_title, {})
    end
end
