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

center_attributes = [{name: "Spazio Salute", address: "Corso Lodi, Milan", contact_person: "Giulio Paci", owner_id: Owner.ids.sample, description: "We welcome you to the Spazio SoloSalute Cultural Association Amateur Sport Association in Milan. At our headquarters the Members found a HOLISTIC CENTER specialized in natural well-being with hydrocolon treatments in Milan, naturopathy and nutrition consultations, treatments such as ayurvedic massage and natural aesthetics, wellness and fitness courses to stay healthy in a natural way ."},
{name: "The White Medispa", address: "Corso Maggiore, Milan", contact_person: "Giulia Pelli", owner_id: Owner.ids.sample, description:"Located in the heart of Milan, The white medispa is a restful little spa offering medical and beauty treatments in an elegant and tranquil setting."},
{name: "Centro Olistico Milano", address: "Corso Molise, Milan", contact_person: "Anna Folli", owner_id: Owner.ids.sample, description:"Centro Olistico Milanese nasce a Milano nel 1993, scuola di massaggio leader nell'ambito della Formazione Professionale per il benessere psico-fisico della persona, è formata da un team di Medici specializzati e Massofisioterapisti/Osteopati con l'obiettivo di promuovere l'arte del Massaggio in tutte le sue forme."},
{name: "Qc Terme", address: "Via Giuseppe Verdi, Milan", contact_person: "Paolo Papi", owner_id: Owner.ids.sample, description:"Concedersi del tempo oggi è un lusso, soprattutto in città. Idromassaggi, saune, sale relax e bagni a vapore, un angolo di pace in Porta Romana. QC Termemilano, il tuo momento di benessere."},
{name: "Vivi Center", address: "Corso Lodi, Milan", contact_person: "Alessandro Poli", owner_id: Owner.ids.sample, description:"Entra in uno Spazio accogliente e rigenerante per il corpo e lo spirito. Prenditi il Tempo per stare insieme alla persona del cuore, agli amici e alle amiche più care. Piacere di condividere un' Emozione."},
{name: "Prime Exclusive", address: "Corso Magenta, Milan", contact_person: "Francesco Verdi", owner_id: Owner.ids.sample, description: "PRIME is an ethical, holistic, modern and conscious view of total well-being. He has a soul and many expressions. Every component, every activity, every technology is part of a considered choice that aims to integrate perfectly into the PRIME system, a method of working on the person that we have defined as the Egosystem."},
{name: "Mandarin Oriental", address: "Via Senato, Milan", contact_person: "Francesca Vinci", owner_id: Owner.ids.sample, description: "Il Mandarin Oriental, Milan unisce l'eleganza del design milanese a un intramontabile lusso orientale nel cuore della città più alla moda d’Italia. Ospitato in quattro prestigiosi edifici del XVIII secolo a pochi passi dal Teatro alla Scala, l'hotel offre la combinazione perfetta di comfort, stile ed eleganza."},
{name: "Montenero Beauty Spa", address: "Corso Maggiore, Milan", contact_person: "Paolo Goli", owner_id: Owner.ids.sample, description: "Montenero 8 Beauty & Luxury SPA è un centro elegante ed esclusivo situato nel cuore di Milano in prossimità della linea M3, fermata Porta Romana. In un ambiente rilassante e dotato di tutti i confort i nostri clienti ricevono le migliori cure per il benessere del corpo attraverso trattamenti eseguiti con tecnologie all’avanguardia, sofisticate tecniche di massaggio e cure della pelle"},
{name: "Hado Spa", address: "Corso Buenos Aires, Milan", contact_person: "Mattia Bondi", owner_id: Owner.ids.sample, description: "Hado spa si trova nel cuore di Milano, all’interno dell’Hotel Cristoforo Colombo. Il centro benessere offre servizi di totale relax completamente dedicati alla cura di viso e corpo. La spa è dotata di una moderna zona termale in cui vengono proposti trattamenti personalizzati fruibili mediante appositi pacchetti. Il centro è specializzato in rilassamento e purificazione del corpo attraverso massaggi e prodotti specifici. La nostra è una vera oasi di benessere in cui è possibile raggiungere la perfetta armonia di corpo e mente, ritrovando vitalità ed energia e prevenendo l’invecchiamento cutaneo."},
{name: "Amati Wellness Spa", address: "Corso Sempione, Milan", contact_person: "Carla Magnani", owner_id: Owner.ids.sample, description: "amaTi Wellness & Beauty SPA è il centro benessere che si trova al piano sotterraneo dell’Hotel De La Ville. Aperto, naturalmente, anche a chi non è ospite dell’hotel si trova a due passi dal Duomo. Amati Spa offre ai suoi clienti diversi servizi: trattamenti estetici e percorsi benessere, massaggi, palestra con personal trainer, spa. Piccola e raccolta, amaTi vi aiuta a staccare la spina dal mondo esterno ed a purificare pelle e organismo."},
]
Center.create!(center_attributes)

puts "Creating treatments..."

treatment_attributes = [{name:"Circulatory massage",description:"Targeted massage to help blood circulation", price_cents: 780, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 3, duration: 1},
{"name":"Relaxing massage","description":"Massage made with moves that relax muscles and mind.","price_cents":965, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 5, duration: 2},
{"name":"Lymphatic drainage massage","description":"Massage that helps lymph flow towards the discharge points, frees the body from excess fluids.","price_cents":856, center_id: Center.ids.sample, category: "Massage", capacity_per_hour: 1, duration: 1},
{"name":"Tissue massage","description":"Manual anti cellulite indicated in cases of localized fat and cellulite treatment.","price_cents":100, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 6, duration: 1},
{"name":"Sports massage","description":"With a sports massage to all the major muscles, tension is gradually relaxed and circulation restored.","price_cents":930, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 2, duration: 2},
{"name":"Relaxing massage with Argan oil","description":"Relaxing massage made with argan oil properties, super nutrients and antioxidants.","price_cents":150, center_id: Center.ids.sample, category: "Massage", capacity_per_hour: 3, duration: 3},
{"name":"Zonal massage","description":"Massage performed in an area of the body: back, leg, foot, neck and neck area.","price_cents":407, center_id: Center.ids.sample, category: "Health Treatment", capacity_per_hour: 3, duration: 3},
{"name":"Facial massage","description":"The treatment consists of a gentle massage of the face with the use of a vial or specific cream.","price_cents":263, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 5, duration: 1},
{"name":"Couples massage","description":"Massage performed simultaneously with relaxing effect.","price_cents":453, center_id: Center.ids.sample, category: "massage", capacity_per_hour: 1, duration: 1},
{"name":"Love Massage", description: "Couples massage using aromatic candles with pepper and cocoa, which when lit, create an oil that caress the body. They represent a real wellness ritual that involves all the senses", price_cents: 188, center_id: Center.ids.sample, category: "spa", capacity_per_hour: 3, duration: 1}]

Treatment.create!(treatment_attributes)
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


