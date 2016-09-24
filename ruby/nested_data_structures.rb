sweet_concert = [
	
		stage = {
			billy: "drummer",
			willy: "singer",
			philly: "guitarist",
			nilly: "keyboardist"
		},
		
		backstage = [
			"Loud Speakers",
			"Not so loud speakers",
			"raving fans", ["kelly", "frank", "bob", "denice"]
		],
			
		seat_numbers = {
			old_dude: 63,
			young_dude: 19,
			old_lady: 58,
			young_lady:23,
			vip_seats: {
				president: "Obama",
				vice_pres: "Biden",
				actor: "Brad Pitt"
			}
		},
		
		concessions = [
			"beer",
			"hot dogs",
			"soda",
			"more beer",
			even_more_beer: "$10.00 a bottle"
		]
		
]

p sweet_concert[1][3].push("Denice's Sister")
p sweet_concert[2][:old_dude]
p sweet_concert[3].reverse
p sweet_concert[2][:vip_seats][:actor]
p sweet_concert[3][4]
p sweet_concert[0][:billy]
p sweet_concert[0][:nilly].upcase

	