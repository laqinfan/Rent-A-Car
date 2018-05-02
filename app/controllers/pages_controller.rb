class PagesController < ApplicationController
    def home
        @testimonials = Testimonial.last(3).reverse
    end
    
    def about 
    end
    
end
