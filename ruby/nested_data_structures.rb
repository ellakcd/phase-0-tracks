street = {

deli: ["soda", "vegitables", "cookies"],
pizza_place: ["pasta", "garlic bread", "pizza"],
haus: ["lattes", "limeade", "wifi", "outdoor seating"],
apartment_complex: {
	no_apts: 10, 
	no_parking_spots: 5, 
	no_pets: 2, 
	pet_types: ["dog", "cat"]
}, 
basa: {
	sushi: "5 dollars", 
	poke: "6 dollars", 
	fish_sandwich: "10 dollars"
}, 
ice_cream: ["chocolate", "vanilla"]
}


puts street[:apartment_complex][:no_pets]
puts street[:basa][:fish_sandwich]
puts street[:ice_cream][1].upcase
street[:apartment_complex][:pet_types] << "raccoon?"
puts street[:apartment_complex][:pet_types]