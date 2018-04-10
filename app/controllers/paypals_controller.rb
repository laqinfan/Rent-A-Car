class PaypalsController < ApplicationController

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
           redirect_to paypals_url
        else
            flash.now[:alert] = "Paypal save failed!!!!!"
            render :new
        end
    end

 
     def show
        begin
            @paypal = Paypal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Paypal could not be found"
            redirect_to paypals_url and return
        end
     end

     def edit

        begin
            @paypal = Paypal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Paypal could not be found"
            redirect_to paypals_url and return
         end

    end

     def update

        begin
            @paypal = Paypal.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Paypal could not be found"
            redirect_to paypals_url and return
        end
        if @paypal.update(paypal_id: params[:paypal][:paypal_id],
                     paypal_username: params[:paypal][:paypal_username],
                     paypal_account_routing_number: params[:paypal][:paypal_account_routing_number])
         
           flash[:notice] = "Paypal updated successfully"
            redirect_to paypals_url
        else
            flash.now[:alert] = "Paypal could not be updated"
            render :edit
        end
        
    end

   

end
