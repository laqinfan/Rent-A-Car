class ReviewrentersController < ApplicationController

    def reviewpost
        print ">>>>>"
        print current_user
        @review = Review.create!(user: current_user, car_id: params[:car_id], text: params[:text], rating: params[:rating])
      end
    
end

def index 
 end 
 

def details
    if @car.reviews.present?
        i=1
        @avg=0
        sum=0
        @car.reviews.each do |review|
          sum=sum+review.rating 
        end
        @avg = sum/@product.reviews.length
        @number_of_reviews = @car.reviews.length
      else
        @avg = 0
        @number_of_reviews = 0      
    end
      @rev = false
      if @product.reviews.present? && current_user
        @product.reviews.each do |review|
          if review.user == current_user
            @rev = true
            break
          end
       end
end
  
