class CarRatingsController < ApplicationController
  before_action :set_car_rating, only: [:show, :edit, :update, :destroy]

  # GET /car_ratings
  # GET /car_ratings.json
  def index
    @car_ratings = CarRating.all
  end

  # GET /car_ratings/1
  # GET /car_ratings/1.json
  def show
  end

  # GET /car_ratings/new
  def new
    @car_rating = CarRating.new
  end

  # GET /car_ratings/1/edit
  def edit
  end

  # POST /car_ratings
  # POST /car_ratings.json
  def create
    @car_rating = CarRating.new(car_rating_params)

    respond_to do |format|
      if @car_rating.save
        format.html { redirect_to @car_rating, notice: 'Car rating was successfully created.' }
        format.json { render :show, status: :created, location: @car_rating }
      else
        format.html { render :new }
        format.json { render json: @car_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_ratings/1
  # PATCH/PUT /car_ratings/1.json
  def update
    respond_to do |format|
      if @car_rating.update(car_rating_params)
        format.html { redirect_to @car_rating, notice: 'Car rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_rating }
      else
        format.html { render :edit }
        format.json { render json: @car_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_ratings/1
  # DELETE /car_ratings/1.json
  def destroy
    @car_rating.destroy
    respond_to do |format|
      format.html { redirect_to car_ratings_url, notice: 'Car rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_rating
      @car_rating = CarRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_rating_params
      params.require(:car_rating).permit(:rating, :comments, :car_id, :user_id, :contract_id)
    end
end
