class ComplexListItemsController < ApplicationController
  before_action :set_complex_list_item, only: [:show, :edit, :update, :destroy]

  # GET /complex_list_items
  # GET /complex_list_items.json
  def index
    @complex_list_items = ComplexListItem.all
  end

  # GET /complex_list_items/1
  # GET /complex_list_items/1.json
  def show
  end

  # GET /complex_list_items/new
  def new
    @complex_list_item = ComplexListItem.new
  end

  # GET /complex_list_items/1/edit
  def edit
  end

  # POST /complex_list_items
  # POST /complex_list_items.json
  def create
    @complex_list_item = ComplexListItem.new(complex_list_item_params)

    respond_to do |format|
      if @complex_list_item.save
        format.html { redirect_to @complex_list_item, notice: 'Complex list item was successfully created.' }
        format.json { render :show, status: :created, location: @complex_list_item }
      else
        format.html { render :new }
        format.json { render json: @complex_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complex_list_items/1
  # PATCH/PUT /complex_list_items/1.json
  def update
    respond_to do |format|
      if @complex_list_item.update(complex_list_item_params)
        format.html { redirect_to @complex_list_item, notice: 'Complex list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @complex_list_item }
      else
        format.html { render :edit }
        format.json { render json: @complex_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complex_list_items/1
  # DELETE /complex_list_items/1.json
  def destroy
    @complex_list_item.destroy
    respond_to do |format|
      format.html { redirect_to complex_list_items_url, notice: 'Complex list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complex_list_item
      @complex_list_item = ComplexListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complex_list_item_params
      params.require(:complex_list_item).permit(:guid, :list_id, :data, :sort_number)
    end
end
