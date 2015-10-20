#Returns true if it finds an account number.
def account_bank(number)
		#account number is initialized
		pin = "1234-123-123"
		#account number is validated
		if number.match /\d{4}\-\d{3}-\d{3}/
				if number == pin
					true
				else 
					nil 
				end
		else
				"invalid number"
		end
end

#code driver...
p account_bank("1234-123-123") == true

#Returns an account number if it exists in the string and nil otherwise.
def number_account(number)
		#account number is validated and printed
		if number.match /\d{4}\-\d{3}-\d{3}/
			 number
		else
			 "invalid number"
		end
end

#code driver...
p number_account("1234-123-123") == "1234-123-123"

#Returns an array of numbers that exist within the string and an empty array otherwise.
def scan_account(number)
		#it returns account number
		number.scan(/\d{4}\-\d{3}-\d{3}/)
end

#code driver...
p scan_account("cuenta1:  cuenta 2: 6544-123-123") == ["6544-123-123"]

#Returns a string where if there are account numbers These will replaced by "X" in 
#the first seven numbers. ex. "XXXX-XXX-234"
def number_private(number)
		#first seven numbers are replaced by "X"
		number.gsub /\d{4}\-\d{3}/, "XXXX-XXX"
end

#code driver...
p number_private("cuenta1:  cuenta 2: 6544-123-123") == "cuenta1:  cuenta 2: XXXX-XXX-123"

#Returns a string formatted as any ten-digit number followed or have points instead of scripts
#it returns to its original format scripts which used to divide the ten digits. 
#If you find a number of fewer digits should not replace.
def corrector(number)
	  #string is validated and variables are assigned
	  num1 = number.match /\d{4}\d{3}\d{3}/
	  num2 = number.match /\d{4}\.\d{3}.\d{3}/
	  num3 = number.match /\d{4}\-\d{3}-\d{3}/
		#it evaluates account number
		if num1 || num2 || num3
			if number.match /\d{4}\.\d{3}.\d{3}/
				 number.sub /(\d{4}).(\d{3}).(\d{3})/, '\1-\2-\3'
			else
				 number.sub /(\d{4})(\d{3})(\d{3})/, '\1-\2-\3'
			end
		else 
			"invalid number"
		end
end

#code driver...
p corrector("1234123123")
p corrector("1234.123.123")
p corrector("123412312")


