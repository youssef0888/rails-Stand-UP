require 'faker'
Reservation.destroy_all
Event.destroy_all
Establishment.destroy_all
User.destroy_all
puts "destroy finished"
comedian = User.create!({email:"comedian@gmail.com",password:"123456",firstName:"coluche",lastName:"mend",profile:"Comedian",age:"54"})
customer = User.create!({email:"user@gmail.com",password:"123456",firstName:"gad",lastName:"elmaleh",profile:"Customer",age:"54"})
owner = User.create!({email:"owner@gmail.com",password:"123456",firstName:"samuel",lastName:"lj",profile:"Owner",age:"54"})

puts "creating Users done!"

establishment = Establishment.create!({name: "Back stage", address: "blvd Anfa",capacity: 25 ,  type: 'bar', user_id: owner.id})
5.times do 
event = Event.create!({
 name: Faker::Book.title, 
 overview: Faker::Quote.famous_last_words , 
 time: Time.new, 
 establishment_id: establishment.id,
 date: Date.new(2023, 11, 30), 
 user_id: comedian.id})
end
Reservation.create!({number_of_persons: 3 , date: Date.new(2023, 11, 28), user_id: customer.id, event_id:event.id  , confirmed: false })
puts "seeds done"