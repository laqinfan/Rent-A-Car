class ReviewsController < ApplicationController


    def myreviews
      @owner_ratings = OwnerRating.by_user(current_user)
      @car_ratings = CarRating.by_user(current_user)
    end    
end
