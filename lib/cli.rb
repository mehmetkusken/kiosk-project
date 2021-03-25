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
            sleep 1
        puts "Hello #{name.upcase}"
        puts"Welcome to #{hotel_name}"
        puts "**********************************"
        puts "#{transaction1}!"
        puts "#{transaction2}!"
        puts "#{transaction3}!"
        puts "**********************************"
        puts "Please enter your transaction"
        transaction = gets.to_i

    
    if transaction == 1
        sleep 1
        puts "Check in transaction is loading"
        sleep 1
        puts "**********************************"
        puts "#{room1}!"
        puts "#{room2}!"
        puts "#{room3}!"
        puts "#{room4}!"
        puts "#{room5}!"
        puts "#{room6}!"
        puts "**********************************"

        puts "Please choose the room type!"
        room = gets.to_i
   

    if room == 1
            sleep 1
            puts" Thank you for your choose"
            puts" Your transaction is loading"
            sleep 1
            puts "We have #{available_double_beds_rooms.length()} available room(s)"
            puts available_double_beds_rooms
            puts "Please enter your room number you would like to stay"
            roomnumber = gets.to_i

    if  available_double_beds_rooms.include?(roomnumber)
            sleep 1
            puts "Please enter your how many nights are you gong to stay"

            nights = gets.to_i
            sleep 1
            puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
            total_limit = nights * 150
            puts " Your Balance is #{total_limit}$"
            sleep 1

            puts "Please enter your payment methods"
            puts 
        
            puts " #{payment1}"
            puts " #{payment2}"
            payment = gets.to_i

        


    if payment == 1
            sleep 1
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_double_beds_rooms.delete(roomnumber)
           
    elsif payment == 2
            sleep 1
    if total_limit > limit
            sleep 1
            puts "You dont have enough limits"
            puts "Goodbye"
    elsif total_limit < limit
            sleep 1   
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_double_beds_rooms.delete(roomnumber)
    
    else
            sleep 1
            puts "Wrong transaction"
    end


    else 
            sleep 1
            puts "Wrong transaction"
    end


    else
        sleep 1
        puts "Wrong transaction"
    end

    
    elsif room == 2
        sleep 1
        puts" Thank you choose"
    puts" Your transaction is loading"
    puts "We have #{available_king_bed_rooms.length()} available room(s)"
    puts available_king_bed_rooms
    puts "Please enter your room number you would like to stay"
    roomnumber = gets.to_i

    if  available_king_bed_rooms.include?(roomnumber)
        sleep 1
        puts "Please enter your how many nights are you gong to stay"
        nights = gets.to_i
        sleep 1
        puts" Your Check in date is #{time} and your Check out date is #{time + nights}"

        total_limit = nights * 150
        puts " Your Balance is #{total_limit}$"

        sleep 1

        puts "Please enter your payment methods"
        puts 
        
        puts " #{payment1}"
        puts " #{payment2}"

        payment = gets.to_i
        sleep 1


        if payment == 1
            sleep 1
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            sleep 1
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_king_bed_rooms.delete(roomnumber)
        elsif payment == 2
            sleep 1
            if total_limit > limit
                sleep 1
                puts "You dont have enough limits"
                puts "Goodbye"
            elsif total_limit < limit
                sleep 1
                
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_king_bed_rooms.delete(roomnumber)
        
            
            else
                sleep 1
                puts "Wrong transaction"
            end


        else 
            sleep 1
            puts "Wrong transaction"
        end


    else
        sleep 1
        puts "Wrong transaction"
    end

    

    elsif room == 3
        sleep 1
    
        puts" Thank you choose"
    puts" Your transaction is loading"
    sleep 1
    puts "We have #{available_bussiness_room.length()} available room(s)"
    puts available_bussiness_room
    puts "Please enter your room number you would like to stay"
    roomnumber = gets.to_i

    if  available_bussiness_room.include?(roomnumber)
        sleep 1
        puts "Please enter your how many nights are you gong to stay"
        nights = gets.to_i
        puts" Your Check in date is #{time} and your Check out date is #{time + nights}"

        total_limit = nights * 175
        puts " Your Balance is #{total_limit}$"
        sleep 1

        puts "Please enter your payment methods"
        puts 
        
        puts " #{payment1}"
        puts " #{payment2}"

        payment = gets.to_i


        if payment == 1
            sleep 1
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_bussiness_room.delete(roomnumber)
        elsif payment == 2
            sleep 1
        
            if total_limit > limit
                sleep 1
                puts "You dont have enough limits"
                puts "Goodbye"
            elsif total_limit < limit
                sleep 1
                
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_bussiness_room.delete(roomnumber)
            
            else
                sleep 1
                puts "Wrong transaction"
            end


        else 
            sleep 1
            puts "Wrong transaction"
        end


    else
        sleep 1
        puts "Wrong transaction"
    end

    

        
    elsif room == 4
        sleep 1
        puts" Thank you choose"
    puts" Your transaction is loading"
    sleep 1
    puts "We have #{available_deluxe_rooms.length()} available room(s)"
    puts available_deluxe_rooms
    puts "Please enter your room number you would like to stay"
    roomnumber = gets.to_i

    if  available_deluxe_rooms.include?(roomnumber)
        sleep 1
        puts "Please enter your how many nights are you gong to stay"
        nights = gets.to_i
        puts" Your Check in date is #{time} and your Check out date is #{time + nights}"
        sleep 1
        total_limit = nights * 200
        puts " Your Balance is #{total_limit}$"
        sleep 1

        puts "Please enter your payment methods"
        puts 
        
        puts " #{payment1}"
        puts " #{payment2}"

        payment = gets.to_i


        if payment == 1
            sleep 1
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_deluxe_rooms.delete(roomnumber)
        elsif payment == 2
            sleep 1
            if total_limit > limit
                sleep 1
                puts "You dont have enough limits"
                puts "Goodbye"
            elsif total_limit < limit
                sleep 1
                
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_deluxe_rooms.delete(roomnumber)
            
            else
                sleep 1
                puts "Wrong transaction"
            end


        else 
            sleep 1
            puts "Wrong transaction"
        end


    else
        sleep 1
        puts "Wrong transaction"
    end
    elsif room == 5
        sleep 1
        puts" Thank you choose"
    puts" Your transaction is loading"
    sleep 1
    puts "We have #{available_studio_suite_rooms.length()} available room(s)"
    puts available_studio_suite_rooms
    sleep 1
    puts "Please enter your room number you would like to stay"
    roomnumber = gets.to_i

    if  available_studio_suite_rooms.include?(roomnumber)
        sleep 1
        puts "Please enter your how many nights are you gong to stay"
        nights = gets.to_i
        sleep 1
        puts" Your Check in date is #{time} and your Check out date is #{time + nights}"

        total_limit = nights * 225
        puts " Your Balance is #{total_limit}$"
        sleep 1

        puts "Please enter your payment methods"
        puts 
        
        puts " #{payment1}"
        puts " #{payment2}"

        payment = gets.to_i


        if payment == 1
            sleep 1
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_studio_suite_rooms.delete(roomnumber)

        elsif payment == 2
            sleep 1
        
            if total_limit > limit
                sleep 1
                puts "You dont have enough limits"
                puts "Goodbye"
            elsif total_limit < limit
                sleep 1
                
            puts "Thank you so much for Payment. Your Balance is 0"
            puts "Please take your room key in box"
            puts "Enjoy Your Stay"
            
            occupied_rooms << roomnumber
            occupied_rooms.sort!
            available_rooms.delete(roomnumber)
            available_studio_suite_rooms.delete(roomnumber)
            
            
            else
                sleep 1
                puts "Wrong transaction"
            end


        else 
            sleep 1
            puts "Wrong transaction"
        end


    else
        sleep 1
        puts "Wrong transaction"
    end
    
    else 
        sleep 1
    puts "Wrong transaction" 
    end
    
    
    elsif transaction == 2
            sleep 1
            puts "Check out transaction is loading"
            sleep 1
            puts " Please enter your room number"

            checkout_room = gets.to_i

    if occupied_rooms.include?(checkout_room)
            sleep 1
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
    elsif bussiness_rooms.include?(checkout_room)
        available_bussiness_room<<checkout_room
        available_bussiness_room.sort!
    elsif deluxe_rooms.include?(checkout_room)
        available_deluxe_rooms<<checkout_room
        available_deluxe_rooms.sort!
    else studio_suite_rooms.include?(checkout_room)
        available_studio_suite_rooms<<checkout_room
        available_studio_suite_rooms.sort!
    end
  
    else
            sleep 1
            puts "Wrong room number entered" 
    end
    
    elsif transaction == 3
            sleep 1
            puts "Leaving the program"
    else 
            sleep 1
            puts "Wrong transaction"
    end      
    end     
end
end