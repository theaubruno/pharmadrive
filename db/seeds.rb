# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all .."
Drug.destroy_all
List.destroy_all
Patient.destroy_all
User.destroy_all



puts "Adding User"

d1 = User.create!(role: "doctor", name: "Wangermez Vincent", email:"doctor1@example.com", address:"107 Cours Balguerie Stuttenberg, 33300 Bordeaux", password:"password")

u1 = User.create!(role:"pharmacy", name: "Pharmacie du Musée", email:"pharmacy1@example.com", address:"93 Cours Balguerie Stuttenberg, 33300 Bordeaux", password:"password")

puts "Adding Patient"

p1 = Patient.create!(first_name: "Theau", last_name: "Bruno", email: "theau@example.com", user_id: d1.id)
p2 = Patient.create!(first_name: "Dennis", last_name: "Kojo", email: "kojo@example.com", user_id: d1.id)
p3 = Patient.create!(first_name: "Louis", last_name: "Loison", email: "louis@example.com", user_id: d1.id)
p4 = Patient.create!(first_name: "Vincent", last_name: "Grenier", email: "vincent@example.com", user_id: d1.id)
p5 = Patient.create!(first_name: "Julien", last_name: "Etheve", email: "julien@example.com", user_id: d1.id)
p6 = Patient.create!(first_name: "Michel", last_name: "Boyer", email: "michel@example.com", user_id: d1.id)
p7 = Patient.create!(first_name: "Dimitri", last_name: "Payet", email: "dimitri@example.com", user_id: d1.id)
p8 = Patient.create!(first_name: "Didier", last_name: "Drogba", email: "didier@example.com", user_id: d1.id)
p9 = Patient.create!(first_name: "Jean-Luc", last_name: "Rocher", email: "jean-luc@example.com", user_id: d1.id)
p10 = Patient.create!(first_name: "Caroline", last_name: "Receveur", email: "caroline@example.com", user_id: d1.id)
p11 = Patient.create!(first_name: "Laurine", last_name: "Pechu", email: "laurine@example.com", user_id: d1.id)
p12 = Patient.create!(first_name: "Alice", last_name: "Parisot", email: "Didier@example.com", user_id: d1.id)
p13 = Patient.create!(first_name: "Manon", last_name: "Monai", email: "manon@example.com", user_id: d1.id)
p14 = Patient.create!(first_name: "Dimitri", last_name: "Payet", email: "dimitri@example.com", user_id: d1.id)
p15 = Patient.create!(first_name: "Laeticia", last_name: "Rochefort", email: "laeticia@example.com", user_id: d1.id)
p16 = Patient.create!(first_name: "Louix", last_name: "Gonthier", email: "louix@example.com", user_id: d1.id)
p18 = Patient.create!(first_name: "Antoine", last_name: "Chauffre", email: "caroline@example.com", user_id: d1.id)
p19 = Patient.create!(first_name: "Chloé", last_name: "Loron", email: "chloé@example.com", user_id: d1.id)
p20 = Patient.create!(first_name: "Lena", last_name: "Contentin", email: "lena@example.com", user_id: d1.id)


Date.new(2018,02,15)

puts "Adding List"

l1 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2018,2,15), ready_at: "", delivered: true)
l2 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Entorse", prescribed_at: Date.new(2018,6,21), ready_at: "", delivered: true)
l3 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Burn-out", prescribed_at: Date.new(2018,8,30), ready_at: "", delivered: true)
l4 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Dépression", prescribed_at: Date.new(2018,12,7), ready_at: "", delivered: true)
l5 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Gastro", prescribed_at: Date.new(2019,03,20), ready_at: "", delivered: true)
l6 = List.create!(patient_id: p1.id, user_id: u1.id, note: "Fracture du genou", prescribed_at: Date.new(2019,07,14), ready_at: "", delivered: false)

l7 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2018,2,15), ready_at: "", delivered: true)
l8 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2018,6,21), ready_at: "", delivered: true)
l9 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2018,8,30), ready_at: "", delivered: true)
l10 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2018,12,7), ready_at: "", delivered: true)
l11 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2019,03,20), ready_at: "", delivered: true)
l12 = List.create!(patient_id: p2.id, user_id: u1.id, note: "Grippe", prescribed_at: Date.new(2019,07,14), ready_at: "", delivered: false)

puts "Adding Drug"

d1 = Drug.create!(list_id: l1.id, drug_name: "Doliprane", dosage:"1000mg", posology:"0-1-0", quantity:" 1 boîtes", qsp: "7 jours")
d2 = Drug.create!(list_id: l1.id, drug_name: "Ibuprophène", dosage:"500mg", posology:"1-0-1", quantity:" 2 boîtes", qsp: "5 jours")
d3 = Drug.create!(list_id: l1.id, drug_name: "Maxilase", dosage:"150cl", posology:"1-1-1", quantity:" 1 flacon", qsp: "5 jours")

d4 = Drug.create!(list_id: l5.id, drug_name: "Tiorfan", dosage:"500mg", posology:"1-1-0", quantity:" 1 boîtes", qsp: "4 jours")
d5 = Drug.create!(list_id: l5.id, drug_name: "Ibuprophène", dosage:"500mg", posology:"1-0-1", quantity:" 2 boîtes", qsp: " 4 jours")
d6 = Drug.create!(list_id: l5.id, drug_name: "Doliprane", dosage:"1000mg", posology:"0-1-0", quantity:" 1 boîtes", qsp: "7 jours")

d7 = Drug.create!(list_id: l2.id, drug_name: "Ketum", dosage:"500ml", posology:"1-0-1", quantity:" 1 flacon", qsp: "4 jours")
d8 = Drug.create!(list_id: l2.id, drug_name: "Doliprane", dosage:"1000mg", posology:"0-1-0", quantity:" 1 boîtes", qsp: "7 jours")

d9 = Drug.create!(list_id: l3.id, drug_name: "Citalorum almus", dosage:"500ml", posology:"0-0-1", quantity:" 2 boites", qsp: " 1 mois")
d9 = Drug.create!(list_id: l4.id, drug_name: "Citalorum almus", dosage:"500ml", posology:"0-0-1", quantity:" 2 boites", qsp: " 1 mois")


puts "Done ! "
