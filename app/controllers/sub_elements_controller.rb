class SubElementsController < ApplicationController
  before_action :set_sub_element, only: [:show, :edit, :update, :destroy]

  # GET /sub_elements
  # GET /sub_elements.json
  def index
    @sub_elements = SubElement.all
  end

  # GET /sub_elements/1
  # GET /sub_elements/1.json
  def show
  end

  # GET /sub_elements/new
  def new
    @sub_element = SubElement.new
  end

  # GET /sub_elements/1/edit
  def edit
  end

  # POST /sub_elements
  # POST /sub_elements.json
  def create
    @sub_element = SubElement.new(sub_element_params)

    respond_to do |format|
      if @sub_element.save
        format.html { redirect_to @sub_element, notice: 'Sub element was successfully created.' }
        format.json { render :show, status: :created, location: @sub_element }
      else
        format.html { render :new }
        format.json { render json: @sub_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_elements/1
  # PATCH/PUT /sub_elements/1.json
  def update
    respond_to do |format|
      if @sub_element.update(sub_element_params)
        format.html { redirect_to @sub_element, notice: 'Sub element was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_element }
      else
        format.html { render :edit }
        format.json { render json: @sub_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_elements/1
  # DELETE /sub_elements/1.json
  def destroy
    @sub_element.destroy
    respond_to do |format|
      format.html { redirect_to sub_elements_url, notice: 'Sub element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_element
      @sub_element = SubElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_element_params
      params.require(:sub_element).permit(:info, :element_id)
    end
end
