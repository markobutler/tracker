# Creates a new function called record_balance_entry that takes the value of current_balance as a parameter.
def record_balance_entry( current_balance )
	
	# Sets the value of the row_number variable to 1
	# QUESTION: How can row_number be set outside the loop but still work inside the loop? What's the deal with 'local' variables?			
	row_number = 1
	
	# Opens balance_history.txt with as a File object 
	# Uses the readlines method to loop through each line of the file, 
	# storing the contents of each line in the temporary 'line' variable,
	# then increments the value of row_number each time runs the loop
	File.readlines( 'balance_history.txt' ).each do |line|
		row_number += 1		
	end
	
	# Concatenates the values of row_number, Time.now, and current_balance as a string and assigns the string to the balance_entry variable.
	balance_entry = "#{row_number},#{Time.now},#{current_balance}\n"
		
	# Runs the open command on balance_history.txt and opens it in 'append' mode. 
	# This puts the file 'pointer' in the last position in the file so anything written 
	# to the file will be correctly appended to it rather than overwriting other data
	# balance_history.txt (now open in append mode) is now stored as the value of the 'target'
	# variable.	
	target = open("balance_history.txt", 'a')
	
	# Passes the value of balance_entry into the 'target' variable using the write method. 
	# In other words, appends the value of balance entry to the balance_history.txt file.
	target.write(balance_entry)
	
	# Closes the target variable.
	target.close
	
end

# Creates a new function called 'new_entry' that takes one paramter 'filename'
def new_entry(filename)
 	
 	# Asks for the user's current checking account balance.
	print "What's your checking account balance? "
	
	# Takes the current balance from the user, converts it to a float, and makes it the value of the 'current_balance' variable.
	current_balance = $stdin.gets.chomp.to_f	

	# Passes the value of 'current_balance' into 'record_balance_entry' and runs record_balance_entry.
	record_balance_entry(current_balance)
	
	# Tells me it successfully recorded the balance and shows me the amount.
	puts "Nice work. You've added #{current_balance} to your transaction history."
		
end	

# Runs the new_entry function on balance_history.txt
new_entry("balance_history.txt")