class ContractsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contract, only: [:show, :edit, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all
  end

  def mycontracts
    @owner_contracts = Contract.by_owner(current_user)
    @renter_contracts = Contract.by_renter(current_user)
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    @contract_owner = @contract.owner_paypal.user

  end

  # GET /contracts/new
  def new
    @car = Car.find(params[:id])
    @contract = Contract.new(car_id: @car.id, owner_paypal_id: @car.owner.paypal.id, renter_paypal_id: current_user.paypal.id, price: @car.price_per_day)
    # @renter_paypal = current_user.paypal
    # @owner_paypal = @car.owner.paypal
  end

  # GET /contracts/1/edit
  def edit
       @car = Car.find(params[:id])
       @contract = @car.contracts.new
       @renter_paypal = current_user.paypal
       @owner_paypal = @car.owner.paypal
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = Contract.new(contract_params)
    # @renter_email = current_user.email
    @renter = current_user
    respond_to do |format|
      if @contract.save

        UserMailer.notify_email(@contract.car.owner, @contract, @renter, "notify_email.text.erb").deliver
        UserMailer.notify_email(@renter, @contract, @contract.car.owner, "notify_renter.text.erb").deliver

        format.html { redirect_to @contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @contract }
      else
        format.html { render :new }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    respond_to do |format|
      if @contract.update(contract_params)
        format.html { redirect_to @contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract }
      else
        format.html { render :edit }
        format.json { render json: @contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy
    respond_to do |format|
      format.html { redirect_to my_contracts_path, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_status
    @contract = Contract.find(params[:id])
    @contract.status = 'Executed'
    @car = Car.find(@contract.car.id)
    print @car.id
    #@car.ratings << CarRating.create!(car_id: @car.id, user_id: @contract.renter_paypal.user.id)
    CarRating.create!(car_id: @car.id, user_id: @contract.renter_paypal.user.id, contract_id:@contract.id)
    #@owner = User.find(@contract.owner_paypal.user.id)
    #@contract.owner_paypal.user.owner_ratings << OwnerRating.create!(user_id:@contract.renter_paypal.user.id)
    OwnerRating.create!(owner_id: @contract.owner_paypal.user.id, user_id:@contract.renter_paypal.user.id, contract_id:@contract.id)

    respond_to do |format|
      if @contract.save

        ApproveMailer.approve_email(@contract.car.owner, @contract, @contract.renter_paypal.user, "approve_email_owner.text.erb").deliver
        ApproveMailer.approve_email(@contract.renter_paypal.user, @contract, @contract.car.owner, "approve_email_renter.text.erb").deliver

        format.html { redirect_to @contract, notice: 'Contract was successfully executed.' }
        format.json { render :show, status: :created, location: @contract }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract
      @contract = Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_params
      params.require(:contract).permit(:start_date, :return_date, :price, :subtotal, :total, :status, :car_id, :owner_paypal_id, :renter_paypal_id)
    end


end
