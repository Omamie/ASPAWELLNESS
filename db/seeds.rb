# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Booking.destroy_all
Treatment.destroy_all
Center.destroy_all
Owner.destroy_all
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
{"first_name":"Carl","last_name":"Camacke","email":"carl@ucla.ac.uk","gender":"Male", "password":"4546474849"},
{"first_name":"Lisa","last_name":"MacCargrey","email":"lisa@hotmail.co.uk","gender":"Female", "password":"4041424344", type: "Owner"}]

User.create!(user_attributes)


puts 'Creating owners...'
owner_attributes =
[{"first_name":"Steven","last_name":"Smith","email":"steven0@gmail.com","gender":"Female", "password":"1234567"},
{"first_name":"David","last_name":"Green","email":"david@yahoo.com","gender":"Male", "password":"89101112"},
{"first_name":"Ellie","last_name":"Golden","email":"ellie@libero.it","gender":"Female", "password":"13141516"},
{"first_name":"Jacob","last_name":"Rice","email":"jacob@yahoo.com","gender":"Male", "password":"17181920"},
{"first_name":"Henrietta","last_name":"Silver","email":"henrietta@gmail.co.uk","gender":"Female", "password":"21222324"},
{"first_name":"John","last_name":"Smiley","email":"john10@gmail.com","gender":"Male", "password":"1234567"},
{"first_name":"Eliza","last_name":"Greene","email":"eliza@yahoo.com","gender":"Female", "password":"89101112"},
{"first_name":"Stacey","last_name":"Milk","email":"stacey@libero.it","gender":"Female", "password":"13141516"},
{"first_name":"Margaret","last_name":"West","email":"margaret@yahoo.com","gender":"Female", "password":"17181920"},
{"first_name":"Giovanni","last_name":"Southen","email":"giovanni@gmail.co.uk","gender":"Male", "password":"21222324"}]

Owner.create!(owner_attributes)


puts "Creating centers..."

center_attributes = [{name: "Spazio Salute", address: "Via San Cosmo 91, 20066 Milan", contact_person: "Giulio Paci", owner_id: Owner.ids.sample},
{name: "The White Medispa", address: "Via Giberti 26, 10070 Turin", contact_person: "Giulia Pelli", owner_id: Owner.ids.sample},
{name: "Centro Olistico Milano", address: "Via Parmigianino 34, 20146 Milan", contact_person: "Anna Folli", owner_id: Owner.ids.sample},
{name: "Meeting Club", address: "Via dei Condotti 25, 00187 Rome", contact_person: "Paolo Papi", owner_id: Owner.ids.sample},
{name: "One Exclusive", address: "Via della Croce 14, 00187 Rome", contact_person: "Alessandro Poli", owner_id: Owner.ids.sample},
{name: "Prime Exclusive", address: "Via Orcagna 36, 50121 Florence", contact_person: "Francesco Verdi", owner_id: Owner.ids.sample},
{name: "Mandarin Oriental", address: "Via Dati Goro 3, 50136 Florence", contact_person: "Francesca Vinci", owner_id: Owner.ids.sample},
{name: "Montenero Beauty Spa", address: "Via Luca Landucci 12, 50136 Florence", contact_person: "Paolo Goli", owner_id: Owner.ids.sample},
{name: "Hado Spa", address: "Via Rizzoli 24, 40125 Bologna", contact_person: "Mattia Bondi", owner_id: Owner.ids.sample},
{name: "Centro Benessere Eliseo", address: "Via Farini 16, 40124 Bologna", contact_person: "Carla Magnani", owner_id: Owner.ids.sample},
]
Center.create!(center_attributes)

puts "Creating treatments..."

treatment_attributes = [{name:"Circulatory Massage",description:"Targeted massage to help blood circulation", price_cents: 7800, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 3, duration: 60},
{"name":"Relaxing Massage","description":"Massage made with moves that relax muscles and mind.","price_cents":9650, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 5, duration: 120},
{"name":"Lymphatic Drainage Massage","description":"Massage that helps lymph flow towards the discharge points, frees the body from excess fluids.","price_cents":856, center_id: Center.ids.sample, category: "Massage", capacity_per_hour: 1, duration: 60},
{"name":"Tissue Massage","description":"Manual anti cellulite indicated in cases of localized fat and cellulite treatment.","price_cents":1000, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 6, duration: 60},
{"name":"Sports Massage","description":"With a sports massage to all the major muscles, tension is gradually relaxed and circulation restored.","price_cents":9300, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 2, duration: 120},
{"name":"Relaxing Massage with Argan Oil","description":"Relaxing massage made with argan oil properties, super nutrients and antioxidants.","price_cents":1500, center_id: Center.ids.sample, category: "Massage", capacity_per_hour: 3, duration: 180},
{"name":"Zonal Massage","description":"Massage performed in an area of the body: back, leg, foot, neck and neck area.","price_cents":4070, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 3, duration: 180},
{"name":"Facial Massage","description":"The treatment consists of a gentle massage of the face with the use of a vial or specific cream.","price_cents":2630, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 5, duration: 60},
{"name":"Couples Massage","description":"Massage performed simultaneously with relaxing effect.","price_cents":4530, center_id: Center.ids.sample, category: "massage", capacity_per_hour: 1, duration: 60},
{"name":"Back and Shoulders Massage", description: "Couples massage using aromatic candles with pepper and cocoa, which when lit, create an oil that caress the body. They represent a real wellness ritual that involves all the senses", price_cents: 1880, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 3, duration: 60}]

