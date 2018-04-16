class MessagesController < ApplicationController

     def home
     end

     #In this index for the Message Controller we are able to look at all the Messages in the table
     def index
          #renders 'alcohols/index.html.erb'
          @messages = Message.all

     end

     def show
         @message = Message.find(params[:id])

         #render 'bars/show.html.erb'
     end

     def new
          @user= current_user
          @message = Message.new
              #render 'countries/new.html.erb'
     end

     def create
         @message= Message.new(message: params[:message][:message])

         if @message.save
            flash[:notice] = 'Conversation saved successfully!'
            redirect_to new_communication_path
         else
            flash.now[:alert] = 'Conversation save failed!'
            render :new
         end
     end


end
