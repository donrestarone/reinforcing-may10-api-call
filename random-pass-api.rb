require 'httparty'


#p parsed_response['pws'].count


def password_gen
	endpoint = 'https://makemeapassword.org/api/v1/pronouncable/json?c=10&sc=5'

	response = HTTParty.get(endpoint)
	parsed_response = JSON.parse(response.body)
	passwords = []
	
	parsed_response['pws'].each do |password|
		passwords.push password
	end
	
	p "generated #{passwords.count} passwords"
	p 'the passwords are' 
	p passwords
	return passwords
end

password_gen