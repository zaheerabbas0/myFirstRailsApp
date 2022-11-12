class PakistansController < ApplicationController
  before_action :set_pakistan, only: %i[ show edit update destroy ]

  # GET /pakistans or /pakistans.json
  def index
    @pakistans = Pakistan.all
  end

  # GET /pakistans/1 or /pakistans/1.json
  def show
  end

  # GET /pakistans/new
  def new
    @pakistan = Pakistan.new
  end

  # GET /pakistans/1/edit
  def edit
  end

  # POST /pakistans or /pakistans.json
  def create
    @pakistan = Pakistan.new(pakistan_params)

    respond_to do |format|
      if @pakistan.save
        format.html { redirect_to pakistan_url(@pakistan), notice: "Pakistan was successfully created." }
        format.json { render :show, status: :created, location: @pakistan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pakistan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pakistans/1 or /pakistans/1.json
  def update
    respond_to do |format|
      if @pakistan.update(pakistan_params)
        format.html { redirect_to pakistan_url(@pakistan), notice: "Pakistan was successfully updated." }
        format.json { render :show, status: :ok, location: @pakistan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pakistan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pakistans/1 or /pakistans/1.json
  def destroy
    @pakistan.destroy

    respond_to do |format|
      format.html { redirect_to pakistans_url, notice: "Pakistan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pakistan
      @pakistan = Pakistan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pakistan_params
      params.fetch(:pakistan, {})
    end
end
