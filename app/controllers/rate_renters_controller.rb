class RateRentersController < ApplicationController
  before_action :set_rate_renter, only: [:show, :edit, :update, :destroy]

  # GET /rate_renters
  # GET /rate_renters.json
  def index
    @rate_renters = RateRenter.all
  end

  # GET /rate_renters/1
  # GET /rate_renters/1.json
  def show
  end

  # GET /rate_renters/new
  def new
    @rate_renter = RateRenter.new
  end

  # GET /rate_renters/1/edit
  def edit
  end

  # POST /rate_renters
  # POST /rate_renters.json
  def create
    @rate_renter = RateRenter.new(rate_renter_params)

    respond_to do |format|
      if @rate_renter.save
        format.html { redirect_to @rate_renter, notice: 'Rate renter was successfully created.' }
        format.json { render :show, status: :created, location: @rate_renter }
      else
        format.html { render :new }
        format.json { render json: @rate_renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rate_renters/1
  # PATCH/PUT /rate_renters/1.json
  def update
    respond_to do |format|
      if @rate_renter.update(rate_renter_params)
        format.html { redirect_to @rate_renter, notice: 'Rate renter was successfully updated.' }
        format.json { render :show, status: :ok, location: @rate_renter }
      else
        format.html { render :edit }
        format.json { render json: @rate_renter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rate_renters/1
  # DELETE /rate_renters/1.json
  def destroy
    @rate_renter.destroy
    respond_to do |format|
      format.html { redirect_to rate_renters_url, notice: 'Rate renter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rate_renter
      @rate_renter = RateRenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rate_renter_params
      params.fetch(:rate_renter, {})
    end
end
