# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all .."
Patient.destroy_all
User.destroy_all
List.destroy_all

puts "Adding User"

d1 = User.create!(role: "doctor", name: "Wangermez Vincent", email:"doctor1@example.com", password:"password")

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



puts " Adding List"

l1 = List.create!(patient_id: p1.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l2 = List.create!(patient_id: p2.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l3 = List.create!(patient_id: p3.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l4 = List.create!(patient_id: p4.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l5 = List.create!(patient_id: p5.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l6 = List.create!(patient_id: p6.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")

puts "Done ! "