Treatment.create!(treatment_attributes)


puts "Uploading treatment photos..."

treatmentphoto_attributes = [{remote_attachment_url:"https://images.pexels.com/photos/56884/wellness-massage-relax-relaxing-56884.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", imageable_type: "Treatment", imageable_id: 1},
  {remote_attachment_url:"https://images.pexels.com/photos/161477/treatment-finger-keep-hand-161477.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", imageable_type: "Treatment", imageable_id: 2},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2016/12/24/16/16/massage-1929064_960_720.jpg", imageable_type: "Treatment", imageable_id: 3},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2015/01/05/22/29/wellness-589774_960_720.jpg", imageable_type: "Treatment", imageable_id: 4},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2017/09/20/14/59/massage-2768833_960_720.jpg", imageable_type: "Treatment", imageable_id: 5},
  {remote_attachment_url:"https://images.unsplash.com/photo-1515377905703-c4788e51af15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", imageable_type: "Treatment", imageable_id: 6},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2018/02/27/03/36/spa-3184610_960_720.jpg", imageable_type: "Treatment", imageable_id: 7},
  {remote_attachment_url:"https://images.unsplash.com/photo-1531299244174-d247dd4e5a66?ixlib=rb-1.2.1&auto=format&fit=crop&w=670&q=80", imageable_type: "Treatment", imageable_id: 8},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2015/03/23/17/40/couples-massage-686385_960_720.jpg", imageable_type: "Treatment", imageable_id: 9},
  {remote_attachment_url:"https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Treatment", imageable_id: 10}]

Photo.create!(treatmentphoto_attributes)

puts "Uploading center photos..."

centerphoto_attributes = [{remote_attachment_url:"https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Center", imageable_id: 1},
{remote_attachment_url:"https://images.unsplash.com/photo-1488345979593-09db0f85545f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Center", imageable_id: 2},
{remote_attachment_url:"https://images.unsplash.com/photo-1521750465-672a0f580901?ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80", imageable_type: "Center", imageable_id: 3},
{remote_attachment_url:"https://images.unsplash.com/photo-1541480551145-2370a440d585?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80", imageable_type: "Center", imageable_id: 4},
{remote_attachment_url:"https://images.unsplash.com/photo-1451443700141-5ddb6d85a8fc?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", imageable_type: "Center", imageable_id: 5},
{remote_attachment_url:"https://images.unsplash.com/photo-1552143232-001d35395682?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", imageable_type: "Center", imageable_id: 6},
{remote_attachment_url:"https://images.unsplash.com/photo-1517498327491-f903e1e281cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80", imageable_type: "Center", imageable_id: 7},
{remote_attachment_url:"https://cdn.pixabay.com/photo/2015/01/05/22/28/wellness-589770_960_720.jpg", imageable_type: "Center", imageable_id: 8},
{remote_attachment_url:"https://cdn.pixabay.com/photo/2015/07/02/10/29/swimming-828795_960_720.jpg", imageable_type: "Center", imageable_id: 9},
{remote_attachment_url:"https://cdn.pixabay.com/photo/2018/01/30/16/54/herbs-3119132_960_720.jpg", imageable_type: "Center", imageable_id: 10}]

Photo.create!(centerphoto_attributes)

puts "Creating Bookings..."

booking_attributes = [
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 2, start_time: "11/12/2019 14:00", status: 1, price_cents: 2000},
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 3, start_time: "11/12/2019 15:00", status: 1, price_cents: 3000},
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 2, start_time: "11/11/2019 15:00", status: 1, price_cents: 1800},
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 2, start_time: "20/12/2019 15:00", status: 1, price_cents: 1200},
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 1, start_time: "21/12/2019 07:00", status: 1, price_cents: 6000},
{customer: Customer.all.sample,treatment_id:Treatment.ids.sample, group_size: 5, start_time: "31/11/2019 17:00", status: 1, price_cents: 2000}]


Booking.create!(booking_attributes)
puts "Finished!"


