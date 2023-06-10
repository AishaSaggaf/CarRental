class DetailsController < ApplicationController
    include ActiveStorage::SetCurrent
    
    def show 
        @car = Car.find(params[ :id ])
    end
end
