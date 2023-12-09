Reservation.destroy_all
Event.destroy_all
Establishment.destroy_all
User.destroy_all
puts "destroy finished"
comedian = User.create!({email: "comedian@gmail.com", password: "123456", first_name: "coluche", last_name:"mend", profile: "Comedian", age: "54"})
customer = User.create!({email: "user@gmail.com", password: "123456", first_name: "gad",last_name:"elmaleh", profile: "Customer", age: "54"})
owner = User.create!({email: "owner@gmail.com", password: "123456", first_name: "samuel",last_name:"lj", profile: "Owner", age: "54"})

puts "creating Users done!"

10.times do
establishment = Establishment.create!({name: Faker::Movie.title, address: Faker::Address.street_address, capacity: 30 ,
  type: 'bar', bio: Faker::Quotes::Shakespeare.hamlet_quote, user_id: owner.id})
end

5.times do
 event = Event.create!({
  name: Faker::Book.title,
  overview: Faker::Quote.famous_last_words,
  time: Time.new,
  establishment_id: Establishment.first.id,
  date: Date.new(2023, 12, [15, 20, 23, 30, 16].sample),
  user_id: comedian.id})
end

Reservation.create!({number_of_persons: 3, date: Date.new(2023, 12, 23), user_id: customer.id, event_id:Event.first.id  , confirmed: false })
puts "seeds done"
puts "seeds done"
