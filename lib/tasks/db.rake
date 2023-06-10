namespace :db do
task data_import: :environment do 
new_car=Car.new(
    make: "Audi" ,
    model: "A5" ,
    km_travelled: 160 ,
    latitiude: 21.528108 , 
    longitude: 39.165712 ,
    available_from: Time.now , 
    available_to:  Time.now + 1.week
)
new_car.images.attach(io: File.open("../AudiCar.jpg"), filename: "AudiCar.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../AudiCar2.jpg"), filename: "AudiCar2.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../AudiCar3.jpg"), filename: "AudiCar3.jpg" , 
content_type: "image/jpeg")
new_car.save

new_car=Car.new(
    make: "BMW" ,
    model: "X5" ,
    km_travelled: 200 ,
    latitiude: 21.501262, 
    longitude: 39.195606 , 
    available_from: Time.now , 
    available_to:  Time.now + 1.day
)
new_car.images.attach(io: File.open("../BMWCar.jpg"), filename: "BMWCar.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../BMWCar2.jpg"), filename: "BMWCar2.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../BMWCar3.jpg"), filename: "BMWCar3.jpg" , 
content_type: "image/jpeg")
new_car.save

new_car=Car.new(
    make: "Toyota" ,
    model: "Camry" ,
    km_travelled: 250 ,
    latitiude: 21.549863,
    longitude:  39.229119 ,
    available_from: Time.now , 
    available_to:  Time.now + 1.week
)
new_car.images.attach(io: File.open("../ToyotaCar.jpg"), filename: "ToyotaCar.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../ToyotaCar2.jpg"), filename: "ToyotaCar2.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../ToyotaCar3.jpg"), filename: "ToyotaCar3.jpg" , 
content_type: "image/jpeg")
new_car.save

new_car=Car.new(
    make: "Hyundai" ,
    model: "Kona" ,
    km_travelled: 180 ,
    latitiude: 21.969542, 
    longitude: 38.988384 ,
    available_from: Time.now , 
    available_to:  Time.now + 1.month
)
new_car.images.attach(io: File.open("../HyundaiCar.jpg"), filename: "HyundaiCar.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../HyundaiCar2.jpg"), filename: "HyundaiCar2.jpg" , 
content_type: "image/jpeg")
new_car.images.attach(io: File.open("../HyundaiCar3.jpg"), filename: "HyundaiCar3.jpg" , 
content_type: "image/jpeg")
new_car.save

    end 
end