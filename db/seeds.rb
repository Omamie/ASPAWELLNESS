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

[{"first_name":"Omamerhi","last_name":"Etefia","email":"oma@gmail.com","gender":"Female", "password":"1234567", "phone_number":"3334366789"},
{"first_name":"Clovis","last_name":"Colvill","email":"clovis@yahoo.com","gender":"Female", "password":"89101112", "phone_number":"3336366789"},
{"first_name":"Susy","last_name":"Geldeard","email":"susy@libero.it","gender":"Female", "password":"13141516", "phone_number":"3334366989"},
{"first_name":"Brennan","last_name":"Kimmerling","email":"brennan@yahoo.com","gender":"Male", "password":"17181920", "phone_number":"3336366789"},
{"first_name":"Aluino","last_name":"Grodden","email":"aluino@gmail.co.uk","gender":"Male", "password":"21222324", "phone_number":"3334346789"},
{"first_name":"Elia","last_name":"Kubalek","email":"elia@libero.br","gender":"Male","password":"2526272829", "phone_number":"3334366689"},
{"first_name":"Benji","last_name":"Semiraz","email":"benji@gmail.fr","gender":"Male", "password":"3031323334", "phone_number":"3334362789"},
{"first_name":"Gerda","last_name":"Piggin","email":"gerda@yahoo.co.uk","gender":"Female", "password":"3536373839", "phone_number":"3324366789"},
{"first_name":"Anallese","last_name":"MacCarrane","email":"anallese@hotmail.co.uk","gender":"Female", "password":"4041424344", "phone_number":"3134366789"},
{"first_name":"Carl","last_name":"Camacke","email":"carl@ucla.ac.uk","gender":"Male", "password":"4546474849", "phone_number":"3333366789"}]


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
{"first_name":"Giovanni","last_name":"Southen","email":"giovanni@gmail.co.uk","gender":"Male", "password":"21222324"},
{"first_name":"Lisa","last_name":"MacCargrey","email":"lisa@hotmail.co.uk","gender":"Female", "password":"4041424344", "phone_number":"3335666789"}]

Owner.create!(owner_attributes)


puts "Creating centers..."

