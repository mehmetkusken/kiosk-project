require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'
 
 class WeatherInformation

  URL = "https://api.weatherbit.io/v2.0/forecast/daily?city=Raleigh,NC&key=f8de7230225843f0bde4e3cd6b843b4f"

  def get_information
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def information_weather
    programs = JSON.parse(self.get_information)
    weather = programs["data"][0]
    heat = weather["high_temp"]  
  end
end