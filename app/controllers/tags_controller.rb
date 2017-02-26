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
    #いつかset_tagにする
    @tag=Tag.find(params[:id])
  end

  def create
    @tag = Tag.new(tag_params)

    respond_to do |format|
      if @tag.save
        #format.html { redirect_to index_tag_path(@tag), notice: 'Tag was successfully created.' }
        format.html { redirect_to tags_path(@tag), notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @tag }
      else
        format.html { render :new }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    #いつかset_tagにする
    @tag=Tag.find(params[:id])
    respond_to do |format|
      if @tag.update(tag_params)
	    format.html { redirect_to tags_path, notice: 'tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to tags_path, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tag_params
    params.require(:tag).permit(:name)
  end
end
