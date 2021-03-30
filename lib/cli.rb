require_relative "../lib/hotel.rb"
require "time"

class Cli < Hotel

    def hotel

        kiosk = true
        while kiosk
            

                puts "Welcome to the #{hotel_name} Hotel!"
                puts "Today temperature is #{heat} degree."
                puts "Please enter your name"
                name = gets
            
                puts "Hello #{name.upcase}"
                puts"Welcome to #{hotel_name}"
                puts "**********************************"
                transactions
                puts "**********************************"
                puts "Please enter your transaction"
                transaction = gets.to_i

            if transaction == 1
                puts "Check in transaction is loading"
                puts "**********************************"
                rooms
                puts "**********************************"
                puts "Please choose the room type!"
                room = gets.to_i
   
            if room == 1
                roomtpye_one
                roomnumber = gets.to_i

            if  available_double_beds_rooms.include?(roomnumber)
                puts "Please enter your how many nights are you gong to stay"
                nights = gets.to_i
                puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
                total_limit = nights * 150
                puts " Your Balance is #{total_limit}$"
                puts "Please enter your payment methods"
                payments
                payment = gets.to_i

            if  payment == 1
                accept_payment_one("Cash" , roomnumber)
            
            elsif payment == 2
                accept_payment_one("Credit/Debit" , roomnumber)

            else 
                puts "Wrong transaction"
            end
            else
                puts "Wrong transaction"
            end
            elsif room == 2
                roomtpye_two
                roomnumber = gets.to_i
            if  available_king_bed_rooms.include?(roomnumber)
                puts "Please enter your how many nights are you gong to stay"
                nights = gets.to_i
                puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
                total_limit = nights * 150
                puts " Your Balance is #{total_limit}$"
                puts "Please enter your payment methods"
                payments
                payment = gets.to_i
            if payment == 1
                accept_payment_two("Cash" , roomnumber)

            elsif payment == 2
                accept_payment_two("Credit/Debit" , roomnumber)
            else
                puts "Wrong transaction"
            end
            else
                puts "Wrong transaction"
            end

            elsif room == 3
                roomtpye_three
                roomnumber = gets.to_i

            if  available_bussiness_room.include?(roomnumber)
                puts "Please enter your how many nights are you gong to stay"
                nights = gets.to_i
                puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
                total_limit = nights * 175
                puts " Your Balance is #{total_limit}$"
                puts "Please enter your payment methods"  
                payments
                payment = gets.to_i
            if payment == 1
                accept_payment_three("Cash" , roomnumber)
            elsif payment == 2
                accept_payment_three("Credit/Debit" , roomnumber)
            else 
                puts "Wrong transaction"
            end
            else
                puts "Wrong transaction"
            end
    
            elsif room == 4
                roomtpye_four
                roomnumber = gets.to_i
            if  available_deluxe_rooms.include?(roomnumber)
                puts "Please enter your how many nights are you gong to stay"
                nights = gets.to_i
                puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
                total_limit = nights * 200
                puts " Your Balance is #{total_limit}$"
                puts "Please enter your payment methods"
                payments
                payment = gets.to_i

            if payment == 1 
                accept_payment_four("Cash" , roomnumber)
            elsif payment == 2      
                accept_payment_four("Credit/Debit" , roomnumber)
            else    
                puts "Wrong transaction"
            end
            else
                puts "Wrong transaction"
            end

            elsif room == 5
                roomtpye_five
                roomnumber = gets.to_i
            if  available_studio_suite_rooms.include?(roomnumber) 
                puts "Please enter your how many nights are you gong to stay"
                nights = gets.to_i
                puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
                total_limit = nights * 225
                puts " Your Balance is #{total_limit}$"
                puts "Please enter your payment methods"
                payments
                payment = gets.to_i
            if payment == 1
                accept_payment_five("Cash" , roomnumber)
            elsif payment == 2
                accept_payment_five("Credit/Debit" , roomnumber)   
            else
                puts "Wrong transaction"
            end
            else 
                puts "Wrong transaction"
            end
            elsif room == 6
                puts "Leaving the program"
            else    
                puts "Wrong transaction" 
            end
    
            elsif transaction == 2
                puts "Check out transaction is loading"
                puts " Please enter your room number"
                checkout_room = gets.to_i
            if occupied_rooms.include?(checkout_room)
                check_out_rooms("Avaiable",checkout_room)       
            if double_beds_rooms.include?(checkout_room)
                check_out_rooms("Double",checkout_room)
            elsif king_bed_rooms.include?(checkout_room)
                check_out_rooms("King",checkout_room)
            elsif bussiness_rooms.include?(checkout_room)
                check_out_rooms("Bussines",checkout_room)
            elsif deluxe_rooms.include?(checkout_room)
                check_out_rooms("Deluxe",checkout_room)
            else studio_suite_rooms.include?(checkout_room)
                check_out_rooms("Studio",checkout_room)
            end

            else 
                puts "Wrong room number entered" 
            end
            elsif transaction == 3
                puts "Leaving the program"
            else  
                puts "Wrong transaction"
            end      
            end     
        end
end



