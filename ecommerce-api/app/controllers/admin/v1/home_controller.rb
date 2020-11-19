module Admin::V1
  class HomeController < ApiController
    def index
      render json: { message: "It's working, dude!" } 
    end    
  end
end