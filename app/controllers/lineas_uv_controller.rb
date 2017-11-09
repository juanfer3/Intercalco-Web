class LineasUvController < ApplicationController
  before_action :set_linea_uv, only: [:show, :edit, :update, :destroy]

  # GET /lineas_uv
  # GET /lineas_uv.json
  def index
    @lineas_uv = LineaUv.all
  end

  # GET /lineas_uv/1
  # GET /lineas_uv/1.json
  def show
  end

  # GET /lineas_uv/new
  def new
    @linea_uv = LineaUv.new
  end

  # GET /lineas_uv/1/edit
  def edit
  end

  # POST /lineas_uv
  # POST /lineas_uv.json
  def create
    @linea_uv = LineaUv.new(linea_uv_params)

    respond_to do |format|
      if @linea_uv.save
        format.html { redirect_to @linea_uv, notice: 'Linea uv was successfully created.' }
        format.json { render :show, status: :created, location: @linea_uv }
      else
        format.html { render :new }
        format.json { render json: @linea_uv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineas_uv/1
  # PATCH/PUT /lineas_uv/1.json
  def update
    respond_to do |format|
      if @linea_uv.update(linea_uv_params)
        format.html { redirect_to @linea_uv, notice: 'Linea uv was successfully updated.' }
        format.json { render :show, status: :ok, location: @linea_uv }
      else
        format.html { render :edit }
        format.json { render json: @linea_uv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineas_uv/1
  # DELETE /lineas_uv/1.json
  def destroy
    @linea_uv.destroy
    respond_to do |format|
      format.html { redirect_to lineas_uv_url, notice: 'Linea uv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linea_uv
      @linea_uv = LineaUv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linea_uv_params
      params.require(:linea_uv).permit(:tipo_de_linea, :caracteristica)
    end
end