center_attributes = [{name: "Spazio Salute", address: "Via Brera 46, 20121 Milano", contact_person: "Giulio Paci", owner_id: 11, description: "We welcome you to the Spazio SoloSalute Cultural Association Amateur Sport Association in Milan. At our headquarters the Members found a HOLISTIC CENTER specialized in natural well-being with hydrocolon treatments in Milan, naturopathy and nutrition consultations, treatments such as ayurvedic massage and natural aesthetics, wellness and fitness courses to stay healthy in a natural way ."},
{name: "Luisa Beauty Esthetic Center", address: "Via Montebello, 20121 Milan", contact_person: "Giulia Pelli", owner_id: 12, description:"Located in the heart of Milan, The white medispa is a restful little spa offering medical and beauty treatments in an elegant and tranquil setting."},
{name: "Centro Olistico Milano", address: "Via Gian Giacomo Mora 53, 20123 Milano", contact_person: "Anna Folli", owner_id: 13, description:"Centro Olistico Milanese nasce a Milano nel 1993, scuola di massaggio leader nell'ambito della Formazione Professionale per il benessere psico-fisico della persona, è formata da un team di Medici specializzati e Massofisioterapisti/Osteopati con l'obiettivo di promuovere l'arte del Massaggio in tutte le sue forme."},
{name: "Qc Terme", address: "Via di S. Nicola de' Cesarini 16, 00186 Roma", contact_person: "Paolo Papi", owner_id: 14, description:"Concedersi del tempo oggi è un lusso, soprattutto in città. Idromassaggi, saune, sale relax e bagni a vapore, un angolo di pace in Porta Romana. QC Termemilano, il tuo momento di benessere."},
{name: "Vivi Center", address: "Via Nomentana 23, 00161 Roma", contact_person: "Alessandro Poli", owner_id: 15, description:"Entra in uno Spazio accogliente e rigenerante per il corpo e lo spirito. Prenditi il Tempo per stare insieme alla persona del cuore, agli amici e alle amiche più care. Piacere di condividere un' Emozione."},
{name: "Prime Exclusive", address: "Via Svizzera 35, 00196 Roma", contact_person: "Francesco Verdi", owner_id: 16, description: "PRIME is an ethical, holistic, modern and conscious view of total well-being. He has a soul and many expressions. Every component, every activity, every technology is part of a considered choice that aims to integrate perfectly into the PRIME system, a method of working on the person that we have defined as the Egosystem."},
{name: "Mandarin Oriental", address: "Via Pietro Toselli 29, 50144 Firenze", contact_person: "Francesca Vinci", owner_id: 17, description: "Il Mandarin Oriental, Milan unisce l'eleganza del design milanese a un intramontabile lusso orientale nel cuore della città più alla moda d’Italia. Ospitato in quattro prestigiosi edifici del XVIII secolo a pochi passi dal Teatro alla Scala, l'hotel offre la combinazione perfetta di comfort, stile ed eleganza."},
{name: "Montenero Beauty Spa", address: "Via Arnolfo 45, 50121 Firenze", contact_person: "Paolo Goli", owner_id: 18, description: "Montenero 8 Beauty & Luxury SPA è un centro elegante ed esclusivo situato nel cuore di Milano in prossimità della linea M3, fermata Porta Romana. In un ambiente rilassante e dotato di tutti i confort i nostri clienti ricevono le migliori cure per il benessere del corpo attraverso trattamenti eseguiti con tecnologie all’avanguardia, sofisticate tecniche di massaggio e cure della pelle"},
{name: "Hado Spa", address: "Via Libero Bergonzoni 1, 40133 Bologna", contact_person: "Mattia Bondi", owner_id: 19, description: "Hado spa si trova nel cuore di Milano, all’interno dell’Hotel Cristoforo Colombo. Il centro benessere offre servizi di totale relax completamente dedicati alla cura di viso e corpo. La spa è dotata di una moderna zona termale in cui vengono proposti trattamenti personalizzati fruibili mediante appositi pacchetti. Il centro è specializzato in rilassamento e purificazione del corpo attraverso massaggi e prodotti specifici. La nostra è una vera oasi di benessere in cui è possibile raggiungere la perfetta armonia di corpo e mente, ritrovando vitalità ed energia e prevenendo l’invecchiamento cutaneo."},
{name: "Amati Wellness Spa", address: "Via Paolo Fabbri 69, 40138 Bologna", contact_person: "Carla Magnani", owner_id: 20, description: "amaTi Wellness & Beauty SPA è il centro benessere che si trova al piano sotterraneo dell’Hotel De La Ville. Aperto, naturalmente, anche a chi non è ospite dell’hotel si trova a due passi dal Duomo. Amati Spa offre ai suoi clienti diversi servizi: trattamenti estetici e percorsi benessere, massaggi, palestra con personal trainer, spa. Piccola e raccolta, amaTi vi aiuta a staccare la spina dal mondo esterno ed a purificare pelle e organismo."},
]
Center.create!(center_attributes)

puts "Creating treatments..."

