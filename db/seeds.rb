Reservation.destroy_all
Event.destroy_all
Establishment.destroy_all
User.destroy_all
puts "destroy finished"
comedian = User.create!({email:"comedian@gmail.com",password:"123456",firstName:"coluche",lastName:"mend",profile:"Comedian",age:"54"})
customer = User.create!({email:"user@gmail.com",password:"123456",firstName:"gad",lastName:"elmaleh",profile:"Customer",age:"54"})
owner = User.create!({email:"owner@gmail.com",password:"123456",firstName:"samuel",lastName:"lj",profile:"Owner",age:"54"})

puts "creating Users done!"

10.times do
establishment = Establishment.create!({name: Faker::Movie.title, address: Faker::Address.street_address, capacity: 30 ,
  type: 'bar', bio: Faker::Quotes::Shakespeare.hamlet_quote, user_id: owner.id})
end

event = Event.create!({
 name: 'homoragi',
 overview: "Ce spectacle est un medley d'humour et de musique qui réunit Humouraji,
 le collectif d'humoristes le plus populaire du Maroc et Fnaire, le groupe pilier de la musique marocaine." ,
 time: Time.new,
 establishment_id: Establishment.first.id,
 date: Date.new(2023, 11, 30),
 user_id: comedian.id})

Reservation.create!({number_of_persons: 3 , date: Date.new(2023, 11, 28), user_id: customer.id, event_id:event.id  , confirmed: false })
puts "seeds done"
