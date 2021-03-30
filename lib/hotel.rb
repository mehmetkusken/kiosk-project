require_relative "../lib/data.rb"

class Hotel < WeatherInformation

    attr_accessor  :hotel_name , :heat, :transaction1 , :room1 , :double_beds_rooms, :king_bed_rooms, :bussiness_rooms, :deluxe_rooms, :studio_suite_rooms , :occupied_rooms , :available_rooms , :available_double_beds_rooms , :available_king_bed_rooms , :available_bussiness_room , :available_deluxe_rooms , :available_studio_suite_rooms , :time , :payment1 , :occupied 
    
    def initialize
        @hotel_name = "Hyatt Regency"
        @transaction1 =[" Press 1 : Check in"," Press 2 : Check out", " Press 3 : for Exit"]
        @room1 =["Room,2 Double Beds","Room,1 King Bed","Bussiness Room","Deluxe Room","Studio Suite","for Exit"]
        @double_beds_rooms = [100,101,102,103,104,105,106,107,108,109]
        @king_bed_rooms =[110,111,112,113,114,115,116,117,118,119]
        @bussiness_rooms = [120,121,122,123,124,125,126,127,128,129]
        @deluxe_rooms = [130,131,132,133,134,135,136,137,138,139]
        @studio_suite_rooms = [140,141,142,143,144,145,146,147,148,149]
        @occupied_rooms = []
        @available_rooms = [*100..149]
        @available_double_beds_rooms = [*100..109]
        @available_king_bed_rooms =[*110..119]
        @available_bussiness_room =[*120..129]
        @available_deluxe_rooms =[*130..139]
        @available_studio_suite_rooms =[*140..149]
        @time = Date.today
        @payment1= ["Cash","Credit/Debit Card"]
        @occupied
        @heat = information_weather   
    end

    def accept_payment_one(room_type , roomnumber)
        
        case room_type
        when "Cash"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_double_beds_rooms.delete(roomnumber)
        when "Credit/Debit"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_double_beds_rooms.delete(roomnumber)
        end   
    end

    def accept_payment_two(room_type , roomnumber)
        
        case room_type
        when "Cash"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_king_bed_rooms.delete(roomnumber)
        when "Credit/Debit"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"    
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_king_bed_rooms.delete(roomnumber)
        end   
    end

    def accept_payment_three(room_type , roomnumber)
        
        case room_type
        when "Cash"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_bussiness_room.delete(roomnumber)
        when "Credit/Debit"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_bussiness_room.delete(roomnumber)
        end   
    end

    def accept_payment_four(room_type , roomnumber)
        
        case room_type
        when "Cash"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_deluxe_rooms.delete(roomnumber)
        when "Credit/Debit"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_deluxe_rooms.delete(roomnumber)
        end   
    end

    def accept_payment_five(room_type , roomnumber)
        
        case room_type
        when "Cash"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_studio_suite_rooms.delete(roomnumber)
        when "Credit/Debit"
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_studio_suite_rooms.delete(roomnumber)
        end   
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

    def roomtpye_one
            puts" Thank you for your choose"
            puts" Your transaction is loading"
            puts "We have #{available_double_beds_rooms.length()} available room(s)"
            puts available_double_beds_rooms
            puts "Please enter your room number you would like to stay"
    end

    def roomtpye_two
            puts" Thank you choose"
            puts" Your transaction is loading"
            puts "We have #{available_king_bed_rooms.length()} available room(s)"
            puts available_king_bed_rooms
            puts "Please enter your room number you would like to stay"
    end

    def roomtpye_three
            puts" Thank you choose"
            puts" Your transaction is loading" 
            puts "We have #{available_bussiness_room.length()} available room(s)"
            puts available_bussiness_room
            puts "Please enter your room number you would like to stay"
    end

    def roomtpye_four
            puts" Thank you choose"
            puts" Your transaction is loading"
            puts "We have #{available_deluxe_rooms.length()} available room(s)"
            puts available_deluxe_rooms
            puts "Please enter your room number you would like to stay"
    end

    def roomtpye_five
            puts" Thank you choose"
            puts" Your transaction is loading"
            puts "We have #{available_studio_suite_rooms.length()} available room(s)"
            puts available_studio_suite_rooms 
            puts "Please enter your room number you would like to stay"
    end

    def payments
            payment1.each_with_index do |payment_method , index|
            puts"Press #{index+1} : #{payment_method}"
            end
    end

    def check_out_rooms(checkout , checkout_room)
        case checkout
        when "Avaiable"
            puts "Your Check out transaction is complited. Your balance is 0  . Have a nice day" 
            available_rooms<<checkout_room
            occupied_rooms.delete(checkout_room)
            available_rooms.sort!
        when "Double"
            available_double_beds_rooms<<checkout_room
            available_double_beds_rooms.sort!
        when "King"
            available_king_bed_rooms<<checkout_room
            available_king_bed_rooms.sort!
        when "Bussines"
            available_bussiness_room<<checkout_room
            available_bussiness_room.sort!
        when "Deluxe"
            available_deluxe_rooms<<checkout_room
            available_deluxe_rooms.sort!
        when "Suite"
            available_studio_suite_rooms<<checkout_room
            available_studio_suite_rooms.sort!
        end
    end

    
end