class MapController < ApplicationController


  require 'net/http'
require 'json'

def geocode_location(location)
  # Construct the address string for geocoding
  address = "#{location}, USA"  # Assuming locations are in the USA

  # Construct the request URL for the Geocoding API
  url = URI("https://maps.googleapis.com/maps/api/geocode/json?address=#{URI.encode_www_form_component(address)}&key=AIzaSyD3rUIhe2-8AVOH5_-0_vEB2DAf7keNn2M")

  # Make the HTTP request
  response = Net::HTTP.get(url)

  # Parse the JSON response
  data = JSON.parse(response)

  # Extract latitude and longitude from the response
  if data['status'] == 'OK'
    lat = data['results'][0]['geometry']['location']['lat']
    lng = data['results'][0]['geometry']['location']['lng']
    return lat, lng
  else
    # Handle error or invalid response
    return nil, nil
  end
end
end
