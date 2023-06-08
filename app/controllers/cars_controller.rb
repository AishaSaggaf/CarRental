class CarsController < ApplicationController
  def index 
    #define fixed points
    fixed_latitude = 21.507989 # Fixed latitude value
    fixed_longitude = 39.218917 # Fixed longitude value

    @cars=Car.all   #to fectch data from model(db) return value will be array

    @nearby_cars= @cars.select do |car|
      distance = calculate_distance(fixed_latitude, fixed_longitude, car.latitiude, car.longitude )
      distance <= 50  
    end  
  end

  def calculate_distance(lat1, long1, lat2, long2)
    r = 6371
    rlat1 = lat1 * Math::PI / 180 #convert to redian
    rlat2 = lat2 * Math::PI / 180 
    deltalat = rlat2-rlat1
    deltalong = (long2 - long1)* Math::PI / 180
    a = Math.sin(deltalat/2) * Math.sin(deltalat/2) +
        Math.cos(rlat1) * Math.cos(rlat2) *
        Math.sin(deltalong/2) * Math.sin(deltalong/2)

    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a))      

    d = r * c

  end 

end
