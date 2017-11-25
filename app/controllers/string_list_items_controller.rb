class StringListItemsController < ApplicationController
  before_action :set_string_list_item, only: [:show, :edit, :update, :destroy]

  # GET /string_list_items
  # GET /string_list_items.json
  def index
    @string_list_items = StringListItem.all
  end

  # GET /string_list_items/1
  # GET /string_list_items/1.json
  def show
  end

  # GET /string_list_items/new
  def new
    @string_list_item = StringListItem.new
  end

  # GET /string_list_items/1/edit
  def edit
  end

  # POST /string_list_items
  # POST /string_list_items.json
  def create
    @string_list_item = StringListItem.new(string_list_item_params)

    respond_to do |format|
      if @string_list_item.save
        format.html { redirect_to @string_list_item, notice: 'String list item was successfully created.' }
        format.json { render :show, status: :created, location: @string_list_item }
      else
        format.html { render :new }
        format.json { render json: @string_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /string_list_items/1
  # PATCH/PUT /string_list_items/1.json
  def update
    respond_to do |format|
      if @string_list_item.update(string_list_item_params)
        format.html { redirect_to @string_list_item, notice: 'String list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @string_list_item }
      else
        format.html { render :edit }
        format.json { render json: @string_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /string_list_items/1
  # DELETE /string_list_items/1.json
  def destroy
    @string_list_item.destroy
    respond_to do |format|
      format.html { redirect_to string_list_items_url, notice: 'String list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_string_list_item
      @string_list_item = StringListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def string_list_item_params
      params.require(:string_list_item).permit(:guid, :list_id, :data)
    end
end
