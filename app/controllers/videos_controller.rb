class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all
    # case @videos
    # when @videos.user.level == 1
    #   @videos = @videos.lower_primary
    # when @videos.user.level == 2
    #   @videos = @videos.upper_primary
    # when @videos.user.level == 3
    #   @videos = @videos.lower_secondary
    # when @videos.user.level == 4
    #   @videos = @videos.upper_secondary
    # end
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @videos = Video.all
    @next_video = @video.next
    @prev_video = @video.prev
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:link, :title, :description)
    end
end
