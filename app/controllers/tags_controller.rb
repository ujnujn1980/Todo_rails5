class TagsController < ApplicationController
  before_action :authenticate_user!

  # GET /Tags
  # GET /Tags.json
  def index
     @tags = Tag.all
  end

  def show
  end
    
  def new
      @tag = Tag.new
  end

  def edit
  end

  def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        format.html { redirect_to tags_path, notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag }
      else
        format.html { render :new }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      @Tags = Tag.all
  end

  def destroy
      @Tags = Tag.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tag_params
    params.require(:tag).permit(:name)
  end
end
