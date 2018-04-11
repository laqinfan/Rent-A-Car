class ProfilesController < ApplicationController
    before_action :authenticate_user!
     def index

        @profiles = Profile.all
        
     end

     def new
        @profile = Profile.new
        # render 'profiles/new.html.erb'
     end

    def create
        @profile = Profile.new(drivers_license: params[:profile][:drivers_license],
               first_name: params[:profile][:first_name],
               last_name: params[:profile][:last_name],
               middle_name: params[:profile][:middle_name],
               backgroundcheck_status: params[:profile][:backgroundcheck_status],
               phone: params[:profile][:phone],
               social_security: params[:profile][:social_security])
        if @profile.save
           flash[:notice] = "Profile saved successfully"
           redirect_to profiles_url
        else
            flash.now[:alert] = "Profile save failed!!!!!"
            render :new
        end
    end

 
     def show
        
        begin
            @profile = current_user.profile
           cue ActiveRecord::RecordNotFound
            flash[:alert] = "Profile could not be found"
            redirect_to profiles_url and return
        end
     end

    #  def myprofile 
    #     if user_signed_in?
    #         @profile = current_user.profile
    #    else
    #         @profile = nil
    #    end
    # end

     def edit

        begin
            @profile = Profile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Profile could not be found"
            redirect_to profiles_url and return
         end

    end

     def update

        begin
            @profile = Profile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Profile could not be found"
            redirect_to profiles_url and return
        end
        if @profile.update(drivers_license: params[:profile][:drivers_license],
            first_name: params[:profile][:first_name],
            last_name: params[:profile][:last_name],
            middle_name: params[:profile][:middle_name],
            backgroundcheck_status: params[:profile][:backgroundcheck_status],
            phone: params[:profile][:phone],
            social_security: params[:profile][:social_security])
       
          flash[:notice] = "Profile updated successfully"
          redirect_to profiles_url 
        else
            flash.now[:alert] = "Profile could not be updated"
            render :edit
        end
        
    end

end