treatment_attributes = [{name:"Circulatory Massage",description:"Targeted massage to help blood circulation", price_cents: 7800, center_id: 1, category: "Health", capacity_per_hour: 3, duration: 60},
{"name":"Relaxing Massage",description:"Massage made with moves that relax muscles and mind.","price_cents":9650, center_id: 2, category: "Health", capacity_per_hour: 5, duration: 120},
{"name":"Lymphatic Drainage Massage","description":"Massage that helps lymph flow towards the discharge points, frees the body from excess fluids.","price_cents":8550, center_id: 3, category: "Massage", capacity_per_hour: 1, duration: 60},
{"name":"Tissue Massage",description:"Manual anti cellulite indicated in cases of localized fat and cellulite treatment.","price_cents":1000, center_id: 4, category: "Health", capacity_per_hour: 6, duration: 60},
{"name":"Sports Massage",description:"With a sports massage to all the major muscles, tension is gradually relaxed and circulation restored.","price_cents":9300, center_id: 5, category: "Spa", capacity_per_hour: 2, duration: 120},
{"name":"Relaxing Massage with Argan Oil","description":"Relaxing massage made with argan oil properties, super nutrients and antioxidants.","price_cents":1500, center_id: 6, category: "Massage", capacity_per_hour: 3, duration: 180},
{"name":"Zonal Massage",description:"Massage performed in an area of the body: back, leg, foot, neck and neck area.","price_cents":4070, center_id: 7, category: "Health", capacity_per_hour: 3, duration: 180},
{"name":"Facial Massage",description:"The treatment consists of a gentle massage of the face with the use of a vial or specific cream.","price_cents":2630, center_id: 8, category: "Spa", capacity_per_hour: 5, duration: 60},
{"name":"Couples Massage",description:"Massage performed simultaneously with relaxing effect.","price_cents":4530, center_id: 9, category: "massage", capacity_per_hour: 1, duration: 60},
{"name":"Back and Shoulders Massage", description: "Couples massage using aromatic candles with pepper and cocoa, which when lit, create an oil that caress the body. They represent a real wellness ritual that involves all the senses", price_cents: 1880, center_id: 10, category: "Spa", capacity_per_hour: 3, duration: 90},
{"name":"Deep Tissue Massage", description: "During a deep tissue massage, a firmer pressure is used and more specific attention is paid to muscle knots or trigger points.", price_cents: 1950, center_id: 1, category: "Massage", capacity_per_hour: 3, duration: 60},
{"name":"Swedish Massage", description: "A Swedish massage is known as a ‘classic massage’. A Swedish massage aims to manipulate muscles into relaxation through the use of lighter pressured, gentle strokes throughout the massage.", price_cents: 2550, center_id: 2, category: "Health", capacity_per_hour: 3, duration: 120},
{"name":"Radiofrequency Skin Tightening & Contouring", description: "Radio Frequency Skin Tightening treatments help combat the effects of ageing by stimulating the regeneration of collagen to make skin smoother and tighter.", price_cents: 3000, center_id: 3, category: "Massage", capacity_per_hour: 3, duration: 90},
{"name":"Aromatherapy Balinese Massage", description: "The Balinese massage is unique in that it brings together several alternative medicine practices such as massage therapy, acupressure, and reflexology with the use of essential oils", price_cents: 3000, center_id: 4, category: "Massage", capacity_per_hour: 3, duration: 60},
{"name":"Reflexology", description: "Reflexology is an instantly relaxing and soothing therapy that benefits anyone who suffers from stress and anxiety.", price_cents: 5000, center_id: 5, category: "Massage", capacity_per_hour: 3, duration: 60},
{"name":"Hot Stone Massage", description: "Hot stone massage is a specialty massage where the therapist uses smooth, heated stones as an extension of their own hands, or by placing them on the body.", price_cents: 2500, center_id: 6, category: "Massage", capacity_per_hour: 3, duration: 60},
{"name":"Back Facial", description: "With a back facial you can relieve stress and deep cleanse that hard-to-reach area in one go.", price_cents: 2500, center_id: 7, category: "Massage", capacity_per_hour: 3, duration: 45},
{"name":"Thermal Spa Experience", description: "This exceptional skin softening body exfoliation combines sugar crystals with argan oil and milk, which gently massage, exfoliate rough skin and stimulate the micro-circulation.", price_cents: 6500, center_id: 8, category: "Spa", capacity_per_hour: 3, duration: 60},
{"name":"Ayuverdic Ritual Spa Day", description: "The ultimate Full Body Holistic Treatment, it will take you on a journey of the spices. With a highly specialist blend of cinnamon, clove, cardamom, ginger, anise, rose and geranium to brighten the skin and uplift the soul.", price_cents: 7500, center_id: 9, category: "Spa", capacity_per_hour: 3, duration: 90},
{"name":"Mind & Body Thermal Spa Experience", description: "Using a combination of massage techniques, this treatment de-stresses the mind and body leaving you relaxed and at peace.", price_cents: 4500, center_id: 10, category: "Spa", capacity_per_hour: 3, duration: 50},
{"name":"Body Scrub", description: "A full-body exfoliation ritual is to invigorate and revitalise the body, giving your skin a polished glow.", price_cents: 2000, center_id: 1, category: "Spa", capacity_per_hour: 3, duration: 90},
{"name":"Deep Cleansing Facial", description: "This facial combines steaming, deep exfoliation and extraction to open up clogged pores and draw out oil and debris.", price_cents: 2000, center_id: 2, category: "Spa", capacity_per_hour: 3, duration: 65},
{"name":"Massage for relax", description: "Back, neck and shoulders massage is the ideal solution to muscle tension caused by knots or postural problems in the upper body.", price_cents: 2000, center_id: 3, category: "Massage", capacity_per_hour: 3, duration: 45},
{"name":"Laser Epilation", description: "Laser hair removal is a safe and surprisingly fast option for anyone ready to get rid of their razor.", price_cents: 2000, center_id: 4, category: "Health", capacity_per_hour: 3, duration: 45},
{"name":"Ultrasound Facial", description: "Tighter, firmer, skin in under an hour. RF waves are sent through the skin – right down to the dermis (the deepest layer) – using a handheld wand.", price_cents: 2000, center_id: 5, category: "Health", capacity_per_hour: 3, duration: 45},
{"name":"Spa Day", description: "Total Time Out For Men Spa Day - 210 Min. Treatments (Massage, Facial, Pedicure), Lunch, Drinks", price_cents: 2000, center_id: 6, category: "Spa", capacity_per_hour: 3, duration: 210},
{"name":"Anti-Aging Facial", description: "A full-body exfoliation ritual is to invigorate and revitalise the body, giving your skin a polished glow.", price_cents: 2000, center_id: 7, category: "Spa", capacity_per_hour: 3, duration: 45}]

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
  {remote_attachment_url:"https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Treatment", imageable_id: 10},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2018/11/05/09/53/massage-3795691_960_720.jpg", imageable_type: "Treatment", imageable_id: 11},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2015/03/22/15/03/relaxation-684716_960_720.jpg", imageable_type: "Treatment", imageable_id: 12},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2017/05/02/06/39/foot-massage-2277450_960_720.jpg", imageable_type: "Treatment", imageable_id: 13},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2019/09/16/17/18/spa-4481538_960_720.jpg", imageable_type: "Treatment", imageable_id: 14},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2018/02/27/03/39/people-3184615_960_720.jpg", imageable_type: "Treatment", imageable_id: 15},
  {remote_attachment_url:"https://cdn.pixabay.com/photo/2018/02/27/03/39/people-3184615_960_720.jpg", imageable_type: "Treatment", imageable_id: 16},
  {remote_attachment_url:"https://images.unsplash.com/flagged/photo-1560944527-a4a429848866?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60", imageable_type: "Treatment", imageable_id: 17},
  {remote_attachment_url:"https://static.standard.co.uk/s3fs-public/thumbnails/image/2019/04/24/08/york-hall-leisure-centre-11-02-2016-3.jpg", imageable_type: "Treatment", imageable_id: 18},
  {remote_attachment_url:"https://i.pinimg.com/originals/11/e1/2c/11e12cdd80c1293b2830a11e6ecc7943.jpg", imageable_type: "Treatment", imageable_id: 19},
  {remote_attachment_url:"https://images.unsplash.com/photo-1544161515-4ab6ce6db874?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", imageable_type: "Treatment", imageable_id: 20},
  {remote_attachment_url:"https://www.treatwell.it/treatment-files/wp-content/uploads/sites/57/2019/09/hero-1.jpg", imageable_type: "Treatment", imageable_id: 21},
  {remote_attachment_url:"https://image.jimcdn.com/app/cms/image/transf/none/path/s5f8eb13eec4accb5/image/ib926a32d4e6afaed/version/1554740172/image.png", imageable_type: "Treatment", imageable_id: 22},
  {remote_attachment_url:"https://images.unsplash.com/photo-1519824145371-296894a0daa9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Treatment", imageable_id: 23},
  {remote_attachment_url:"https://medermesthetics.com/wp-content/uploads/2018/06/laser-hair-removal-vaughan-1080x675.jpg", imageable_type: "Treatment", imageable_id: 24},
  {remote_attachment_url:"https://nebula.wsimg.com/393c14d6af2f8f5e8c6ec9388724b459?AccessKeyId=829C9360ED53367DB83E&disposition=0&alloworigin=1", imageable_type: "Treatment", imageable_id: 25},
  {remote_attachment_url:"https://adelesparavigna.it/wp-content/uploads/2019/09/terme-post-rientro-1140x650.jpg", imageable_type: "Treatment", imageable_id: 26},
  {remote_attachment_url:"https://cdn.spafinder.com/2016/10/anti-aging-facial.jpg", imageable_type: "Treatment", imageable_id: 27}]

