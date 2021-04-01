require_relative "../lib/hotel.rb"
require "time"

    class Cli < Hotel
        def welcome
            puts "Welcome to the #{hotel_name} Hotel!"
            puts "Today temperature is #{heat} degree."
            puts "Please enter your name"
            name = gets        
            puts "Hello #{name.upcase}"
            puts"Welcome to #{hotel_name}"
        end
        def main_menu
            self.welcome
            transactions
            puts "Please enter your transaction"   
        end
        def transaction_one
            puts "Check in transaction is loading"
            rooms
            puts "Please choose the room type!"
        end
        def room_one
            puts "Please enter your how many nights are you gong to stay"
            nights = gets.to_i
            puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
            total_limit = nights * 150
            puts " Your Balance is #{total_limit}$"
            puts "Please enter your payment methods"
            payments
        end
        def transaction_two
            puts "Check out transaction is loading"
            puts " Please enter your room number"
            checkout_room = gets.to_i
            occupied_rooms.include?(checkout_room)
            puts "Your Check out transaction is complited. Your balance is 0  . Have a nice day" 
            available_rooms<<checkout_room
            occupied_rooms.delete(checkout_room)
            available_rooms.sort!
            if double_beds_rooms.include?(checkout_room)
            available_double_beds_rooms<<checkout_room
            available_double_beds_rooms.sort!
            elsif king_bed_rooms.include?(checkout_room) 
            available_king_bed_rooms<<checkout_room
            available_king_bed_rooms.sort!
            end
            
        end
        def accept_payment_one(room_type , roomnumber)
            case room_type
            when "Cash1"
                puts "Thank you so much for Payment. Your Balance is 0"
                puts "Please take your room key in box"
                puts "Enjoy Your Stay"
                occupied_rooms << roomnumber
                occupied_rooms.sort!
                available_rooms.delete(roomnumber)
                available_double_beds_rooms.delete(roomnumber)
            when "Credit/Debit1"
                puts "Thank you so much for Payment. Your Balance is 0"
                puts "Please take your room key in box"
                puts "Enjoy Your Stay"
                occupied_rooms << roomnumber
                occupied_rooms.sort!
                available_rooms.delete(roomnumber)
                available_double_beds_rooms.delete(roomnumber)
            when "Cash2"
                puts "Thank you so much for Payment. Your Balance is 0"
                puts "Please take your room key in box"
                puts "Enjoy Your Stay"
                occupied_rooms << roomnumber
                occupied_rooms.sort!
                available_rooms.delete(roomnumber)
                available_king_bed_rooms.delete(roomnumber)
            when "Credit/Debit2"
                puts "Thank you so much for Payment. Your Balance is 0"
                puts "Please take your room key in box"
                puts "Enjoy Your Stay"    
                occupied_rooms << roomnumber
                occupied_rooms.sort!
                available_rooms.delete(roomnumber)
                available_king_bed_rooms.delete(roomnumber)
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
        def wrong_transaction
            puts "Wrong transaction"
        end
        
    def hotel
        kiosk = true
        while kiosk
        main_menu
        case transaction = gets.to_i
        when 1
        transaction_one
        case room = gets.to_i
        when 1
        roomtpye_one
        roomnumber = gets.to_i
        if  available_double_beds_rooms.include?(roomnumber)
        room_one
        payment = gets.to_i
        if  payment == 1
        accept_payment_one("Cash1" , roomnumber)
        elsif payment == 2
        accept_payment_one("Credit/Debit1" , roomnumber)
        else 
        wrong_transaction
        end
        else
        wrong_transaction
        end
        when 2
        roomtpye_two
        roomnumber = gets.to_i
        if  available_king_bed_rooms.include?(roomnumber)
        room_one
        payment = gets.to_i
        if payment == 1
        accept_payment_one("Cash2" , roomnumber)
        elsif payment == 2
        accept_payment_one("Credit/Debit2" , roomnumber)
        else
        wrong_transaction
        end
        else
        wrong_transaction
        end
        when 3
        puts "Leaving the program"
        end
        when 2
        self.transaction_two
        when 3
        puts "Leaving the program"
        end      
        end     
    end    
end