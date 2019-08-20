# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = patient.new(first_name: "Theau", last_name: "Bruno", email: "theau@example.com")
p2 = patient.new(first_name: "Dennis", last_name: "Kojo", email: "kojo@example.com")
p3 = patient.new(first_name: "Louis", last_name: "Loison", email: "louis@example.com")
p4 = patient.new(first_name: "Vincent", last_name: "Grenier", email: "vincent@example.com")
p5 = patient.new(first_name: "Julien", last_name: "Etheve", email: "julien@example.com")
p6 = patient.new(first_name: "Michel", last_name: "Boyer", email: "michel@example.com")
p7 = patient.new(first_name: "Dimitri", last_name: "Payet", email: "dimitri@example.com")
p8 = patient.new(first_name: "Didier", last_name: "Drogba", email: "didier@example.com")
p9 = patient.new(first_name: "Jean-Luc", last_name: "Rocher", email: "jean-luc@example.com")
p10 = patient.new(first_name: "Caroline", last_name: "Receveur", email: "caroline@example.com")
p11 = patient.new(first_name: "Laurine", last_name: "Pechu", email: "laurine@example.com")
p12 = patient.new(first_name: "Alice", last_name: "Parisot", email: "Didier@example.com")
p13 = patient.new(first_name: "Manon", last_name: "Monai", email: "manon@example.com")
p14 = patient.new(first_name: "Dimitri", last_name: "Payet", email: "dimitri@example.com")
p15 = patient.new(first_name: "Laeticia", last_name: "Rochefort", email: "laeticia@example.com")
p16 = patient.new(first_name: "Louix", last_name: "Gonthier", email: "louix@example.com")
p18 = patient.new(first_name: "Antoine", last_name: "Chauffre", email: "caroline@example.com")
p19 = patient.new(first_name: "Chloé", last_name: "Loron", email: "chloé@example.com")
p20 = patient.new(first_name: "Lena", last_name: "Contentin", email: "lena@example.com")

d1 = user.new(role: "doctor", name: "Wangermez Vincent", email:"doctor1@example.com", password:"password")

l1 = list.new(patient_id: p1.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l2 = list.new(patient_id: p2.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l3 = list.new(patient_id: p3.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l4 = list.new(patient_id: p4.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l5 = list.new(patient_id: p5.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
l6 = list.new(patient_id: p6.id, user_id: d1.id, note: "Grippe", prescribed_at:"", ready_at: "", delivered: "")
