class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    #@items = Item.all
    @list_id = params[:list_id] || 1
    #@list_id = params[:list_id] || 1
    @items = List.find(@list_id).items.where(todo_flag: false)
    #@items = List.find(@list_id).items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    #redirect_to items_path(list_id: @list_id)
  end

  # GET /items/new
  def new
    #@item = Item.new(list_id: list_id)
    #@item = Item.new
    #list_id = params[:list_id]
    #@item = Item.new(list_id: list_id)
    @list_id = params[:list_id]
    @item = Item.new(list_id: @list_id)
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        #format.html { redirect_to item_path(list_id: item_params[:list_id]), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      #format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.html { redirect_to items_url(list_id: @item.list_id), notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def done
    #id = params[:item_id]
    #id = params[:format]
    id = params[:id]
    Item.find(id).update(todo_flag: true)
    #@Item.update(todo_flag: true)
    #list_id = Item.find(id).list.id
    #redirect_to items_path(list_id: list_id), notice: 'Item was successfully done.'
    #redirect_to lists_path(list_id: list_id), notice: 'Item was successfully done.'
    @list_id = Item.find(id).list.id
    redirect_to items_path(list_id: @list_id), notice: 'Item was successfully done.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:desc, :todo_flag, :list_id)
    end
end
