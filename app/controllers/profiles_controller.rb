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
            
            
           if id == current_user.id

               @profile = Profile.find(params[:id])  
            
           else
               print " 404 Not Found!"
         
            #render 'profiles/show.html.erb'
          end
          
          

        end

         def myprofile
            print "1***************************************************"

            if user_signed_in?
                print "2***************************************************"
                @profile = current_user.profile
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
    
    



        #def show_user
           #@profile =  Profile.where(["user_id = :u",{u: params[:user_id]}).first
    
        #end
     #def show
        
        #begin
           # @profile = current_user.profile
           #cue ActiveRecord::RecordNotFound
            #flash[:alert] = "Profile could not be found"
            #redirect_to profiles_url and return
        #end
     #end

     #def myprofile 
        #if user_signed_in?
            ##@profile = current_user.profile
       #else
            #@profile = nil
       #end
    #end

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

    private
    
    def set_profile
        @profile = Profile.find(params[:id])

    end

end