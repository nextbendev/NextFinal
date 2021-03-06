class LandingPageController < ApplicationController
	def index
		@trips = Trip.all.sample(4)

		#list of all locations where courses happen
		@all_locations = ["NYC",
             "San Francisco",
             "Austin",
             "Boston",
             "Atlanta",
             "Chicago",
             "London",
             "Los Angeles",
             "Melbourne",
             "Seattle",
             "Sydney",
             "Washington",
             "D.C.",
             "Dallas",
             "Providence",
             "San Diego",
             "Santa Monica",
             "Denver",
             "Singapore",
             "Brisbane",
             "Toronto",
             "Online",
             "Detroit",
             "Houston",
             "Miami",
             "Minneapolis",
             "Orlando",
             "Philadelphia",
             "Phoenix",
             "Portland",
             "Raleigh-Durham",
             "Salt Lake City",
             "Tampa",
             "Asheville",
             "Columbus",
             "Wilmington",
             "Charlotte",
             "New Orleans",
             "San Antonio",
             "Boulder",
             "San Jose",
             "Savannah",
             "Bellevue",
             "Orange County",
             "Silicon Valley",
             "Orange City",
             "Paris",
             "Barcelona",
             "Amsterdam",
             "Vancouver",
             "Berkeley",
             "Oakland",
             "Santa Clara",
             "Berlin",
             "Lehi",
             "Evanston",
             "Cleveland",
             "Cincinnati",
             "Pittsburgh",
             "Irvine",
             "Colorado Springs",
             "Grand Rapids",
             "Bangalore",
             "Kansas City",
             "Free",
             "Madrid",
             "Mexico City",
             "Sao Paulo",
             "Caracas",
             "Santiago",
             "Maracaibo",
             "Louisville",
             "Saint Louis",
             "Chattanooga",
             "Memphis",
             "Nashville",
             "Costa Rica",
             "New Jersey",
             "New Haven",
             "Arlington",
             "Tel Aviv",
             "Belo Horizonte",
             "Lille",
             "Bordeaux",
             "Copenhagen",
             "Lisbon",
             "Nantes",
             "Casablanca",
             "Marseille",
             "Brussels",
             "Montreal",
             "Rio de Janeiro",
             "Shanghai",
             "Chengdu",
             "Tokyo",
             "Bali",
             "Milan",
             "Buenos Aires",
             "Kyoto",
             "Truckee",
             "Playa del Carmen",
             "Valencia",
             "Bogota",
             "Johannesburg",
             "Cape Town",
             "Hong Kong",
             "Porto",
             "Medellin",
             "Guadalajara",
             "Victoria",
             "Halifax",
             "Calgary",
             "Kuala Lumpur"]  



	end
end
