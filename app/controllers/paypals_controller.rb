class PaypalsController < ApplicationController
    before_action :authenticate_user! 
    before_action :set_paypal, only: [:show, :edit, :update]

    def index

        @paypals = Paypal.all
        
     end

     def new
        @paypal = Paypal.new
        # render 'profiles/new.html.erb'
     end

    def create
        @paypal = Paypal.new(paypal_id: params[:paypal][:paypal_id],
               paypal_username: params[:paypal][:paypal_username],
               paypal_account_routing_number: params[:paypal][:paypal_account_routing_number])
        if @paypal.save
           flash[:notice] = "Paypal saved successfully"
           redirect_to my_paypal_url
        else
            flash.now[:alert] = "Paypal save failed!!!!!"
            render :new
        end
    end

 
     def show
        
        @paypal = Paypal.find(params[:id])
       
     end



     def mypaypal
        print "1***************************************************"

        if user_signed_in?
            print "2***************************************************"
            @paypal = current_user.paypal
            # if current_user.profile
            #   @profile = current_user.profile
            # else
            #     raise ActionController::RoutingError.new('Not Found')

            #end
        else
            print "3***************************************************"
            redirect_to '/' 

        end
        print current_user
        print "4***************************************************"

    end


     def edit

        begin
            @paypal = Paypal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Paypal could not be found"
            redirect_to my_paypal_url and return
         end

    end

     def update

        begin
            @paypal = Paypal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Paypal could not be found"
            redirect_to my_paypal_url and return
        end
        if @paypal.update(paypal_id: params[:paypal][:paypal_id],
                     paypal_username: params[:paypal][:paypal_username],
                     paypal_account_routing_number: params[:paypal][:paypal_account_routing_number])
         
           flash[:notice] = "Paypal updated successfully"
            redirect_to my_paypal_url
        else
            flash.now[:alert] = "Paypal could not be updated"
            render :edit
        end
        
    end
    
    private
    
    def set_paypal
        @paypal = Paypal.find(params[:id])

    end

   

end
