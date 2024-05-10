# Destroys Users when rails db:seed is run
User.destroy_all
# Create the users array
users = [
  { email: 'cisco_user@gmail.com', password: 'password', is_admin: false },
  { email: 'cisco_admin@gmail.com', password: 'password', is_admin: true }
]

# Iterate through users array and create instances of seed user data
users.each do |user|
  User.create!(
    email: user[:email],
    password: user[:password],
    is_admin: user[:is_admin]
  )
end

puts 'Destroying previous users ...'
puts 'Creating users ... '
puts 'Users created succesfully! '
