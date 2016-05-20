# Example of what we want the data to look like after we've assigned into to ruby objects.
# 
# balance_history = [
# 	{
# 		'row' => 1,
# 		'date' => '2016-05-16',
# 		'balance' => 100
# 	},
# 	{
# 		'row' => 2,
# 		'date' => '2016-05-17',
# 		'balance' => 100
# 	},
# 	{
# 		'row' => 3,
# 		'date' => '2016-05-18',
# 		'balance' => 300
# 	}
# ]

# Creates a new array called balance_history
balance_history = Array.new

# Opens balance_history.txt and loops through each line,
# storing the contents of of each line in the temporary 'line' variable
File.readlines( 'balance_history.txt' ).each do | line |
	
	# As readlines loops through balance_history.txt,
	# line.split splits the contents of each line on the comma
	# and assigns the parts to an array called line_parts
	line_parts = line.split( ',' )
	
	# Converts the first item in the line_parts array to an integer and 
	# stores it as the value of the 'row' variable
	row = line_parts[ 0 ].to_i
	
	# Stores the second item in the line_parts array as the value of the 'date' variable
	date = line_parts[ 1 ]
	
	# Trims the carriage return off the last item in the line_parts array,
	# converts it to a float,
	# and stores it as the value of the 'balance' variable
	balance = line_parts[ 2 ].chomp.to_f
	
	# Creates a new hash called 'record'
	# with 'row', 'date', and 'balance' as keys,
	# and assigns the values of row, date, and balance as 
	# the values of those keys.
	record = {
		'row' => row,
		'date' => date,
		'balance' => balance
	}

	# Uses the push method to add the value of the 'record' hash to the end of the balance_history array.
	balance_history.push( record )
end

previous_balance = 0
balance_history.each do | record |
	balance_change = record['balance'] - previous_balance
	puts balance_change
	previous_balance = record['balance']
end