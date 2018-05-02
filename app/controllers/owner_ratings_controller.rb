class OwnerRatingsController < ApplicationController
  before_action :set_owner_rating, only: [:show, :edit, :update, :destroy]

  # GET /owner_ratings
  # GET /owner_ratings.json
  def index
    @owner_ratings = OwnerRating.all
  end
 
  # GET /owner_ratings/1
  # GET /owner_ratings/1.json
  def show
  end

  # GET /owner_ratings/new
  def new
    @owner_rating = OwnerRating.new
  end

  # GET /owner_ratings/1/edit
  def edit
  end

  # POST /owner_ratings
  # POST /owner_ratings.json
  def create
    @owner_rating = OwnerRating.new(owner_rating_params)

    respond_to do |format|
      if @owner_rating.save
        format.html { redirect_to @owner_rating, notice: 'Owner rating was successfully created.' }
        format.json { render :show, status: :created, location: @owner_rating }
      else
        format.html { render :new }
        format.json { render json: @owner_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /owner_ratings/1
  # PATCH/PUT /owner_ratings/1.json
  def update
    respond_to do |format|
      if @owner_rating.update(owner_rating_params)
        format.html { redirect_to @owner_rating, notice: 'Owner rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @owner_rating }
      else
        format.html { render :edit }
        format.json { render json: @owner_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /owner_ratings/1
  # DELETE /owner_ratings/1.json
  def destroy
    @owner_rating.destroy
    respond_to do |format|
      format.html { redirect_to owner_ratings_url, notice: 'Owner rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner_rating
      @owner_rating = OwnerRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_rating_params
      params.require(:owner_rating).permit(:rating, :comment, :owner_id, :user_id, :contract_id)
    end
end
