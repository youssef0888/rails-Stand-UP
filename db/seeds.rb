
# Establishment.create({name: "Back stage", address: "blvd Anfa",capacity: 25 ,  type: 'bar', user_id: 1})
# Event.create({
#   name: 'homoragi', 
#   overview: "Ce spectacle est un medley d'humour et de musique qui réunit Humouraji, 
#   le collectif d'humoristes le plus populaire du Maroc et Fnaire, le groupe pilier de la musique marocaine." , 
#   time: Time.new, 
#   establishment_id: 2,
#   date: Date.new(2023, 11, 30), 
#   user_id: 4})

Reservation.create({number_of_persons: 3 , date: Date.new(2023, 11, 28), user_id: 2, event_id: 1 , confirmed: false })
