class ListTypesController < ApplicationController
  before_action :set_list_type, only: [:show, :edit, :update, :destroy]

  # GET /list_types
  # GET /list_types.json
  def index
    @list_types = ListType.all
  end

  # GET /list_types/1
  # GET /list_types/1.json
  def show
  end

  # GET /list_types/new
  def new
    @list_type = ListType.new
  end

  # GET /list_types/1/edit
  def edit
  end

  # POST /list_types
  # POST /list_types.json
  def create
    @list_type = ListType.new(list_type_params)

    respond_to do |format|
      if @list_type.save
        format.html { redirect_to @list_type, notice: 'List type was successfully created.' }
        format.json { render :show, status: :created, location: @list_type }
      else
        format.html { render :new }
        format.json { render json: @list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_types/1
  # PATCH/PUT /list_types/1.json
  def update
    respond_to do |format|
      if @list_type.update(list_type_params)
        format.html { redirect_to @list_type, notice: 'List type was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_type }
      else
        format.html { render :edit }
        format.json { render json: @list_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_types/1
  # DELETE /list_types/1.json
  def destroy
    @list_type.destroy
    respond_to do |format|
      format.html { redirect_to list_types_url, notice: 'List type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_type
      @list_type = ListType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_type_params
      params.require(:list_type).permit(:id, :name, :description, :created_at, :modified_at)
    end
end
