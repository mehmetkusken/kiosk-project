# kiosk-project


## Objectives

Builded 4 classes , a class that is responsible for taking data from a web page , a class that uses that data to instantiate ,a third class that is responsible for the command line interface and run class . 

## Overview

This project will allow hotel guests to self check in and self check out at the kiosk. Additionally, they will be provided with an information about the current outside temperature (daily highest). Hotel.rb contains real time information about hotel’s room availability, and customers can make Check in , Check outs and the payment in this kiosk .


## Before You Begin

Run `bundle install `first.

Bundler allows you to denote which gems the app uses and lock your specific version . Then, automatically install those gems . Its a great gem version tracker for large apps. 
Start by using `bundle init` and then you can add gems to the gemfile

Include the bundler by adding ‘require bundler’ and ‘Bundler.require’ to the top of your code

## To Run This app

Run `Ruby bin/run.rb `


## Instructions

## `WeatherInformation`
Used and API to access my data, and then parsed this information using JSON . Additionally, they will be provided with an information about the current outside temperature (daily highest).

## `Hotel`

 Create a `Hotel` class that works with  `Cli`, `WeatherInformation` and objects to import a data  from data.rb . This class will have the following methods:


## It's CLI time!

Has a `#hotel` method starts that when the guests activate the screen of the kiosk, they are going to see a welcome message as well as the current outdoor temperature. They will also be asked to enter their name the CLI and prompts the user for input (try using `gets.to_i`). I used `if` statements so the program will proceed forward based on the option the guest selected. Read the tests carefully for specifics.


## Our Code in Action
Now run the executable file with bin/run.rb .  You should see all of the Check in and Check out transactions in your terminal .


