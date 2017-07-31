# Nested Data Structure - Rented Office Space for a Small Company

company_hq = {
	office_1: {
		area_name: 'Executive Office',
		room_info: {
			total_tables: 2,
			seats_available: 3,
			total_phones: 3
		},
		notable_supplies: [
			"Land-Line Phone",
			"Company CEO's Computer",
			"Whiteboard"
		]
	},
	office_2: {
		area_name: 'Talent Acquisition Office',
		room_info: {
			total_tables: 2,
			seats_available: 2,
			total_phones: 1
		},
		notable_supplies: [
			"Land-Line Phone",
			"Whiteboard",
			"Company's Talent Acquisition Profile Filing Cabinet"
		]
	},
	meeting_room: {
		area_name: 'Main Meeting Room',
		room_info: {
			total_tables: 1,
			seats_available: 6,
			total_phones: 1
		},
		notable_supplies: [
			"Giant Whiteboard",
			"Company Speaker Phone",
			"Minor Office Supply Storage",
			"Large Screen Projector"
		]
	},
	sales_area: {
		area_name: 'The Sales Pit',
		room_info: {
			total_large_cubicles: 1,
			total_average_cubicles: 9,
			total_phones: 10
		},
		notable_supplies: [
			"Giant Whiteboard",
			"Small Screen Projector"
		]
	},
	extra_office_space: {
		area_name: [],
		room_info: {
			total_tables: 1,
			seats_available: 2,
			total_phones: 1
		},
		notable_supplies: [
			"Major Office Supply Storage",
			"wHITEBOARD"
		]
	}
}


# Accessing a couple pieces of deeply nested data from the structure:


# 1. Accessing the primary room data of the Talent Acquisition Office.

p company_hq[:office_2][:room_info]
# Return Value => {:total_tables=>2, :seats_available=>2,
# :total_phones=>1}



# 2. Accessing the name of a specific item in the Main Meeting Room.

p company_hq[:meeting_room][:notable_supplies][3]
# Return Value => "Large Screen Projector"



# 3. Accessing the empty area_name value in the extra_office_space
# and updating it with a new value. Then printing the line of code to
# ensure the new data has been set.

company_hq[:extra_office_space][:area_name].push('Side Office')
p company_hq[:extra_office_space][:area_name]
# Return Value => ["Side Office"]



# 4. Fix the uppercase and lowercase letters for The Sales Pit's
# projector data.

company_hq[:extra_office_space][:notable_supplies][1].swapcase!
p company_hq[:extra_office_space][:notable_supplies][1]
# Return Value => "Whiteboard"