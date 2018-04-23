class PagesController < ApplicationController
    def home
        @testimonials = Testimonial.last(3).reverse
    end

end
