puts "Deleting seeds..."

Teacher.destroy_all
Teacher.reset_pk_sequence
Student.destroy_all
Student.reset_pk_sequence
Assignment.destroy_all
Assignment.reset_pk_sequence

puts "🌱 Seeding..."

snape = Teacher.create(name: "Severus Snape", subject: "Potions")
gilderoy = Teacher.create(name: "Gilderoy Lockhart", subject: "Defence Against the Dark Arts")
quirrell = Teacher.create(name: "Quirinus Quirrell", subject: "Muggle Studies")
filius = Teacher.create(name: "Filius Flitwick", subject: "Charms")
sybill = Teacher.create(name: "Sybill Trelawney", subject: "Divination")
pomona = Teacher.create(name: "Pomona Sprout", subject: "Herbology")

harry = Student.create(name: "Harry Potter", grade: "6")
hermione = Student.create(name: "Hermione Granger", grade: "6")
ron = Student.create(name: "Ronald Weasley", grade: "6")
cedric = Student.create(name: "Cedric Diggory", grade: "7")
seamus = Student.create(name: "Seamus Finnegan", grade: "7")
pansy = Student.create(name: "Pansy Parkinson", grade: "8")
gregory = Student.create(name: "Gregory Goyle", grade: "8")

research1 = Assignment.create(name: "Research", description: "Research dittany in 'One Thousand Magical Herbs and Fungi'", teacher: snape , student: harry)
research2 = Assignment.create(name: "Research", description: "Research dittany in 'One Thousand Magical Herbs and Fungi'", teacher: snape , student: hermione)
research3 = Assignment.create(name: "Research", description: "Research dittany in 'One Thousand Magical Herbs and Fungi'", teacher: snape , student: ron)

essay1 = Assignment.create(name: "Essay", description: "To write an essay about the Medieval Assembly of European Wizards",  teacher: gilderoy, student: cedric)
essay2 = Assignment.create(name: "Essay", description: "To write an essay about the Medieval Assembly of European Wizards",  teacher: gilderoy, student: seamus)

read1 = Assignment.create(name: "Read", description: "Read 'Home Life and Social Habits of British Muggles'", teacher: quirrell, student: pansy)
read2 = Assignment.create(name: "Read", description: "Read 'Home Life and Social Habits of British Muggles'", teacher: quirrell, student: gregory)

charms1 = Assignment.create(name: "Summoning Charms", description: "Read three books about summoning charms", teacher: filius, student: hermione)
charms2 = Assignment.create(name: "Summoning Charms", description: "Read three books about summoning charms", teacher: filius, student: cedric)
charms3 = Assignment.create(name: "Summoning Charms", description: "Read three books about summoning charms", teacher: filius, student: seamus)

planets1 = Assignment.create(name: "Planetary Chart", description: "Produce a personal chart detailing how planetary movements affect the individual student's fate.", teacher: sybill, student: hermione)
planets2 = Assignment.create(name: "Planetary Chart", description: "Produce a personal chart detailing how planetary movements affect the individual student's fate.", teacher: sybill, student: harry)
planets3 = Assignment.create(name: "Planetary Chart", description: "Produce a personal chart detailing how planetary movements affect the individual student's fate.", teacher: sybill, student: ron)

shrubs1 = Assignment.create(name: "Self-Fertilising Shrubs", description: "Write an essay on them.", teacher: pomona, student: hermione)
shrubs2 = Assignment.create(name: "Self-Fertilising Shrubs", description: "Write an essay on them.", teacher: pomona, student: pansy)
shrubs3 = Assignment.create(name: "Self-Fertilising Shrubs", description: "Write an essay on them.", teacher: pomona, student: gregory)

puts "✅ Done seeding!"
