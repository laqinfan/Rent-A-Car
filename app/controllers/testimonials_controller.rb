class TestimonialsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /testimonials
  # GET /testimonials.json
  def index
    @testimonials = Testimonial.all.reverse
  end

  def mytestimonial
    @user_testimonial = Testimonial.by_user(current_user)
  end

  # GET /testimonials/1
  # GET /testimonials/1.json
  def show
  end

  # GET /testimonials/new
  def new
    if current_user.testimonials.empty?
      @testimonial = current_user.testimonials.new
    else 
      respond_to do |format|
        format.html { redirect_to my_testimonial_path, alert: 'You already have one testimonial.' }
      end
    end
  # @testimonial = Testimonial.new
end

  # GET /testimonials/1/edit
  def edit
  end

  # POST /testimonials
  # POST /testimonials.json
  def create
    @testimonial = current_user.testimonials.new(testimonial_params)

    respond_to do |format|
      if @testimonial.save
        format.html { redirect_to root_path, notice: 'Testimonial was successfully created.' }
        format.json { render :root_path, status: :created, location: @testimonial }
      else
        format.html { render :new }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonials/1
  # PATCH/PUT /testimonials/1.json
  def update
    respond_to do |format|
      if @testimonial.update(testimonial_params)
        format.html { redirect_to my_testimonial_path, notice: 'Testimonial was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonial }
      else
        format.html { render :edit }
        format.json { render json: @testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonials/1
  # DELETE /testimonials/1.json
  def destroy
    @testimonial.destroy
    respond_to do |format|
      format.html { redirect_to my_testimonial_path, notice: 'Testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonial_params
      params.require(:testimonial).permit(:comment, :rating, :user_id)
    end
end
