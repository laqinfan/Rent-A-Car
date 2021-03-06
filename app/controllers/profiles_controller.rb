class ProfilesController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :set_profile, only: [:show, :edit, :update]

    def index
        @profiles = Profile.all
    end

    def new
        @profile = Profile.new
        # render 'profiles/new.html.erb'
    end

    def create
        @profile = Profile.new(user_id: params[:profile][:user_id],
            drivers_license: params[:profile][:drivers_license],
            first_name: params[:profile][:first_name],
            last_name: params[:profile][:last_name],
            middle_name: params[:profile][:middle_name],
            backgroundcheck_status: params[:profile][:backgroundcheck_status],
            phone: params[:profile][:phone],
            social_security: params[:profile][:social_security])
        if @profile.save
        flash[:notice] = "Profile saved successfully"
        redirect_to my_profile_url
        else
            flash.now[:alert] = "Profile save failed!!!!!"
            render :new
        end
    end


    def history
         @ctr = 0
         @p = 0
         @profile = Profile.find(params[:id])
         @contracts = Contract.all
         @rate_renters = RateRenter.all

   end

    def show
        @profile = Profile.find(params[:id])
        @owner_ratings = OwnerRating.by_owner(@profile.user)
        #@profile = Profile.find(params[:id])
        #render 'profiles/show.html.erb'
    end

    def myprofile
        if user_signed_in?
            @profile = current_user.profile
        else
            @profile = nil
        end
    end

    def edit
        begin
            @profile = Profile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Profile could not be found"
            redirect_to my_profile_url and return
        end
    end

    def update
        begin
            @profile = Profile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            flash[:alert] = "Profile could not be found"
            redirect_to my_profile_url and return
        end
        if @profile.update(user_id: params[:profile][:user_id],
            drivers_license: params[:profile][:drivers_license],
            first_name: params[:profile][:first_name],
            last_name: params[:profile][:last_name],
            middle_name: params[:profile][:middle_name],
            backgroundcheck_status: params[:profile][:backgroundcheck_status],
            phone: params[:profile][:phone],
            social_security: params[:profile][:social_security])

            flash[:notice] = "Profile updated successfully"
            redirect_to my_profile_url
        else
            flash.now[:alert] = "Profile could not be updated"
            render :edit
        end
    end

    private

    def set_profile
        begin
            @profile = Profile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to profiles_url, alert: "Profile not found."
        end
    end

end
