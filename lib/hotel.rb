require_relative "../lib/data.rb"

    class Hotel < WeatherInformation

    attr_accessor  :transaction1 , :transaction2 , :transaction3 , :room1 , :room2 , :room3 , :room4 , :room5 , :room6 , :double_beds_rooms , :king_bed_rooms , :bussiness_rooms , :deluxe_rooms , :studio_suite_rooms , :occupied_rooms , :available_rooms , :available_double_beds_rooms , :available_king_bed_rooms , :available_bussiness_room , :available_deluxe_rooms , :available_studio_suite_rooms , :time , :payment1 , :payment2 , :limit , :total_limit , :occupied 
    attr_reader :hotel_name , :heat
    
    def initialize
        @hotel_name = "Hyatt Regency"
        @transaction1 =" Press 1 : Check in"
        @transaction2 =" Press 2 : Check out"
        @transaction3 =" Press 3 : for Exit"
        @room1 =" Press 1 : Room,2 Double Beds"
        @room2 =" Press 2 : Room,1 King Bed"
        @room3 =" Press 3 : Bussiness Room"
        @room4 =" Press 4 : Deluxe Room"
        @room5 =" Press 5 : Studio Suite"
        @room6 =" Press 6 : for Exit"
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
        @payment1= "Press 1 : Cash"
        @payment2= "Press 2 : Credit/Debit Card"
        @limit = 500
        @total_limit 
        @occupied
        @heat = information_weather     
    end
end