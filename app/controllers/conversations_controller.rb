class ConversationsController < ApplicationController

     #In this index for the Message Controller we are able to look at all the Messages in the table
     def index
          #renders 'alcohols/index.html.erb'
          if current_user.nil?
               redirect_to user_session_path
          else
          @user = current_user
          @conversations = Conversation.all

          end

     end

     def show
          if current_user.nil?
               redirect_to user_session_path
          else
               @user = current_user
               # @communication = Communication.new


               @conversations = Conversation.all
               @conversation = Conversation.find(params[:id])
               @communications = Communication.all

          end
          @message = Message.new
          @communication = Communication.new


     end

     def create_send
          @message= Message.new(message: params[:message][:message])

          if @message.save
             flash[:notice] = 'Conversation saved successfully!'
             redirect_to new_communication_path
          else
             flash.now[:alert] = 'Conversation save failed!'
             render :new
          end
      end








     def new
          if current_user.nil?
               redirect_to user_session_path
          else
          @user = current_user
          @conversations = Conversation.all
          @communications = Communication.all
          @conversation = Conversation.new
          @communication = Communication.new



          end
              #render 'countries/new.html.erb'
     end

     def create

         @conversation= Conversation.new(user1_id: current_user.id,
                                        user2_id: params[:conversation][:user2_id])

         if @conversation.save
            flash[:notice] = 'Conversation saved successfully!'
            redirect_to conversations_url
         else
            flash.now[:alert] = 'Conversation save failed!'
            render :new
         end

     end



     def edit
         @conversation = conversation.find(params[:id])
            #render 'countries/edit.html.erb'
     end

     def update

     end

     def destroy
     end
end
