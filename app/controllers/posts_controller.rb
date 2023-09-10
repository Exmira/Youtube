require "mini_magick"

class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
 before_action :authenticate_user!, except: [:index, :show, :download]

  # GET /posts or /posts.json
  def index


    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true)
    @posts = Post.most_hit(nil)
  end

  # GET /posts/1 or /posts/1.json
  def show
    @post.punch(request)
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  def download
    @post = Post.friendly.find(params[:id])
    if @post.video.attached?
    send_data @post.video.download, filename: @post.video.filename.to_s 
    else
      send_data @post.image.download, filename: @post.image.filename.to_s 
    end

  end
  #Ex:- :default =>''

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update

    if @post.user_id == current_user.id
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy

    if @post.user_id == current_user.id
      @post.likes.destroy_all
    @post.destroy


    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end

  end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description, :image, :video, :user_id)
    end
end
