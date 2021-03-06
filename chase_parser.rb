# Receives a Chase bank checking account transaction history csv, parses it, and turns it into a hash.

chase_transactions = Array.new # Create an array called 'chase_transactions'

File.readlines( 'chase.csv' ).each do | line | # loop through lines and store contents in 'line'	
	
	line_elements = line.split( ',' ) # split 'line' contents on commas, store results in line_elements Array
	
#   Turns out it's okay to set these while creating the transaction_record hash. 
# 	date = line_elements[1]
# 	payee = line_elements[2].chomp
# 	amount = line_elements[3].to_f
# 	type = line_elements[0]
		
	transaction_record = {
		
		'date' => line_elements[ 1 ],
		'payee' => line_elements[ 2 ].chomp,
		'amount' => line_elements[ 3 ].to_f,
		'type' => line_elements[ 0 ] 
		
		}	
		
		chase_transactions.push( transaction_record )
		
end

puts chase_transactions

# Leaving off here for now. The whole transaction history is now in a nice hash, ready to be played with later. 
