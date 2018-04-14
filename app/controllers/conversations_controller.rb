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
          @user = current_user
          @conversation = Conversation.find(params[:id])
          @communications = Communication.all


         render 'communications/index.html.erb'
     end






     def new
          @user = current_user
          @conversation = Conversation.new
              #render 'countries/new.html.erb'
     end

     def create
         @conversation= Conversation.new(user1_id: params[:conversation][:user1_id],
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
         begin

         end
     end
end
