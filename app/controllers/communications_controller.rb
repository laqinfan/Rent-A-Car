class CommunicationsController < ApplicationController



     #In this index for the Message Controller we are able to look at all the Messages in the table
     def index
          #renders 'alcohols/index.html.erb'

          @conversation = Conversation.find(1)
          @messages = Message.all
          @communications = Communication.all
          @user = current_user

     end

     def show
          @communication = Communication.find(params[:id])


     end





     def new
          @user = current_user
          @communication = Communication.new
              #render 'countries/new.html.erb'
     end

     def create
         @communication= Communication.new(message_id: params[:communication][:message_id],
                                        sender_id: params[:communication][:sender_id],
                                        reciever_id: params[:communication][:reciever_id],
                                   conversation_id: params[:communication][:conversation_id])

         if @communication.save
            flash[:notice] = 'Conversation saved successfully!'
            redirect_to conversations_url
         else
            flash.now[:alert] = 'Conversation save failed!'
            render :new
         end
     end
end
