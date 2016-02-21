class VideosController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :load_video, only: [:index, :show]
  # before_action :authenticate_user!

  # GET /videos
  # GET /videos.json
  def index

  end

  # GET /videos/1
  # GET /videos/1.json
  def show
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

    def load_video
      @user = current_user if @user.nil?
        if !@user.nil?
          case @user.category_id
            when 1
              @videos = Video.where(category_id: 1)
              @videos1 = Video.where(category_id: 2)
              @videos2 = Video.where(category_id: 3)
            when 2
              @videos = Video.where(category_id: 2)
              @videos1 = Video.where(category_id: 1)
              @videos2 = Video.where(category_id: 3)
            when 3
              @videos = Video.where(category_id: 3)
              @videos1 = Video.where(category_id: 1)
              @videos2 = Video.where(category_id: 2)
            when 4
              @videos = Video.where(category_id: 4)
              @videos1 = Video.where(category_id: 5)
              @videos2 = Video.where(category_id: 6)
            when 5
              @videos = Video.where(category_id: 5)
              @videos1 = Video.where(category_id: 4)
              @videos2 = Video.where(category_id: 6)
            when 6
              @videos = Video.where(category_id: 6)
              @videos1 = Video.where(category_id: 4)
              @videos2 = Video.where(category_id: 5)
            when 7
              @videos = Video.where(category_id: 7)
              @videos1 = Video.where(category_id: 8)
              @videos2 = Video.where(category_id: 9)
            when 8
              @videos = Video.where(category_id: 8)
              @videos1 = Video.where(category_id: 7)
              @videos2 = Video.where(category_id: 9)
            when 9
              @videos = Video.where(category_id: 9)
              @videos1 = Video.where(category_id: 7)
              @videos2 = Video.where(category_id: 8)
          end
      end
    end
end
