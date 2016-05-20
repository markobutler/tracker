# Just for kicks, write all those objects from chase_parser.rb into this file with corresponding row numbers. 

def record_transaction_object( transaction_object )
	
	row_number = 1

	File.readlines( 'chase_parser.rb' ).each do | line |
		row_number += 1
	end
	
	transaction_object_entry = " #{row_number} , #{transaction_object}\n "
	
	target = open( 'chase_objects_row_numbers.txt' , 'a' )
	
	target.write( transaction_object_entry )
	
	target.close
	
end	
	