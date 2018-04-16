class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:browse, :details]
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js
  #before_action :authenticate_user!, only: [:index, :new, :edit, :create, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = current_user.cars
    #@cars = Car.all
  end

  def browse
    #@cars = Car.includes(:pickup_addresses).all

    @colors = Car.distinct.pluck(:color)
    @categories = Car.distinct.pluck(:category)
    @makes = Car.distinct.pluck(:make)
    @cars = Car.includes(:pickup_addresses).filter(params.slice(:by_color, :by_category, :by_make, :by_pickup_location_zipcode))
    
    # respond_to do |format| 
    #   format.html { render :browse }
    #   format.js { render :browse }
    # end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    #@car = current_user.cars.find(params[:id])
  end

  def details
    @car = Car.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to browse_vehicles_url, alert: "Car not found."
  end

  # GET /cars/new
  def new
    @car = current_user.cars.new
    @locations = @car.locations.build
    @address = @locations.build_address
    #@car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = current_user.cars.new(car_params)
    #@car = Car.new(car_params)
    
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      #@car = Car.find(params[:id])
      @car = current_user.cars.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        redirect_to cars_url, alert: "Car not found."
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      #params.require(:car).permit(:make, :model, :year, :color, :description, :category, :mileage, :number_of_seats, :price_per_day, :user_id, location_ids: [])
      params.require(:car).permit(:make, :model, :year, :color, :description, :category, :mileage,
       :number_of_seats, :price_per_day, :user_id, locations_attributes: [:id, :status, address_attributes: [:id, :street1, :street2, :city, :state, :zipcode]])
    end
end
