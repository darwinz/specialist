class NumberListItemsController < ApplicationController
  before_action :set_number_list_item, only: [:show, :edit, :update, :destroy]

  # GET /number_list_items
  # GET /number_list_items.json
  def index
    @number_list_items = NumberListItem.all
  end

  # GET /number_list_items/1
  # GET /number_list_items/1.json
  def show
  end

  # GET /number_list_items/new
  def new
    @number_list_item = NumberListItem.new
  end

  # GET /number_list_items/1/edit
  def edit
  end

  # POST /number_list_items
  # POST /number_list_items.json
  def create
    @number_list_item = NumberListItem.new(number_list_item_params)

    respond_to do |format|
      if @number_list_item.save
        format.html { redirect_to @number_list_item, notice: 'Number list item was successfully created.' }
        format.json { render :show, status: :created, location: @number_list_item }
      else
        format.html { render :new }
        format.json { render json: @number_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /number_list_items/1
  # PATCH/PUT /number_list_items/1.json
  def update
    respond_to do |format|
      if @number_list_item.update(number_list_item_params)
        format.html { redirect_to @number_list_item, notice: 'Number list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @number_list_item }
      else
        format.html { render :edit }
        format.json { render json: @number_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /number_list_items/1
  # DELETE /number_list_items/1.json
  def destroy
    @number_list_item.destroy
    respond_to do |format|
      format.html { redirect_to number_list_items_url, notice: 'Number list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number_list_item
      @number_list_item = NumberListItem.find(params[:id]) or not_found
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_list_item_params
      params.require(:number_list_item).permit(:guid, :list_id, :data, :sort_number)
    end
end
