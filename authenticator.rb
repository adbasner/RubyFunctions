# user array

users = [{ username: 'andy', password: 'password' }]

# auth method
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
  'Credentials were not correct'
end

# program flow
puts 'Welcome to the authentcator andy'
25.times { print '-' }
puts ''

puts 'Enter your username and password to get your user object back'

attempts = 1
while attempts < 4
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  password = gets.chomp
  authentication = auth_user(username, password, users)
  puts authentication
  puts 'Press n to quit or any other key to continue: '
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end
puts 'You ahve exceceed the max attempts' if attempts == 4


