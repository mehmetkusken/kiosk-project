require_relative "../lib/data.rb"

class Hotel < WeatherInformation
    attr_accessor  :hotel_name , :heat, :transaction1 , :room1 , :double_beds_rooms, :king_bed_rooms, :occupied_rooms , :available_rooms , :available_double_beds_rooms , :available_king_bed_rooms , :time , :payment1
    
    def initialize
        @hotel_name = "Hyatt Regency"
        @transaction1 =[" Press 1 : Check in"," Press 2 : Check out", " Press 3 : for Exit"]
        @room1 =["Room,2 Double Beds","Room,1 King Bed","for Exit"]
        @double_beds_rooms = [100,101,102,103,104,105,106,107,108,109]
        @king_bed_rooms =[110,111,112,113,114,115,116,117,118,119]
        @occupied_rooms = []
        @available_rooms = [*100..119]
        @available_double_beds_rooms = [*100..109]
        @available_king_bed_rooms =[*110..119]
        @time = Date.today
        @payment1= ["Cash","Credit/Debit Card"]
        @heat = information_weather   
    end

    def transactions
        transaction1.each do |trans|
        puts trans
        end
    end
    def rooms
        room1.each_with_index do |roomm , index|
        puts "Press #{index+1} : #{roomm}"
        end
    end
    
    def payments
        payment1.each_with_index do |payment_method , index|
        puts"Press #{index+1} : #{payment_method}"
        end
    end
    
end