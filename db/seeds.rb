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

puts "Finished!"
