puts "Deleting seeds..."

Student.destroy_all
Student.reset_pk_sequence
Assignment.destroy_all
Assignment.reset_pk_sequence

puts "🌱 Seeding..."

harry = Student.create(name: "Harry Potter")
hermione = Student.create(name: "Hermione Granger")
ron = Student.create(name: "Ronald Weasley")
cedric = Student.create(name: "Cedric Diggory")
seamus = Student.create(name: "Seamus Finnegan")
pansy = Student.create(name: "Pansy Parkinson")
gregory = Student.create(name: "Gregory Goyle")

research1 = Assignment.create(name: "Research", grade: 0, student: harry)
research2 = Assignment.create(name: "Research", grade: 5, student: hermione)
research3 = Assignment.create(name: "Research", grade: 0, student: ron)

essay1 = Assignment.create(name: "Essay", student: cedric)
essay2 = Assignment.create(name: "Essay", student: seamus)

read1 = Assignment.create(name: "Read", student: pansy)
read2 = Assignment.create(name: "Read", student: gregory)

charms1 = Assignment.create(name: "Summoning Charms", grade: 100, student: hermione)
charms2 = Assignment.create(name: "Summoning Charms", student: cedric)
charms3 = Assignment.create(name: "Summoning Charms", student: seamus)

planets1 = Assignment.create(name: "Planetary Chart", grade: 30, student: hermione)
planets2 = Assignment.create(name: "Planetary Chart", grade: 75, student: harry)
planets3 = Assignment.create(name: "Planetary Chart", grade: 80, student: ron)

shrubs1 = Assignment.create(name: "Self-Fertilising Shrubs", grade: 100, student: hermione)
shrubs2 = Assignment.create(name: "Self-Fertilising Shrubs", student: pansy)
shrubs3 = Assignment.create(name: "Self-Fertilising Shrubs", student: gregory)

moonstone1 = Assignment.create(name: "Moonstone", student: harry)
moonstone2 = Assignment.create(name: "Moonstone", grade: 90, student: hermione)
moonstone3 = Assignment.create(name: "Moonstone", student: ron)
moonstone4 = Assignment.create(name: "Moonstone", student: seamus)
moonstone5 = Assignment.create(name: "Moonstone", student: cedric)

puts "✅ Done seeding!"