Photo.create!(treatmentphoto_attributes)

puts "Uploading center photos..."

centerphoto_attributes = [{remote_attachment_url:"https://images.unsplash.com/photo-1540555700478-4be289fbecef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80", imageable_type: "Center", imageable_id: 1},
{remote_attachment_url:"https://i.imgur.com/oVYBpxG.jpg", imageable_type: "Center", imageable_id: 2},
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
{customer: Customer.find(1),treatment_id:1, group_size: 2, start_time: "11/12/2019 14:00", status: 1, price_cents: 2000},
{customer: Customer.find(2),treatment_id:2, group_size: 3, start_time: "11/12/2019 15:00", status: 1, price_cents: 3000},
{customer: Customer.find(3),treatment_id:3, group_size: 2, start_time: "11/11/2019 15:00", status: 1, price_cents: 1800},
{customer: Customer.find(4),treatment_id:4, group_size: 2, start_time: "20/12/2019 15:00", status: 1, price_cents: 1200},
{customer: Customer.find(5),treatment_id:5, group_size: 1, start_time: "21/12/2019 07:00", status: 1, price_cents: 6000},
{customer: Customer.find(6),treatment_id:6, group_size: 5, start_time: "31/11/2019 17:00", status: 1, price_cents: 2000}]


Booking.create!(booking_attributes)
puts "Finished!"


