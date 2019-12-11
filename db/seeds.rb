# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
user_attributes =
[{"first_name":"Ketty","last_name":"Winham","email":"ketty0@gmail.com","gender":"Female", "password":"1234567"},
{"first_name":"Clovis","last_name":"Colvill","email":"clovis@yahoo.com","gender":"Female", "password":"89101112"},
{"first_name":"Susy","last_name":"Geldeard","email":"susy@libero.it","gender":"Female", "password":"13141516"},
{"first_name":"Brennan","last_name":"Kimmerling","email":"brennan@yahoo.com","gender":"Male", "password":"17181920"},
{"first_name":"Aluino","last_name":"Grodden","email":"aluino@gmail.co.uk","gender":"Male", "password":"21222324"},
{"first_name":"Elia","last_name":"Kubalek","email":"elia@libero.br","gender":"Male","password":"2526272829"},
{"first_name":"Benji","last_name":"Semiraz","email":"benji@gmail.fr","gender":"Male", "password":"3031323334"},
{"first_name":"Gerda","last_name":"Piggin","email":"gerda@yahoo.co.uk","gender":"Female", "password":"3536373839"},
{"first_name":"Anallese","last_name":"MacCarrane","email":"anallese@hotmail.co.uk","gender":"Female", "password":"4041424344"},
{"first_name":"Carl","last_name":"Camacke","email":"carl@ucla.ac.uk","gender":"Male", "password":"4546474849"}]

User.create!(user_attributes)
puts "Creating centers..."

center_attributes = [{name: "Spazio Salute", address: "corso lodi, milan", contact_person: "Giulio Paci"},
{name: "The White Medispa", address: "corso maggiore, milan", contact_person: "Giulia Pelli"},
{name: "Centro Olistico Milano", address: "corso molise, milan", contact_person: "Anna Folli"},
{name: "Meeting Club", address: "via giuseppe verdi, milan", contact_person: "Paolo Papi"},
{name: "One", address: "corso lodi, milan", contact_person: "Alessandro Poli"},
{name: "Prime Exclusive", address: "corso magenta, milan", contact_person: "Francesco Verdi"}]
Center.create!(center_attributes)

puts "Creating treatments..."

treatment_attributes = [{name:"Circulatory massage",description:"Targeted massage to help blood circulation", price_cents: 781, center_id: Center.ids.sample},
{"name":"Relaxing massage","description":"Massage made with moves that relax muscles and mind.","price_cents":965, center_id: Center.ids.sample},
{"name":"Lymphatic drainage massage","description":"Massage that helps lymph flow towards the discharge points, frees the body from excess fluids.","price_cents":856, center_id: Center.ids.sample},
{"name":"Tissue massage","description":"Manual anti cellulite indicated in cases of localized fat and cellulite treatment.","price_cents":10, center_id: Center.ids.sample},
{"name":"Sports massage","description":"With a sports massage to all the major muscles, tension is gradually relaxed and circulation restored.","price_cents":93, center_id: Center.ids.sample},
{"name":"Relaxing massage with Argan oil","description":"Relaxing massage made with argan oil properties, super nutrients and antioxidants.","price_cents":15, center_id: Center.ids.sample},
{"name":"Zonal massage","description":"Massage performed in an area of the body: back, leg, foot, neck and neck area.","price_cents":407, center_id: Center.ids.sample},
{"name":"Facial massage","description":"The treatment consists of a gentle massage of the face with the use of a vial or specific cream.","price_cents":263, center_id: Center.ids.sample},
{"name":"Couples massage","description":"Massage performed simultaneously with relaxing effect.","price_cents":453, center_id: Center.ids.sample},
{"name":"Love Massage","description":"Candle. Couples massage using aromatic candles with ppepper and cocoa, which when lit, create an oil that caress the body. They represent a real wellness ritual that involves all the senses.","price_cents":188, center_id: Center.ids.sample}]

Treatment.create!(treatment_attributes)
puts "Finished!"
